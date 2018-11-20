{* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
  Author: SPLUS1
  Date: 11-19-2018
  Github: https://github.com/splus1/ICSTracerouteExample

  This was modeled by the ICS Traceroute demo by
  David Jorge Aguirre Grazio (djagra@mcrenox.com.ar) 5/18/2002.
  Which was found on the Overbyte.be website, under the 'User Made' section.
  Updated for Delphi 10.2

  Acknowledgements:
  Icons are from famfamfam.com

* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *}
unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ComCtrls,
  OverbyteIcsPing, OverbyteIcsWndControl, OverbyteIcsWSocket, Vcl.Buttons, System.Contnrs, Winapi.Winsock2;

type
  TPingThread = class(TThread)
  private
    FPing : TPing;
    ThreadEnd : Boolean;
    procedure FLookupDone(Sender: TObject; Error: Word);
    procedure FPingEchoReply(Sender, Icmp: TObject; Error: Integer);
  protected
    procedure Execute; override;
  public
    TraAdr: string;
    TraTim: integer;
    TraSiz: integer;
    TraHop: integer;
    ResHop: integer;
    ResAdr: string;
    ResTim: integer;
    ResSte: boolean;
    ResLok: string;
    GenPing: boolean;
  end;


TWSocketThread = class(TThread)
  private
    FWSocket: TWSocket;
    ThreadEnd: Boolean;
    procedure FLookupDone(Sender: TObject; Error: Word);
  protected
    procedure Execute; override;
  public
    TraHop: integer;
    TraAdr: string;
    ResHop: integer;
    ResSte: boolean;
    ResLok: string;
  end;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    LookupLabel: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    HostEdit: TEdit;
    HopsEdit: TEdit;
    TriesEdit: TEdit;
    TimeoutEdit: TEdit;
    PacketEdit: TEdit;
    StartBt: TButton;
    CancelBt: TButton;
    SaveDialog1: TSaveDialog;
    TraceList: TListView;
    AboutBt: TBitBtn;
    SaveBt: TBitBtn;
    FWSocket: TWSocket;
    FPing: TPing;
    Label2: TLabel;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure AboutBtClick(Sender: TObject);
    procedure SaveBtClick(Sender: TObject);
    procedure CancelBtClick(Sender: TObject);
    procedure StartBtClick(Sender: TObject);
    procedure HostEditKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    PingThreads: TObjectList;
    WSocketThreads: TObjectList;
    TraceItem: TListItem;
    TraceHop: integer;
    TraceGen: integer;
    TraceTry: integer;
    LookAdr: string;
    RevTry: integer;
    RevGen: integer;
    procedure StartTrace;
    procedure StartReverseLookup;
    procedure PingThreadTerminate(Sender: TObject);
    procedure LookupThreadTerminate(Sender: TObject);
    procedure WSocketThreadTerminate(Sender: TObject);
    procedure DeleteAll;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses AboutUnit;
{$R *.dfm}


procedure TForm1.AboutBtClick(Sender: TObject);
begin
  AboutBt.Enabled:=False;
  AboutForm:=TAboutForm.Create(Application);
  AboutForm.Show;
  Application.ProcessMessages;
end;

// TPingThread
procedure TPingThread.Execute;
begin
   inherited;
   FPing := TPing.Create(nil);
   FPing.OnDnsLookupDone := FLookupDone;
   FPing.Timeout := TraTim;
   if GenPing = True then
      begin
      FPing.TTL := TraHop;
      FPing.Size := TraSiz;
      FPing.Address := TraAdr;
      FPing.OnEchoReply := FPingEchoReply;
      FPing.Ping;
      end
   else
      FPing.DnsLookup(TraAdr);
   while not Terminated do
      begin
      if ThreadEnd then break;
      Application.ProcessMessages;
      end;
   FPing.Destroy;
end;

procedure TPingThread.FLookupDone(Sender: TObject; Error: Word);
begin
    ResHop := TraHop;
    if Error <> 0 then
       begin
       ResLok := '';
       ResSte := False;
       end
    else
       begin
       with Sender as TPing do
          ResLok := DnsResult;
       ResSte := True;
       end;
    ThreadEnd := True;
