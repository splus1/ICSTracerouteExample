object AboutForm: TAboutForm
  Left = 522
  Top = 128
  BorderStyle = bsNone
  Caption = 'About'
  ClientHeight = 200
  ClientWidth = 389
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poDesigned
  PrintScale = poNone
  Scaled = False
  OnCloseQuery = FormCloseQuery
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 389
    Height = 200
    Align = alClient
    BevelInner = bvRaised
    TabOrder = 0
    ExplicitLeft = 80
    ExplicitTop = 80
    ExplicitWidth = 185
    ExplicitHeight = 41
    DesignSize = (
      389
      200)
    object Bevel1: TBevel
      Left = 75
      Top = 79
      Width = 250
      Height = 3
      Shape = bsTopLine
      Style = bsRaised
    end
    object ExitBt: TSpeedButton
      Left = 363
      Top = 174
      Width = 23
      Height = 23
      Hint = 'Close'
      Anchors = [akTop, akRight]
      Flat = True
      Glyph.Data = {
        76050000424D7605000000000000360000002800000015000000150000000100
        18000000000040050000120B0000120B00000000000000000000FF00FFFF00FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDF6F4FF00FFFF00FF00FF00FFD0D6EE
        2844B50D2BA61130AC1231AB1432A91230A91332AC1332AD1031AE0D30B10A2E
        B2082DB4062AB10328B10127B40024AE1F3CACCFD4EAFF00FF00FDF6F42849CD
        1338CC1B3ECC2144CF2547CF2647CF2446CF2347D02146D11E45D21B45D51642
        D51340D60E3DD50939D60435D50130D1002AC21F3CABFFFFFF00FFFFFF0E37D8
        1C43DB284CDD2F52DE3355DF3457E03155E03156E02E56E12A55E22553E41F50
        E4194CE51348E50D43E5073EE40238E0002FD10023AAFFFFFF00FFFFFF143CDD
        254BE03154E1395BE33D5EE43D5FE43B5EE4395EE5375EE5325DE62C5BE72557
        E81F54E91950E9114AE90B44E8053DE40233D60126AFFFFFFF00FFFFFF1840DE
        2E51E13A5CE34262E4B5C1F5FFFFFF4365E64165E63D64E63862E73260E82A5C
        E92459EAFFFFFFA1B8F70E48E90940E50536D70227B0FFFFFF00FFFFFF1E45DF
        3658E24262E44967E5FFFFFFFFFFFFFFFFFF4568E64167E73B64E73562E82D5E
        EAFFFFFFFFFFFFFFFFFF114AE90D44E60B3BD7062BB1FFFFFF00FFFFFF254BE0
        3D5EE34867E54E6CE6506DE6FFFFFFFFFFFFFFFFFF4268E73C65E73662E8FFFF
        FFFFFFFFFFFFFF1950E9164CE81347E4103FD80A2DB1FFFFFF00FFFFFF2B4FE1
        4463E44E6BE6526FE7536FE7516EE6FFFFFFFFFFFFFFFFFF3D65E7FFFFFFFFFF
        FFF1F5FE2154E81B50E8184DE7184AE41642D70F31B2FFFFFF00FFFFFF3254E2
        4B69E55470E75671E75570E8526FE74D6CE6FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF2655E72152E71C4EE61C4DE61C4CE31C46D61233B0FFFFFF00FFFFFF3759E3
        516DE75772E85973E85771E7526EE64D6AE64767E5FFFFFFFFFFFFFFFFFF2C57
        E52653E52250E51E4DE51F4DE5214EE22149D61635AFFFFFFF00FFFFFF3C5DE3
        5974E85D77E85D76E85972E7536FE64E6BE5FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF2751E4234FE4204CE3224DE3254FE1254AD51937AFFFFFFF00FFFFFF4665E5
        607AE8627CE8607AE85B74E8546EE7FFFFFFFFFFFFFFFFFF3A5CE3FFFFFFFFFF
        FFFFFFFF244DE2224BE2254DE22950E0294CD41B39AEFFFFFF00FFFFFF4665E5
        6881E96A83EA657EE95E77E8FFFFFFFFFFFFFFFFFF4361E43D5DE43658E3FFFF
        FFFFFFFFFFFFFF274EE22A50E22C51E02A4DD31C39ADFFFFFF00FFFFFF4D6AE6
        6E87EB708AEB6A83EAFFFFFFFFFFFFFFFFFF4D68E54764E4405FE43A5BE33456
        E2FFFFFFFFFFFFFFFFFF2D52E22E52DF2C4DD31D3AADFFFFFF00FFFFFF526FE7
        7991EC7C93EC718AEBC2CCF7FFFFFF5972E7536DE74D68E54664E4415FE43A5B
        E33859E3FFFFFFADBBF33155E23053DF2C4ED31D3AADFFFFFF00FFFFFF5874E8
        899DEE8DA1EF7F95ED718AEB6A83EA647DE95E78E85973E7546FE7516DE64B68
        E54A68E54463E43F60E43A5CE33456E02A4CD21836ACFFFFFF00FFFFFF657FE9
        97A9F09AACF1899DEE7A91EC728BEB6D85EA6881E9657EE8627CE9617BE95D77
        E85974E8526FE64C6AE54363E43759E1284AD21533AAFFFFFF00FFFFFF768DEC
        90A3EF94A6F0859AEE758DEB6E87EA6881EA667FE9627CE95F79E85E79E85975
        E85672E7506EE64968E53F60E43255E02346D0304BB6FDF6F400FF00FFDCE1FA
        738BEB607BE95571E74D6AE64866E54261E44463E43E5FE43E5FE43B5CE33B5C
        E33356E23356E23053E2284DE01F45DC3453D0D2D8EFFF00FF00FF00FFFF00FF
        FDF6F4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFF00FF00}
      Layout = blGlyphTop
      Margin = 0
      ParentShowHint = False
      ShowHint = True
      OnClick = ExitBtClick
      ExplicitLeft = 324
    end
    object Image1: TImage
      Left = 23
      Top = 21
      Width = 32
      Height = 32
      Picture.Data = {
        055449636F6E0000010001002020000001001800A80C00001600000028000000
        20000000400000000100180000000000800C0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000000000000000A1
        7B969C868AA68790A6858E98727B83636C6F6267646364000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000000000C4A3B6D5
        DBD1E1DEDFE1DADADECCCCD9C6C6C7ABABAF8686735E5B646364000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000B6A79A90847A8A7F75A5
        978BE7E9E9DDDBDBD8C7C7D7C2C2CCB2B2C79F9FCB9698948B71000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000B1A69D84827F796F7194757261
        5952968A7FE1E4E3D5BDBDD1A1A1CB9292C49292C4A493646364000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000008B8A894B728C2E739B9F8E9999
        77765D554F95897ECC9B9DCD7978CE7474B57F79B57F7900B11100B11100B111
        00B11100B11100B11100B11100B1110000000000000000000000000000000000
        000000000000000000000000000000000000007296AC3FA4F9177DC42E739B9F
        8E999977765D554F95897EC35F68C05255805F56000000000000000000000000
        00000000000000000000000000B1110000000000000000000000000000000000
        000000000000000000000000000000000000008AC2EC5ABFFF3FA4F9177DC42E
        739B9F8E999977765D554F95897ECE7D7089595C646364646364000000000000
        00000000000000000000000000B1110000000000000000000000000000000000
        000000000000000000000000000000000000000000008BC3EC5ABFFF3FA4F917
        7DC42E739B9F8E999977765D554F968A7FF1AC5BCC855CA272518C7B84000000
        00000000000000000000000000B1110000000000000000000000000000000000
        000000000000000000000000000000000000000000000000008BC3EC5ABFFF3F
        A4F9177DC42E739B9F8E99997776645C55AB9C90FFBC43D48C4C8C7B84000000
        00000000000000000000000000B1110000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000000008BC3EC5A
        BFFF3FA4F9177DC42E739B9F8E999777758B8076FAB45AC084588C7B84000000
        00000000000000000000000000B1110000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000000000D8C5898B
        C3EC5ABFFF3FA4F9177DC43272976E6B6B655D557A6D658369647E615E846864
        917571806865655B5400000000B1110000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000C2ADADE1C08BFF
        D5718BC3EC5ABFFF47A5F477899892908FA89190AF837BCFA98CF1E1C3FFFBD5
        F8F0D4EFE0CDCCA59B8264625A534C0000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000C2ADADEBCA86FF
        E280FFE89896C6EAC1CACCA2A1A0A18181E7BE90F2CEA1E3D6AEFFFEDBFFFFE1
        FFFFE3FFFFE3FFFFE8A89D8F9C75725C524C0000000000000000000000000000
        00000000000000000000000000000000000000000000000000000000C2ADADD6
        D285ECE29DF9EFB5FEFCC4BEA5A4E2B093FFE7AEEEDBB2E0D6ACFFFFDDFFFFE5
        FFFFEBFFFFEFFFFFFD000000AAD09B8662606960590000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000B6BB98E7D0C1D2A497F9DBACFBEEB9E8CFA2E0D8AEFFFFE0FFFFE9
        FFFFF2FFFFF8FFFFFF000000BAEAB0D4BDB266544F0000000000000000000000
        00000000000000000000A17B969C868AA68790A6858E98727B83636C6F626764
        6364000000000000D5B4ABEAC0A0EDDFBDEDCDA7FFEFCAFFFDD8FFFFE2FFFFEB
        FFFFF3FFFFFBE6DBDFE4DED7E7DFC6DED1B87B5A5880766D6F62676463640000
        00000000000000C4A3B6D5DBD1E1DEDFE1DADADECCCCD9C6C6C7ABABAF868673
        5E5B646364000000CFA6A1FCE9CAFFF9D5FFE6C1FFEFCAFFFBD6FFFFE0FFFFE8
        FFFFF0EFE6E1F4F5E8F7F6E6F7F5DAF6F1D197736C756B63AF8686735E5B6463
        64000000CEAABCE9F5EBF1F1F2E7E9E9DDDBDBD8C7C7D7C2C2CCB2B2C79F9FCB
        9698948B71000000CFA4A0FFF0CDFFF6D1FFE1BCFFECC7FFF6D1FFFFDCFFFFE3
        F2E8D7F9FCE7FBFBE9F9F9E2F6F5D7F4EECCB38A7F786E65C79F9FCB9698948B
        71000000CEC7C2F4F9F7FDFDFFF1F4F5E1E4E3D5BDBDD1A1A1CB9292C49292C4
        A493646364000000D1A5A1FFF1D0FFF7D2FFE5C2FFF3D2FFF7D2FFFDD8FFFFDD
        F2F0D1FCFDE0FEFEE3FBFCDEF7F8D4F4E6C4A87E758A7F75C49292C4A4936463
        64000000000000E1D0D2D6AEADDDC5CAD7CBD2CC9B9DCD7978CE7474B57F79B5
        7F7900B11100B11100B111F1D5B0BAE69ABAE3A0BAD281BAD383BAE08FBAE594
        BAE898F7F1CEF4E8C4F6ECC9F4EFCEF1D4AF8D6563AA9B8FB57F79B57F790000
        00000000000000000000D5A360F5AF55E0A887CE8788C35F68C05255805F5600
        0000000000000000000000DBB5A2BAB49ABAB8AEBAB7AEBAAA8CBAA27DBAB28E
        BAAC87BAAD88F4D9A2FCDFA2F7DFB6D7A8918C726CCEBDAE805F560000000000
        00000000000000000000E2AA43FFAC14FFB430F9B652E8A56CCE7D7089595C64
        6364646364000000000000CEA39EF3E0C0FFFFFFFFFFFFFFF6E4FFECCAFFEDCB
        FFE6C1FFE8C2F7D897FFE59AFBCB85A97C75B8A599CE7D7089595C6463646463
        64000000000000000000EAB542FFBA39FFB83FFFBC3FFFBF3FFEBE4AF1AC5BCC
        855CA272518C7B84000000000000CCA196F6EFE2FFFFFEFFFBECFFFBE0FFEDC8
        FFEEC9FFF7D3F9E19FFBCA86B8877EB5A095FFBF3FFEBE4AF1AC5BCC855CA272
        518C7B84000000C2ADADF6BC4CFFC452FFC65BFFC75CFFC65BFFC353FFC345FF
        BC43D48C4C8C7B84000000000000000000C39892DBBB9FFBEFD0FFF6D4FFF5D2
        FFF3D1EED6B4EABB85BC8D85C5AEA2FFC75CFFC65BFFC353FFC345FFBC43D48C
        4C8C7B84000000C8BC8BFBC65CFFCE69FFD172FFD374FFD273FFCE6CFFCC61FA
        B45AC084588C7B84000000000000000000000000DBBBB0B68B87B4897DC3978B
        D8AB9FCAA099CBAAA2FFCE69FFD172FFD374FFD273FFCE6CFFCC61FAB45AC084
        588C7B84000000D8C589FED16BFFD87FFFDD89FFE08CFFDE89FFD981FFD673EA
        A96CB17D638C7B84000000000000000000000000000000000000000000000000
        000000D8C589FED16BFFD87FFFDD89FFE08CFFDE89FFD981FFD673EAA96CB17D
        638C7B84C2ADADE1C08BFFD571FFDC87FFE291FFE495FFE292FFDD8AFFDA79E2
        A470A97C65000000000000000000000000000000000000000000000000000000
        C2ADADE1C08BFFD571FFDC87FFE291FFE495FFE292FFDD8AFFDA79E2A470A97C
        65000000C2ADADEBCA86FFE280FFE898FFEDA5FFEFABFFECA7FFE69BFFE489D0
        9474967E66000000000000000000000000000000000000000000000000000000
        C2ADADEBCA86FFE280FFE898FFEDA5FFEFABFFECA7FFE69BFFE489D09474967E
        66000000000000C2ADADD6D285ECE29DF9EFB5FEFCC4FFFEC0FFF5ADFFEB97BF
        89758D7E6B000000000000000000000000000000000000000000000000000000
        000000C2ADADD6D285ECE29DF9EFB5FEFCC4FFFEC0FFF5ADFFEB97BF89758D7E
        6B000000000000000000000000000000B6BB98C4C19DD3C5A3E8D2A3F0D495AA
        856A8D7E6B000000000000000000000000000000000000000000000000000000
        000000000000000000000000B6BB98C4C19DD3C5A3E8D2A3F0D495AA856A8D7E
        6B000000000000000000000000000000000000000000000000BB9B9ABB8E8B00
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000BB9B9ABB8E8B0000000000
        00000000FFFFFFFFFF807FFFFF003FFFFC003FFFF8003FFFF800007FF800007F
        F8003E7FFC001E7FFE001E7FFF001E7FFF00007FFE00007FFE00003FFF00001F
        FFE0001FC030000380100001001000010010000180000003C0000007C0180001
        C00C0000800E0000800F0000800FF800001FF001001FF001801FF801F01FFF01
        FE7FFFE7}
    end
    object Label1: TLabel
      Left = 75
      Top = 26
      Width = 270
      Height = 24
      Caption = 'ICS Traceroute Example'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clPurple
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
      ShowAccelChar = False
    end
    object VersionLabel: TLabel
      Left = 75
      Top = 60
      Width = 54
      Height = 13
      Caption = 'version 0.1'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 75
      Top = 104
      Width = 250
      Height = 39
      Caption = 
        'Based on the Traceroute example from David Jorge Aguirre Grazio ' +
        '2002.'
      WordWrap = True
    end
    object Link: TLabel
      Left = 75
      Top = 150
      Width = 238
      Height = 13
      Cursor = crHandPoint
      Hint = 'Link to Github project page'
      Caption = 'https://github.com/splus1/ICSTracerouteExample'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsUnderline]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      OnClick = LinkClick
    end
  end
end
