object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'ICS Component Traceroute Example'
  ClientHeight = 407
  ClientWidth = 647
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 647
    Height = 169
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 24
      Top = 32
      Width = 22
      Height = 13
      Caption = 'Host'
    end
    object LookupLabel: TLabel
      Left = 340
      Top = 32
      Width = 3
      Height = 13
    end
    object Label3: TLabel
      Left = 24
      Top = 96
      Width = 24
      Height = 13
      Caption = 'Hops'
    end
    object Label4: TLabel
      Left = 160
      Top = 96
      Width = 64
      Height = 13
      Caption = 'Tries Per Hop'
    end
    object Label5: TLabel
      Left = 340
      Top = 96
      Width = 43
      Height = 13
      Caption = 'Time Out'
    end
    object Label6: TLabel
      Left = 472
      Top = 96
      Width = 54
      Height = 13
      Caption = 'Packet Size'
    end
    object Label2: TLabel
      Left = 252
      Top = 32
      Width = 62
      Height = 13
      Caption = 'Resolved as:'
    end
    object HostEdit: TEdit
      Left = 61
      Top = 29
      Width = 169
      Height = 21
      TabOrder = 0
      Text = 'community.embarcadero.com'
      OnKeyDown = HostEditKeyDown
    end
    object HopsEdit: TEdit
      Left = 61
      Top = 93
      Width = 76
      Height = 21
      TabOrder = 1
      Text = '30'
    end
    object TriesEdit: TEdit
      Left = 230
      Top = 93
      Width = 84
      Height = 21
      TabOrder = 2
      Text = '4'
    end
    object TimeoutEdit: TEdit
      Left = 389
      Top = 93
      Width = 68
      Height = 21
      TabOrder = 3
      Text = '3000'
    end
    object PacketEdit: TEdit
      Left = 532
      Top = 93
      Width = 45
      Height = 21
      TabOrder = 4
      Text = '56'
    end
    object StartBt: TButton
      Left = 216
      Top = 136
      Width = 75
      Height = 25
      Caption = 'Start'
      TabOrder = 5
      OnClick = StartBtClick
    end
    object CancelBt: TButton
      Left = 340
      Top = 136
      Width = 75
      Height = 25
      Caption = 'Cancel'
      TabOrder = 6
      OnClick = CancelBtClick
    end
    object AboutBt: TBitBtn
      Left = 600
      Top = 8
      Width = 35
      Height = 25
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1E8E3CBAB9BA16A5190
        583E8E573E9A6952C5A99CEEE7E3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFE0C8BDA36648B28057D5B793DBC3A6DAC3A6D2B490AB7A52926048D8C6
        BDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE2CCBDA35C3CCBA77DD8BB9FC39C77B6
        8A62B48660BE9672D1B397C5A37789573ED9C6BDFFFFFFFFFFFFFFFFFFF4ECE4
        B4784ACFAA81DABCA2BE9166BA8C62B7895FB3845EB1835DB0835CCDAA8DC6A5
        79956249EFE8E4FFFFFFFFFFFFDCBC9BBF915EE0C2A8C5966CC29169E1CBB8FE
        FDFCFFFFFEEADCD0B4855EB3855ED4B599AE7B56C8A99BFFFFFFFFFFFFC59052
        DBBC9CD5AD89C7986CC39569C19367EDDFD3FAF7F4BB8B63B98A63B88A62C59D
        78D2B893A06A52FFFFFFFFFFFFC1833CE3C7AFD0A276C5996BC4976AC49669EE
        E0D4FBF7F4BF9066BE8F65BE8F64BE9269DFC6AA96563BFFFFFFFFFFFFC78942
        E4C9B0D0A37ACC9D71C79A6CC5986BFFFFFFFFFFFEC39669C19468C29468C398
        6DDFC5AB99593BFFFFFFFFFFFFD29E5CE0BC9FDBB393CFA075CD9E72CB9C71DD
        BFA3DDBFA2C5996BC5996BC4986BD1AB85D8BA97AC6E52FFFFFFFFFFFFE7C9A4
        CD9C68E7CBB4D4A57AD0A077CF9E74FBF8F5FBF8F5CB9E71CB9D71CDA177DFC0
        A5B98A5BD2AE9BFFFFFFFFFFFFF9F1E7D39A5AD9B28CE6CAB3D6A97DD1A579E2
        C4A8E1C3A8D0A276D1A477DDBDA2D0AC85B4764AF4EAE4FFFFFFFFFFFFFFFFFF
        F1DDC5D1924FD9B28CE6CDB8E0BA9DD7AB85D6A982D9B391E1C2ABD4AE86B471
        3EE6D0BDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2DDC6D69C5BD0A06AE0BFA0E3
        C5AEE3C5AEDFBC9FC89762C38A49E9D5BDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFAF1E7EACCA8D8A165CF914ECD904AD19B5BE4C6A1F7EFE4FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      TabOrder = 7
      OnClick = AboutBtClick
    end
    object SaveBt: TBitBtn
      Left = 600
      Top = 136
      Width = 35
      Height = 25
      Hint = 'Save to file'
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFCA8A61C38458D38B68E18F70DC8D6CDA8B6DD78A
        6ECD8B6CAB6D44A65F2EE2C0AACC8D66C07140BA6630BC6B36BC6A36C68355EF
        CEBADDFFFF87EEC7A2F4D7A2F6D78CEEC7E0FFFFDDA285AB6A3EC57C4DF8F2EB
        F7ECDFF6EADEF6EADCF6EADCC37F51EFB69AEAF3E851BF846FC99871C99954BF
        84E4F4E9DD9C7BAA693AC27740F5EBDFFDBF68FBBE65FCBE64FCBE64C48154EA
        B697F3F3EAEDF1E6EFF1E6EFF0E6EDF1E5F3F5EDD59C79B07044C37C42F7EDE3
        FDC26EFFD79EFFD69BFFD798C98B61E6B592E2A781E1A781DEA37DDCA17BDB9F
        79D99E77D49A73BB7E57C68046F7F0E6F8B455F7B554F8B453F8B253CA8D65EA
        B899DDA57EDDA680DBA37CD9A07AD9A079D89F78D89E78BF845DC58245F8F2EB
        FEE7D6FDE7D6FDE7D6FDE6D5C8885DEFBFA1FDFCFAFEFCFBFEFDFDFEFDFCFDFB
        FAFDFCFBDDA885C17F53C8884DF9F3ECFEE8D6FDE7D6FDE7D6FDE7D5C7865BEF
        C09EFFFFFFCC936EFFFFFFFFFFFFFFFBF7FFF8F1E4AF8CC78A61C88C4FF9F4ED
        FEE8D8FEE8D7FEE7D6FDE5D3CC8D65F3CDB0FFFFFFE3C7B3FFFFFFFFFFFFFFFF
        FFFFFFFFEABFA1C98960C88C50F9F4EFFEE7D7FDE7D5FDE6D4FCE6D2D4976ED4
        9E7BD09871D6A482CD8E68CD9069D09A75D19973C88B62EEDCD0C88D51F9F4F0
        FCE6D3FDE7D3FCE4D1FBE3CDFAE0C8F8DCC2F5D6BBF3D4B5F1D2B3F8F4F0C686
        4CFFFFFFFFFFFFFFFFFFC88D51F9F5F1FCE3CFFCE4CFFCE3CDFAE1CAF9DDC4F6
        D9BCF4E9DFF7F2ECFBF7F3F5EFE9C38048FFFFFFFFFFFFFFFFFFC88D52F9F5F1
        FCE3CDFBE3CDFBE2CBF9E0C8F8DCC2F5D6BAFDFBF8FCE6CDFAE5C9E2B684D5A8
        84FFFFFFFFFFFFFFFFFFCA925AFAF6F2FAE0C7FBE2C9FBE0C8F9DFC5F8DBC1F4
        D6B8FFFBF8F6D8B4E1B07DDC9669FDFBFAFFFFFFFFFFFFFFFFFFD2A274F8F3ED
        F8F4EEF8F3EDF8F3EDF8F3EDF8F2ECF7F2ECF2E6D7E2B27DDC986BFDFBFAFFFF
        FFFFFFFFFFFFFFFFFFFFE8CEB9D7AA7CCC945BC88C4FCA9055CA9155CB9055C9
        8F55CF9D69DDB190FDFBFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      TabOrder = 8
      OnClick = SaveBtClick
    end
  end
  object TraceList: TListView
    Left = 0
    Top = 169
    Width = 647
    Height = 238
    Align = alClient
    Columns = <
      item
        Caption = 'Hop'
        MinWidth = 35
        Width = 35
      end
      item
        Caption = 'IP Address'
        MinWidth = 100
        Width = 100
      end
      item
        Caption = 'Time'
        MinWidth = 50
      end
      item
        Caption = 'Host Name'
        MinWidth = 250
        Width = 250
      end
      item
        Caption = 'Result'
        MinWidth = 65
        Width = 65
      end>
    FlatScrollBars = True
    ReadOnly = True
    RowSelect = True
    TabOrder = 1
    ViewStyle = vsReport
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = 'txt'
    Filter = 'Text (*.txt)|*.txt|All (*.*)|*.*'
    Options = [ofOverwritePrompt, ofEnableSizing]
    Left = 512
    Top = 128
  end
  object FWSocket: TWSocket
    LineEnd = #13#10
    Proto = 'tcp'
    LocalAddr = '0.0.0.0'
    LocalAddr6 = '::'
    LocalPort = '0'
    SocksLevel = '5'
    ExclusiveAddr = False
    ComponentOptions = []
    ListenBacklog = 15
    SocketErrs = wsErrTech
    Left = 560
    Top = 48
  end
  object FPing: TPing
    SocketFamily = sfIPv4
    PingMsg = 'Pinging from Delphi code written by F. Piette'
    Size = 56
    Timeout = 4000
    TTL = 64
    Flags = 0
    Left = 600
    Top = 48
  end
end