end;

procedure TPingThread.FPingEchoReply(Sender, Icmp: TObject; Error: Integer);
begin
   with Sender as TPing do
      begin
      ResHop := TTL;
      if Error = 0 then
         begin
         ResSte := False;
         end
      else
         begin
         ResAdr := StrPas(inet_ntoa(TInAddr(Reply.Address)));
         ResTim := Reply.RTT;
         ResSte := True;
         end;
      end;
   ThreadEnd := True;
end;

// TForm
procedure TForm1.PingThreadTerminate(Sender: TObject);
var
   num: integer;
begin
    if not Application.Terminated then
       begin
       with Sender as TPingThread do
          begin
          for num := 0 to TraceList.Items.Count-1 do
             begin
             if TraceList.Items[num].Caption = IntToStr(ResHop) then
                begin
                if ResSte = False then
                   begin
                   if TraceTry = StrToInt(TriesEdit.Text) then
                      begin
                      TraceList.Items[num].SubItems[0] := 'Unknown';
                      TraceList.Items[num].SubItems[1] := '';
                      TraceList.Items[num].SubItems[2] := '';
                      TraceList.Items[num].SubItems[3] := 'time out';
                      end;
                   end
                else
                   begin
                   TraceList.Items[num].SubItems[0] := ResAdr;
                   TraceList.Items[num].SubItems[1] := IntToStr(ResTim);
                   if ResAdr = LookAdr then
                      TraceList.Items[num].SubItems[3] := 'complete'
                   else
                      TraceList.Items[num].SubItems[3] := 'next';
                   end;
                end;
             end;
          end;

       for num := 0 to PingThreads.count-1 do
          if Sender = PingThreads[num] then
             begin
             PingThreads.Delete(num);
             break;
             end;

       inc(TraceHop);
       if TraceHop = TraceGen then
          StartTrace;
       end;
end;

procedure TForm1.LookupThreadTerminate(Sender: TObject);
var
   num: integer;
begin
    if not Application.Terminated then
       begin
       with Sender as TPingThread do
          begin
          if ResSte = True then
             begin
             LookAdr := ResLok;
             LookupLabel.Caption := LookAdr;
             StartTrace;
             end
          else
             begin
             LookupLabel.Caption := 'ERROR unknown address.';
             TraceList.Clear;
             DeleteAll;
             Exit;
             end;
          end;
       for num := 0 to PingThreads.count-1 do
          if Sender = PingThreads[num] then
             begin
             PingThreads.Delete(num);
             break;
             end;
       end;
end;

procedure TForm1.StartTrace;
var
   hop,num: integer;
   t: TPingThread;
begin
   TraceHop := 0;
   TraceGen := 0;
   inc(TraceTry);
   if TraceTry <= StrToInt(TriesEdit.Text) then
      begin
      for hop := 1 to StrToInt(HopsEdit.Text) do
         begin
         if TraceList.Items[hop-1].SubItems[3][1]='.' then
            begin
            TraceList.Items[hop-1].SubItems[3] := '..'+IntToStr(TraceTry);
            inc(TraceGen);

            t := TPingThread.create(true);
            with t do
               begin
               Priority := tpLowest;
               FreeOnTerminate := True;
               OnTerminate := PingThreadTerminate;
               TraAdr := LookAdr;
               TraTim := StrToInt(TimeoutEdit.Text);
               TraSiz := StrToInt(PacketEdit.Text);
               TraHop := hop;
               GenPing := True;
               ThreadEnd := False;
               PingThreads.add(t);
               Resume;
               end;

            end;
         end;
      end;
   if TraceGen = 0 then
      begin
      num := 0;
      for hop := 0 to TraceList.Items.Count-1 do
         begin
         if TraceList.Items[hop].SubItems[0] = LookAdr then
            begin
            num := 1;
            break;
            end;
         end;
      inc(hop);
      if (num = 1) and (hop<=(TraceList.Items.Count-1)) then
         begin
         for num := TraceList.Items.Count-1 downto hop do
            TraceList.Items[num].Delete;
         end;
      StartReverseLookup;
      end;
