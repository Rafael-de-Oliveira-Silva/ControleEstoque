object Rel_EstoqueSaldo: TRel_EstoqueSaldo
  Left = 708
  Top = 190
  Width = 831
  Height = 507
  Caption = 'Relat'#243'rio de Estoque por Saldo'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Scaled = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object QuickRep1: TQuickRep
    Left = 0
    Top = 0
    Width = 794
    Height = 1123
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    DataSet = DM_Banco.QueryRelatorioSaldo
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Functions.Strings = (
      'PAGENUMBER'
      'COLUMNNUMBER'
      'REPORTTITLE')
    Functions.DATA = (
      '0'
      '0'
      #39#39)
    Options = [FirstPageHeader, LastPageFooter]
    Page.Columns = 1
    Page.Orientation = poPortrait
    Page.PaperSize = A4
    Page.Values = (
      100
      2970
      100
      2100
      100
      100
      0)
    PrinterSettings.Copies = 1
    PrinterSettings.Duplex = False
    PrinterSettings.FirstPage = 0
    PrinterSettings.LastPage = 0
    PrinterSettings.OutputBin = Auto
    PrintIfEmpty = True
    ReportTitle = 'Relat'#243'rio de Estoque por Saldo'
    SnapToGrid = True
    Units = MM
    Zoom = 100
    object DetailBand1: TQRBand
      Left = 38
      Top = 185
      Width = 718
      Height = 40
      Frame.Color = clWhite
      Frame.DrawTop = True
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Frame.Style = psClear
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        105.833333333333
        1899.70833333333)
      BandType = rbDetail
      object QRDBText1: TQRDBText
        Left = 1
        Top = 2
        Width = 41
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          2.64583333333333
          5.29166666666667
          108.479166666667)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = DM_Banco.QueryRelatorioSaldo
        DataField = 'Codigo'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText2: TQRDBText
        Left = 42
        Top = 22
        Width = 59
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          111.125
          58.2083333333333
          156.104166666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = DM_Banco.QueryRelatorioSaldo
        DataField = 'Descricao'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText3: TQRDBText
        Left = 524
        Top = 2
        Width = 34
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1386.41666666667
          5.29166666666667
          89.9583333333333)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = DM_Banco.QueryRelatorioSaldo
        DataField = 'Saldo'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText6: TQRDBText
        Left = 450
        Top = 19
        Width = 25
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1190.625
          50.2708333333333
          66.1458333333333)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = DM_Banco.QueryRelatorioSaldo
        DataField = 'Tipo'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText7: TQRDBText
        Left = 291
        Top = 3
        Width = 43
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          769.9375
          7.9375
          113.770833333333)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = DM_Banco.QueryRelatorioSaldo
        DataField = 'Medida'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
    end
    object PageFooterBand1: TQRBand
      Left = 38
      Top = 225
      Width = 718
      Height = 40
      Frame.Color = clBlack
      Frame.DrawTop = True
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        105.833333333333
        1899.70833333333)
      BandType = rbPageFooter
      object QRLabel16: TQRLabel
        Left = 266
        Top = 9
        Width = 121
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          703.791666666667
          23.8125
          320.145833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Quant. de Produto:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRExpr2: TQRExpr
        Left = 390
        Top = 9
        Width = 45
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1031.875
          23.8125
          119.0625)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = True
        Transparent = False
        WordWrap = True
        Expression = 'COUNT'
        FontSize = 10
      end
    end
    object PageHeaderBand1: TQRBand
      Left = 38
      Top = 38
      Width = 718
      Height = 107
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        283.104166666667
        1899.70833333333)
      BandType = rbPageHeader
      object QRLabel1: TQRLabel
        Left = 232
        Top = 48
        Width = 315
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.1458333333333
          613.833333333333
          127
          833.4375)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Relat'#243'rio de Estoque por Saldo'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 16
      end
      object QRImage1: TQRImage
        Left = 0
        Top = 0
        Width = 105
        Height = 105
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          277.8125
          0
          0
          277.8125)
        Picture.Data = {
          0A544A504547496D616765F70F0000FFD8FFE000104A46494600010101006000
          600000FFDB004300020101020101020202020202020203050303030303060404
          0305070607070706070708090B0908080A0807070A0D0A0A0B0C0C0C0C07090E
          0F0D0C0E0B0C0C0CFFDB004301020202030303060303060C0807080C0C0C0C0C
          0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C
          0C0C0C0C0C0C0C0C0C0C0C0C0CFFC00011080084008403012200021101031101
          FFC4001F0000010501010101010100000000000000000102030405060708090A
          0BFFC400B5100002010303020403050504040000017D01020300041105122131
          410613516107227114328191A1082342B1C11552D1F02433627282090A161718
          191A25262728292A3435363738393A434445464748494A535455565758595A63
          6465666768696A737475767778797A838485868788898A92939495969798999A
          A2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6
          D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F01000301
          01010101010101010000000000000102030405060708090A0BFFC400B5110002
          0102040403040705040400010277000102031104052131061241510761711322
          328108144291A1B1C109233352F0156272D10A162434E125F11718191A262728
          292A35363738393A434445464748494A535455565758595A636465666768696A
          737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7
          A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3
          E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00FDFC
          A28A619BE66186F97F5A007D14DDCDFDDA3737F76801D45333EEDFA526CFF6A4
          FF00BEA8024A2A3D9FED49FF007D5390E17FC4D003A8A375377D003A8A6EFF00
          6A37FB5003A8A6EF6FEE9FCE8DEDFDD3F9D003A8A6A49B8FA11D41ED4EA0028A
          28A0029B37DCFF00810FE629D4D9BEE7FC087F31400EAA1AC6BF6FA2266E0D5F
          AF9CFC77F17FEDDE2CBAFF00AED241FF007C7C9401EC937C42B7A9EC3C75032F
          FA41DBEF5F3B7FC2D4A21F8A9401F55515C3FC09F1A8F1CF81F77FCFAC9E41AE
          E2800A28A2800A28A2800A28A2800A28A2800A28A2800A6CDF73FE043F98A753
          64E9F88FE7400EAFCF5FDA2B59B8F869F1A75FD1EEBFE7EBCFB7FF00A6F1BFCE
          9FE7FD8AFD0AAF0DFDB2FF0064CD3FF68FF090B84BEB7D07C49A5C67EC3AA4A3
          F7410924C337AC649A00F8CFFE16A5243F153FE9E2BC93C55F083E207853C597
          5A3DD69DFE956B2FFAE8678E5866FF006D1D3EFD7AD7EC6DFB1D6A3F1A3E257F
          C55D71FD97A0E97179D7107DA3F7DAA7FB09FEC7FCF47A00FB63F61DB4B81F05
          BFB42E3FE62B7524F07FD73FB89FFA057B4567E95A5DBE85A75BDADADAADBDBD
          AC42186288711C6830A9F956850014519A375174014519A28B80514668CD0014
          0E051488308BF4A005A28A2800A47FBADF4A5A47FB87E9400B5E35FB51FC46FF
          00843EF740D3AEBFE3D75532607FCF591367FF00175ECB5E3FFB657C1CD37E33
          7C05D72D752DDF6AD2E292F6C2E213E5CD0CA833F2FD7EE500791F8AB5EF87F6
          3FE91FF90609FF00735A5F0F6F3C2FAF587F685AE9DFF91EBE10F127C1FD43ED
          FF00E95A8EA5756BFF004DE792BB1D37E336B1F097E1A7F67E876FFF001EBFF3
          C3FE587FC02803EBAF11FEDAD37C0DF89BA4F84754D16EAEBFB7BCCFEC1F20F9
          90DF08137CD1A3FF0004D1A7FCB393AE3E4A356FF829AE9B7B65756FA168BF6A
          D480FF004759AF46DFF81F15F387ECB7F01FC6DFB66EA3A9DFDD6A3FD97E19B7
          325BCDA9CD079B3191E3FB90C2FF00EFFDFAC4FDB33F632FF8559F0FFC79E2AF
          ED8D4B54F1369B7D64DABD89844769359CFF0023DD220CBFEF26F9F83FBAF9EB
          9B1553D9D3F686985A7ED2A7B30FDA7BFE0A95E2EF88DA7E93A3785EE2EB49B5
          B311CDAB5ED9131CBA9CFF00C71A3A7DC83FF46553F0E7ED1FE30D42C3ED16FE
          32F167FE0DA7FF00E2EBE31F1B6BDA87F60FFC4B3FE7AC7F68FF009EDF6777D8
          FE4FFD34D9F3C7FEE57AF7ECEB0EA161F0D34AB7BAD46DB55BAB58BC8F3FFDCF
          EFFF009FE3AFCC333C555A8FDA4EA1F7581C2D287EEDD33EA4F86FFB59F8BBE1
          E78DF4CD56F3C43AD6AB676F2E2E2CAF6FE49619A3FB8FF7FF00E5A57E8D7877
          C436BE29D06CEFF4FB85B8B5BC852E219874963719535F8C3F10BE12E9FF0012
          EFED7FB4FF00E81F7BA5DC7EE23FDFDBDD27CE9FF7DA23C7FF004D112BE84F85
          DFB6B78F7E0CFC35D2FC31A6CFA6DD5BE990F9105C5E41E64FFF00033BF657A1
          91E79F5656AC72E6993FB6D689FA598DAB4BD16BCDFF00663F8DB6FF001FBE11
          E9BAFAAFD9EE8830DF407FE58DC27DF1FC9BE8C2BD24F22BF42A5595587B4A67
          C7D4A4E9BE463A8A28AD8CC28A28A00291FEE1FA52D365FB87E86801D5E5BFB5
          278A7FB07C05FD9FDF569BC93FF5CFEFBD7A95790FED81E1D9B50F86CBA95B11
          BB45B913CDEA627F95FF009A9FF80D007C73F12747B7B0AF21D7B58B7B0BFAF7
          EF11E8FF00DBD615F1CFC42FB4587C4BD5747FF9F59BFF00B3A00FD1FF00F825
          5DEFDB7E19F8A8FA6AB1FF00E884AE97F6D7F84BA078AB4CD275EF13DACD71E1
          9B72DA6788D61BA96DB769F3FCBBDFCA6F992390ABE2B07FE093DA17F67FECE5
          7D73FF003F5ACCBFF8E46895EB5FB56FC279BE3AFECDFE33F085ACDF67BAD7F4
          9B8B7B761F262428767FE3FB6B1ADFC234A2ECD1F853E30D1ADF41F16EABA7DA
          EA36DAADAE95777105BDEC1FEA6F634774474FFAE895ADF07FC6DF60D7BFB3FF
          00E7EBFE3DFF00EBA579ECD797161FE8F756FF0065BAB597C8B8827FF961227C
          8E8F5E5B79A9EB1A0FC59FB45ADBDD6ABAA79BFEBA083F73FD96EFBD207FFA69
          1CC8FE5FFBFF00BCFDDD7E6B2C2F3B3EDA38AF668FBF34DD62B27C6DF13AE3C2
          5E2CF0AE9FFD9DF6AB5F106A12697F6DF3E38BEC571B1DE1F93F8FCCD8E9FF00
          7C579FFC25F89DA85FDF5AFF006E5BDB5AFDAA2FF5107EF7C893FDFAEEFC53E0
          3D1FE25D87D9F53B7FB55AF9BE7FFAF922FDE7FC02BC3FE1D4FDE9E97F13F867
          D3FF00F0451FDA0F52F16EB9E20D035AD3EDF49BCBAFB489ECA09E49A182F2CA
          7F25F633A27FAC85E37FFBE2BF46CAEF35F8ADFB24585C7EC61F1DFF00E12FD0
          FECD75FBA921B8D2E7B78E287E7FBF26F8763BC9B37A47E6799F7EBF63BC11E3
          0B0F1EF8474ED634D985C69DAA5B473DBB0FE28DC706BF48E1AC552A94BD9D33
          E3739C2CE9D5E77D4DE1C0A28A2BE90F1428A28A0029ADF7969D4C27F7DF87F8
          D003EA8EB3A541AE69B756372375BDCC324330CE3E4718357A8A00F86B5ED06E
          3C25AF6ABA3DCFFC7D6952C907FD77FEE3FF00DF1B2BE59FDA43C37F60F8976B
          A87FD0562FFC889FFD86CAFB17F6CFD42DD7E2BDD0B5FB3FFC7A47E7987FE7A7
          CFF7EBE47F8B5A3EA1AF5FDA7D96DF52D57F7B24FF00B882497C8F93FD8A00FD
          0CFF008277E91FD9DFB267877FE9E8DC4DF9CEF5EE47A579EFECBBE15B8F037E
          CF5E0DD36ECFFA4DAE97179DFEFBE1FF00F6735E85401F903FF05A3FD85AE3E1
          47C5BFF859DE1936F6BE19F1A5D795ABC38C7D8AFF0066FDFF00EE4FB19CFF00
          D3457FF9E95F23E83A3DBD857EEA7EDAFF00B3FC7FB4F7ECCFE27F098DABA95E
          5AF9DA7CC3FE58DDC5F3C27FEFB1B7E8C6BF0861BCFF00977BAFFAE1FF006D3F
          8D2BE173CC2BA788BFD83E9F2BC573D3B325F1878DB4FF0002587F685D5C7D97
          FD2E383FE7AFEF1DF627FE3F5EEBE03F127F6F58DADC7F9F32BE4FF1DF80F50F
          16F8F2D2DF43D3ADAEB54F155A49E1EBF827FDEC33DBFDF47D9BFF00E59FCFFD
          C8FE77F324AEDBC37FB3DFC78B0B0FF8A3FC67E12FECBF2BFD1E79E0B8D526BD
          93FBEF3791B3FEFDD79BFD8D53174FF7677FF6A53A1FC43E83F1B78DAE3C25FF
          0008FF00FC4BBED56BAAEA11E97713F9FE57D8B7FF00A97D9FC7FBED89FF0003
          AFBC7FE08DBFB405C7C5AFD9D6EB49D4ADDF49D53C3BA84911B1967F34D9EE91
          D5EDF7FF001F9734730FA14AFCABF187C1FF008B1FF0897D9FC73E3CF097D96E
          AEE383FE45393F7F71BFF728888E8EF26FFE08EBF4FF00FE0927FF0004ECF177
          EC6BA5EBFAF78B3C4D6B71AB78AA388AE8F6361F6682C533BB7CC5DDDDE7ED8C
          848F247EF3A8F6B26C9F1187A9ED0F3734CC2957A7C87DC3451457D91F361451
          4500150CD3F973E3FD9CFF003A9AB85F1BEAF7D1EB9711C7FEAE22AA9C741B50
          FF00326803ADFED2A496FD41FF005E3F2AF2FBCD6358AE7F58D67C51FF002EB7
          373401E15F107E0D6B1E04F1E6ADFDB9A97FC4AFCAF3A0D53FE7F63F9FE7FF00
          AE9FF3D2BC1BC61FB6F69FA0FF00C53FE0FD36E6EBF7BE47EE3FE5F64FFD9E4A
          F5AFDB1BE00FC50F8F1F65FECDD47FD17FD45C413CFE579FFF007C579E7C25FD
          83F58F869AF5AEB175A76A575AA5ACBE7FFC7FDBF93E67FB9B2803EEFF00D8D3
          49F17781FE04E9763E3816D6BAF34AF37D8A03E6FD8A37E6381DFF00BFCD49FB
          66FED2D6FF00B2CFEC9BF11FE240B75BBFF842B40B8D56080FFCB691233E52B7
          FB25CA5796E9BF107C71603FD2ADFF00F45D725FB4EDBDC7ED11FB3CF8D3E1FE
          BB71F65B5F1A68B71A5CF3FF00CF0DF1FC927FDB37D8FF00F00A00FC10F8E5E3
          6F8F1E2DFF008BD1E26F1E7892EB5EBAD423FF0089A41AB496B77A5DC3FCE9F6
          6D8FF2471FF7238D23AF60F86FF18350FDA5BE03F82FC51A1DBE8977E3CF2A4F
          0BF89ACBCF8EC2182F2CB6243AADCFF723B8B6785E47FF009EF0CFFDFAF09FDB
          1BE26F8A3C276369F0BFC4DE03D4B4AF1E697147A5DC4F65E7DD43ADC707DC7B
          6444D8FE66C4F9E3AFD56FF8231786FC2FFB1E7FC13CAD7C1FF10ADF44BAD7BC
          69ADDC78A35ED2EF608EFE1B291F624303A7DC79234861FF00B695CD8AC2D3C4
          53F6750E9A55BD9FF0CF05F833E1BF03F80F41BAD43C4DE3CD12D74BBAFDC6AF
          AA5EDFC76B3788767CFE4429F7EDB4D8FF00B9FEB25FF59257B47833F6D9F85F
          F11C1D03E1AEB56BE3ED757CB86C745F0C4125D4D348FF0024289F26C4FF007F
          FD5FC8F5F06FFC1483F609F881A17C5AF155BFC0DB7B5F1A7C2FF1A6AB71ADDB
          D97911C5A8F85E4BA7DF341FBED9FB8DEEFE5BC7FF002CDEBF403FE0DEAFD916
          DFFE09A9F05BC55A878C350D36EBE2378FE5B6FB7C165FBD8744B3837F936BBF
          F8E4DF33BC9FF2CFEE27F0569468FB3FDD232AB57DA1F69FEC53FB0037C3AD72
          D3E247C53FECED7BE22F95FF0012FB387F79A77842373FEAEDFF00BF3FFCF4B9
          FF00BE3095F5CFDB2BC5F4DF8FBA7DFD6DE9BF152DEFC56A667A6A5D6E703D4D
          58AE0FC3FE2FFB4EA76F1FFCF49557F3205779400514514005616A1A31BED4E6
          6685A4593211C8FB87E5FF000ADDA28039A97C2519FF00966FFF007C9AAD2F83
          A43FC0DF9575D4500713FF00087DBFF9355BFE103B7AEFE8A00F396F8590CBF7
          559B1E83355EE3E0359DEFDE8DC7D457A751401E37A87ECB7A5BFDDB385BE8A6
          B3DFF64ED0636DADA6E9CA7D0DBA57BA51401E17FF000C97E17FFA06DBFF00DF
          8AB10FECA3E17FFA075B57B651401E4BA6FECEBE1FD3FF00E5DEB734DF857A7E
          9FFF002EF5DF51401CDE99E1582DAF22917EF46E187E06BA4A28A0028A28A002
          8A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A002
          8A28A00FFFD9}
        Stretch = True
      end
      object QRLabel5: TQRLabel
        Left = 610
        Top = 3
        Width = 65
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1613.95833333333
          7.9375
          171.979166666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Gerado em:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRSysData3: TQRSysData
        Left = 678
        Top = 2
        Width = 31
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1793.875
          5.29166666666667
          82.0208333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        Color = clWhite
        Data = qrsDate
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        FontSize = 8
      end
      object QRSysData4: TQRSysData
        Left = 678
        Top = 20
        Width = 31
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1793.875
          52.9166666666667
          82.0208333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        Color = clWhite
        Data = qrsTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        FontSize = 8
      end
      object QRLabel9: TQRLabel
        Left = 635
        Top = 42
        Width = 40
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1680.10416666667
          111.125
          105.833333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'P'#225'gina:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRSysData1: TQRSysData
        Left = 678
        Top = 42
        Width = 39
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1793.875
          111.125
          103.1875)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        Color = clWhite
        Data = qrsPageNumber
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        FontSize = 8
      end
      object QRLabel14: TQRLabel
        Left = 282
        Top = 4
        Width = 175
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          746.125
          10.5833333333333
          463.020833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Gerenciamento de Estoque v3.0'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel6: TQRLabel
        Left = 267
        Top = 76
        Width = 39
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          706.4375
          201.083333333333
          103.1875)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Setor:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel11: TQRLabel
        Left = 311
        Top = 76
        Width = 65
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          822.854166666667
          201.083333333333
          171.979166666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'QRLabel11'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
    end
    object TitleBand1: TQRBand
      Left = 38
      Top = 145
      Width = 718
      Height = 40
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = True
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Frame.Style = psDashDot
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        105.833333333333
        1899.70833333333)
      BandType = rbTitle
      object QRLabel2: TQRLabel
        Left = 2
        Top = 2
        Width = 46
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          5.29166666666667
          5.29166666666667
          121.708333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'C'#243'digo'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel3: TQRLabel
        Left = 47
        Top = 20
        Width = 63
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          124.354166666667
          52.9166666666667
          166.6875)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Descri'#231#227'o'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel4: TQRLabel
        Left = 517
        Top = 3
        Width = 38
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1367.89583333333
          7.9375
          100.541666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Saldo'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel8: TQRLabel
        Left = 269
        Top = 3
        Width = 85
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          711.729166666667
          7.9375
          224.895833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Unid. Medida'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel10: TQRLabel
        Left = 446
        Top = 20
        Width = 29
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1180.04166666667
          52.9166666666667
          76.7291666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Tipo'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
    end
  end
end
