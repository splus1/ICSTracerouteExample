unit AboutUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, Winapi.Shellapi, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons;

type
  TAboutForm = class(TForm)
    Panel1: TPanel;
    Bevel1: TBevel;
    ExitBt: TSpeedButton;
    Image1: TImage;
    Label1: TLabel;
    VersionLabel: TLabel;
    Label3: TLabel;
    Link: TLabel;
    procedure ExitBtClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure LinkClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AboutForm: TAboutForm;

implementation

uses Unit1;
{$R *.dfm}

procedure TAboutForm.ExitBtClick(Sender: TObject);
begin
  Form1.AboutBt.Enabled := True;
  ExitBt.Tag := 1;
  Close;
end;

procedure TAboutForm.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if ExitBt.Tag <> 1 then
    CanClose := False;
end;

procedure TAboutForm.LinkClick(Sender: TObject);
begin
  Link.Font.Color := clPurple;
  Application.ProcessMessages;
  ShellExecute(Application.Handle, 'open', 'https://github.com/splus1/ICSTracerouteExample',nil, nil, SW_SHOWDEFAULT);
end;

end.