end;

procedure TForm1.StartReverseLookup;
var
   num: integer;
   t: TWSocketThread;
begin
    RevTry := 0;
    RevGen := 0;
    for num := 0 to TraceList.Items.Count-1 do
        begin
        if TraceList.Items[num].SubItems[0] <> 'Unknown' then
           begin
           inc(RevGen);
           TraceList.Items[num].SubItems[2] := 'looking up . . .';

           t := TWSocketThread.create(true);
           with t do
              begin
              Priority := tpLowest;
              FreeOnTerminate := True;
              OnTerminate := WSocketThreadTerminate;
              TraHop := StrToInt(TraceList.Items[num].Caption);
              TraAdr := TraceList.Items[num].SubItems[0];
              ThreadEnd := False;
              WSocketThreads.add(t);
              Resume;
              end;
           end
        else
           TraceList.Items[num].SubItems[2] := 'Unknown';
        end;
    if RevGen = 0 then
       begin
       DeleteAll;
       Exit;
       end;
end;

// TWSocketThread
procedure TWSocketThread.Execute;
begin
    inherited;
    FWSocket := TWSocket.Create(nil);
    FWSocket.OnDnsLookupDone := FLookupDone;
    FWSocket.ReverseDnsLookup(TraAdr);
    while not Terminated do
       begin
       if ThreadEnd then break;
       Application.ProcessMessages;
       end;
    FWSocket.Destroy;
end;

procedure TWSocketThread.FLookupDone(Sender: TObject; Error: Word);
begin
    ResHop := TraHop;
    if Error <> 0 then
       begin
       ResLok := '';
       ResSte := False;
       end
    else
       begin
       with Sender as TWSocket do
          ResLok := DnsResult;
       ResSte := True;
       end;
    ThreadEnd := True;
end;

// TForm
procedure TForm1.WSocketThreadTerminate(Sender: TObject);
var
   num: integer;
begin
    if not Application.Terminated then
       begin
       with Sender as TWSocketThread do
          begin
          for num := 0 to TraceList.Items.Count-1 do
             begin
             if TraceList.Items[num].Caption = IntToStr(ResHop) then
                begin
                if ResSte = True then
                   TraceList.Items.Item[num].SubItems[2] := ResLok
                else
                   TraceList.Items.Item[num].SubItems[2] := TraceList.Items.Item[num].SubItems[0];
                end;
             end;
          end;
       for num := 0 to WSocketThreads.count-1 do
          if Sender = WSocketThreads[num] then
             begin
             WSocketThreads.Delete(num);
             break;
             end;
       inc(RevTry);
       if RevTry = RevGen then
          DeleteAll;
       end;
end;

procedure TForm1.DeleteAll;
var
   i: integer;
begin
    for i := PingThreads.Count-1 downto 0 do
       begin
       with TPingThread(PingThreads[i]) do
          begin
          Priority := tpNormal;
          FreeOnTerminate := False;
          end;
       end;
    for i := PingThreads.Count-1 downto 0 do
       begin
       with TPingThread(PingThreads[i]) do
          begin
          OnTerminate := nil;
          Terminate;
          end;
       PingThreads.Delete(i);
       end;

    for i := WSocketThreads.Count-1 downto 0 do
       begin
       with TWSocketThread(WSocketThreads[i]) do
          begin
          Priority := tpNormal;
          FreeOnTerminate := False;
          end;
       end;
    for i := WSocketThreads.Count-1 downto 0 do
       begin
       with TWSocketThread(WSocketThreads[i]) do
          begin
          OnTerminate := nil;
          Terminate;
          end;
       WSocketThreads.Delete(i);
       end;

    StartBt.Enabled := True;
    CancelBt.Enabled := False;
    HopsEdit.Enabled := True;
    TriesEdit.Enabled := True;
    TimeoutEdit.Enabled := True;
    PacketEdit.Enabled := True;
    HostEdit.Enabled := True;
end;

procedure TForm1.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  DeleteAll;
end;

procedure TForm1.CancelBtClick(Sender: TObject);
begin
  DeleteAll;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  PingThreads := TObjectList.create(false);
  WSocketThreads := TObjectList.create(false);
end;

procedure TForm1.FormDestroy(Sender: TObject);
var
   i: integer;
begin
    for i := PingThreads.Count-1 downto 0 do
       begin
       with TPingThread(PingThreads[i]) do
          begin
          Priority := tpNormal;
          FreeOnTerminate := False;
          end;
       end;
    try
       for i := PingThreads.Count-1 downto 0 do
          begin
          with TPingThread(PingThreads[i]) do
             begin
             OnTerminate := nil;
             Terminate;
             end;
          PingThreads.Delete(i);
          end;
    finally
       PingThreads.Free;
       end;

    for i := WSocketThreads.Count-1 downto 0 do
       begin
       with TWSocketThread(WSocketThreads[i]) do
          begin
          Priority := tpNormal;
          FreeOnTerminate := False;
          end;
       end;
    try
       for i := WSocketThreads.Count-1 downto 0 do
          begin
          with TWSocketThread(WSocketThreads[i]) do
             begin
             OnTerminate := nil;
             Terminate;
             end;
          WSocketThreads.Delete(i);
          end;
    finally
       WSocketThreads.Free;
       end;
end;

procedure TForm1.HostEditKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
       StartBtClick(Self);
end;

procedure TForm1.SaveBtClick(Sender: TObject);
var
   Fp: TextFile;
   num: integer;
   sav: string;
begin
    SaveDialog1.FileName := HostEdit.Text+'.txt';
    if SaveDialog1.Execute then
       begin
       sav := SaveDialog1.FileName;
       if ExtractFileExt(sav) = '' then
          sav := sav+'.'+SaveDialog1.DefaultExt;
       AssignFile(Fp,sav);
       Rewrite(Fp);
       Writeln(Fp,'Traceroute to '+HostEdit.text+' at '+LookupLabel.caption+#13#10);
       Writeln(Fp,' Hop       IP address   Time  Host name'+#13#10);
       for num := 0 to TraceList.Items.Count-1 do
          begin
          Writeln(Fp,Format('%4s  %15s  %5s  %s',[TraceList.Items.Item[num].Caption,
             TraceList.Items.Item[num].SubItems[0],
             TraceList.Items.Item[num].SubItems[1],
             TraceList.Items.Item[num].SubItems[2]]));
          end;
       CloseFile(Fp);
       end;
end;

procedure TForm1.StartBtClick(Sender: TObject);
var
   hop: integer;
   t: TPingThread;
begin
    if HostEdit.Text = '' then Exit;
    TraceList.Clear;
    StartBt.Enabled := False;
    CancelBt.Enabled := True;
    HopsEdit.Enabled := False;
    TriesEdit.Enabled := False;
    TimeoutEdit.Enabled := False;
    PacketEdit.Enabled := False;
    HostEdit.Enabled := False;
    for hop := 1 to StrToInt(HopsEdit.Text) do
       begin
       with TraceList do
          begin
          TraceItem := Items.Add;
          TraceItem.Caption := IntToStr(hop); // Hop
          TraceItem.SubItems.Add('');       // IP addr    [0]
          TraceItem.SubItems.Add('');       // Time       [1]
          TraceItem.SubItems.Add('');       // Host name  [2]
          TraceItem.SubItems.Add('..1');    // Result     [3]
          end;
       end;
    TraceTry := 0;
    // Lookup Address
    LookupLabel.Caption := 'looking up . . .';

    t := TPingThread.create(true);
    with t do
       begin
       Priority := tpLowest;
       FreeOnTerminate := True;
       OnTerminate := LookupThreadTerminate;
       TraAdr := HostEdit.Text;
       GenPing := False;
       ThreadEnd := False;
       PingThreads.add(t);
       Resume;
       end;

    ActiveControl := TraceList;

end;

end.
