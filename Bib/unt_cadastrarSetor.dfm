object F_CadastroSetor: TF_CadastroSetor
  Left = 323
  Top = 157
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Setor'
  ClientHeight = 312
  ClientWidth = 489
  Color = clLime
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object lblCodigo: TLabel
    Left = 24
    Top = 17
    Width = 44
    Height = 13
    Caption = 'C'#243'digo:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblDescricao: TLabel
    Left = 9
    Top = 42
    Width = 62
    Height = 13
    Caption = 'Descri'#231#227'o:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object edt_CodSetor: TEdit
    Left = 71
    Top = 14
    Width = 71
    Height = 21
    Color = clSkyBlue
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    MaxLength = 4
    ParentFont = False
    TabOrder = 0
    OnKeyPress = edt_CodSetorKeyPress
  end
  object edt_DescSetor: TEdit
    Left = 72
    Top = 38
    Width = 331
    Height = 21
    Color = clSkyBlue
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    MaxLength = 40
    ParentFont = False
    TabOrder = 1
    OnKeyPress = edt_DescSetorKeyPress
  end
  object btnGravar: TBitBtn
    Left = 7
    Top = 64
    Width = 87
    Height = 30
    Hint = '>>> Permite gravar um Setor'
    Caption = 'Gravar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
    OnClick = btnGravarClick
    Glyph.Data = {
      B60D0000424DB60D000000000000360000002800000030000000180000000100
      180000000000800D000000000000000000000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF464646
      3D3D3D4141416B6B6BA5A5A5ADADADA9A9A9A8A8A8A6A6A6A4A4A4A2A2A2A0A0
      A09E9E9E9D9D9D9A9A9A9999999A9A9A9191916363633D3D3D353535414141FF
      FFFFFFFFFF9191918F8F8F9090909A9A9AA9A9A9ABABABAAAAAAAAAAAAA9A9A9
      A9A9A9A8A8A8A8A8A8A7A7A7A7A7A7A6A6A6A6A6A6A6A6A6A4A4A49898988F8F
      8F8D8D8D909090FFFFFFFFFFFF4040409494944B4B4B888888128BF3128BF312
      8BF3128BF3128BF3128BF3128BF3128BF3128BF3128BF3128BF3128BF3128BF3
      128BF37878787F7F7F505050343434FFFFFFFFFFFF909090C3C3C3989898A2A2
      A2A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1
      A1A1A1A1A1A1A1A1A1A1A19E9E9EB8B8B8A1A1A18D8D8DFFFFFFFFFFFF454545
      AEAEAE99999985858525A5F725A5F725A5F725A5F725A5F725A5F725A5F725A5
      F725A5F725A5F725A5F725A5F725A5F725A5F7777777929292A4A4A4353535FF
      FFFFFFFFFF919191D1D1D1C4C4C4A1A1A1A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5
      A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A59D9D9DC3C3
      C3CECECE8D8D8DFFFFFFFFFFFF4747473E3E3E414141868686F0F0F0FFFFFFFF
      FFFFFDFDFDFAFAFAF6F6F6F3F3F3F0F0F0EEEEEEEAEAEAE7E7E7E4E4E4E7E7E7
      D5D5D5797979303030212121353535FFFFFFFFFFFF9191918F8F8F909090A1A1
      A1BCBCBCBFBFBFBFBFBFBFBFBFBEBEBEBDBDBDBCBCBCBCBCBCBBBBBBBABABAB9
      B9B9B9B9B9B9B9B9B5B5B59E9E9E8C8C8C8888888D8D8DFFFFFFFFFFFF4A4A4A
      424242444444878787EFEFEFFFFFFFFFFFFFFFFFFFFEFEFEFBFBFBF8F8F8F5F5
      F5F3F3F3EFEFEFECECECE9E9E9ECECECD9D9D9797979303030212121353535FF
      FFFFFFFFFF929292909090919191A1A1A1BBBBBBBFBFBFBFBFBFBFBFBFBFBFBF
      BEBEBEBEBEBEBDBDBDBCBCBCBBBBBBBBBBBBBABABABBBBBBB6B6B69E9E9E8C8C
      8C8888888D8D8DFFFFFFFFFFFF4D4D4D474747474747878787EFEFEFCEBDB5CE
      BDB5CEBDB5CEBDB5CEBDB5CEBDB5CEBDB5CEBDB5CEBDB5CEBDB5CEBDB5CEBDB5
      DEDEDE7B7B7B2F2F2F212121353535FFFFFFFFFFFF939393919191919191A1A1
      A1BBBBBBB0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0
      B0B0B0B0B0B0B0B0B7B7B79E9E9E8B8B8B8888888D8D8DFFFFFFFFFFFF4F4F4F
      4C4C4C4B4B4B878787EFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFE
      FEFCFCFCF8F8F8F5F5F5F1F1F1F5F5F5E2E2E27D7D7D2F2F2F212121353535FF
      FFFFFFFFFF939393939393929292A1A1A1BBBBBBBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBEBEBEBDBDBDBCBCBCBDBDBDB8B8B89F9F9F8B8B
      8B8888888D8D8DFFFFFFFFFFFF5353535151514E4E4E888888EFEFEFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFAFAFAF6F6F6FBFBFB
      E6E6E67D7D7D2F2F2F212121353535FFFFFFFFFFFF949494949494939393A2A2
      A2BBBBBBBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBE
      BEBEBDBDBDBEBEBEB9B9B99F9F9F8B8B8B8888888D8D8DFFFFFFFFFFFF575757
      575757515151898989EFEFEFCEBDB5CEBDB5CEBDB5CEBDB5CEBDB5CEBDB5CEBD
      B5CEBDB5CEBDB5CEBDB5CEBDB5CEBDB5ECECEC8080802F2F2F212121353535FF
      FFFFFFFFFF959595959595949494A2A2A2BBBBBBB0B0B0B0B0B0B0B0B0B0B0B0
      B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0BBBBBBA0A0A08B8B
      8B8888888D8D8DFFFFFFFFFFFF5959595B5B5B5555558B8B8BF0F0F0FFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      F0F0F08484842F2F2F212121353535FFFFFFFFFFFF969696969696959595A2A2
      A2BCBCBCBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBCBCBCA1A1A18B8B8B8888888D8D8DFFFFFFFFFFFF5B5B5B
      606060595959888888E9E9E9FCFCFCF5F5F5F4F4F4F4F4F4F4F4F4F5F5F5F5F5
      F5F5F5F5F5F5F5F5F5F5F6F6F6FFFFFFEAEAEA808080313131222222353535FF
      FFFFFFFFFF969696989898969696A2A2A2BABABABFBFBFBDBDBDBDBDBDBDBDBD
      BDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBFBFBFBABABAA0A0A08C8C
      8C8888888D8D8DFFFFFFFFFFFF5E5E5E6767676060606767678787878C8C8C88
      88888686868484848282828282828181818181818181817F7F7F808080818181
      7979794F4F4F323232272727373737FFFFFFFFFFFF9797979999999898989999
      99A1A1A1A3A3A3A2A2A2A1A1A1A1A1A1A0A0A0A0A0A0A0A0A0A0A0A0A0A0A09F
      9F9FA0A0A0A0A0A09E9E9E9393938C8C8C8989898D8D8DFFFFFFFFFFFF626262
      6B6B6B6A6A6A6565656262626060605656564E4E4E4A4A4A4747474545454242
      424040403D3D3D3A3A3A3939393737373737373737373434342D2D2D3A3A3AFF
      FFFFFFFFFF9898989A9A9A9A9A9A999999989898989898959595939393929292
      9191919191919090909090908F8F8F8E8E8E8E8E8E8D8D8D8D8D8D8D8D8D8D8D
      8D8B8B8B8E8E8EFFFFFFFFFFFF6868687070706A6A6A6464645E5E5E5A5A5A5B
      5B5B6060606161615C5C5C5959595555555353535353534F4F4F484848424242
      3B3B3B3838383838383333333D3D3DFFFFFFFFFFFF9A9A9A9C9C9C9A9A9A9999
      9997979796969696969698989898989897979796969695959594949494949493
      93939292929090908E8E8E8E8E8E8E8E8E8C8C8C8F8F8FFFFFFFFFFFFF6F6F6F
      7373735454544747474848483E3E3E797979B9B9B9BFBFBFB1B1B1ADADADA8A8
      A8A4A4A4A1A1A19C9C9C9898988C8C8C6B6B6B4141413C3C3C383838404040FF
      FFFFFFFFFF9B9B9B9C9C9C9595959191919292928F8F8F9E9E9EAEAEAEAFAFAF
      ACACACABABABAAAAAAA9A9A9A8A8A8A7A7A7A6A6A6A3A3A39A9A9A9090908F8F
      8F8E8E8E909090FFFFFFFFFFFF7575757575754141412C2C2C30303020202090
      9090FFFFFFFFFFFFF1F1F1ECECECEAEAEAD5D5D5B1B1B1B3B3B3CECECEC7C7C7
      8D8D8D4848484040403D3D3D434343FFFFFFFFFFFF9D9D9D9D9D9D9090908B8B
      8B8C8C8C888888A4A4A4BFBFBFBFBFBFBCBCBCBBBBBBBABABAB5B5B5ACACACAC
      ACACB3B3B3B1B1B1A3A3A39292929090908F8F8F909090FFFFFFFFFFFF7A7A7A
      7A7A7A4444443030303434342525258E8E8EF7F7F7FAFAFAE7E7E7E3E3E3E6E6
      E6B9B9B95D5D5D707070BDBDBDC3C3C38989894C4C4C444444414141464646FF
      FFFFFFFFFF9E9E9E9E9E9E9191918C8C8C8D8D8D898989A3A3A3BDBDBDBEBEBE
      B9B9B9B8B8B8B9B9B9AEAEAE9797979C9C9CAFAFAFB0B0B0A2A2A29393939191
      91909090919191FFFFFFFFFFFF7E7E7E7D7D7D4747473131313535352626268D
      8D8DF6F6F6FAFAFAE6E6E6E2E2E2E7E7E7B5B5B54A4A4A626262BABABAC3C3C3
      8B8B8B505050484848454545494949FFFFFFFFFFFF9F9F9F9F9F9F9191918C8C
      8C8D8D8D898989A3A3A3BDBDBDBEBEBEB9B9B9B8B8B8B9B9B9ADADAD92929298
      9898AEAEAEB0B0B0A2A2A2949494929292919191929292FFFFFFFFFFFF838383
      8282824848483131313434342727278E8E8EF5F5F5FAFAFAE6E6E6E2E2E2E6E6
      E6B6B6B6515151676767BABABAC2C2C28C8C8C5353534C4C4C4A4A4A4D4D4DFF
      FFFFFFFFFFA0A0A0A0A0A09292928C8C8C8D8D8D898989A3A3A3BDBDBDBEBEBE
      B9B9B9B8B8B8B9B9B9ADADAD949494999999AEAEAEB0B0B0A3A3A39494949393
      93929292939393FFFFFFFFFFFF8A8A8A8888884545452B2B2B2F2F2F21212191
      9191FFFFFFFFFFFFF0F0F0ECECECEAEAEAD0D0D09B9B9BA2A2A2C9C9C9C6C6C6
      9393935858585050504E4E4E797979FFFFFFFFFFFFA2A2A2A2A2A29191918A8A
      8A8B8B8B888888A4A4A4BFBFBFBFBFBFBCBCBCBBBBBBBABABAB4B4B4A6A6A6A8
      A8A8B2B2B2B1B1B1A4A4A4969696949494939393B5B5B5FFFFFFFFFFFF868686
      8484845B5B5B4B4B4B4E4E4E454545858585C5C5C5C7C7C7BABABAB6B6B6B3B3
      B3AEAEAEA5A5A5A2A2A2A3A3A39C9C9C8080805F5F5F5A5A5A797979FFFFFFFF
      FFFFFFFFFFA1A1A1A1A1A1969696929292939393919191A1A1A1B1B1B1B1B1B1
      AEAEAEADADADACACACABABABA9A9A9A8A8A8A8A8A8A7A7A7A0A0A09797979696
      96B5B5B5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
    NumGlyphs = 2
  end
  object btnEditar: TBitBtn
    Left = 104
    Top = 64
    Width = 87
    Height = 30
    Hint = '>>> Permite a  edi'#231#227'o um setor'
    Caption = 'Editar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 3
    OnClick = btnEditarClick
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000000
      000033333377777777773333330FFFFFFFF03FF3FF7FF33F3FF700300000FF0F
      00F077F777773F737737E00BFBFB0FFFFFF07773333F7F3333F7E0BFBF000FFF
      F0F077F3337773F3F737E0FBFBFBF0F00FF077F3333FF7F77F37E0BFBF00000B
      0FF077F3337777737337E0FBFBFBFBF0FFF077F33FFFFFF73337E0BF0000000F
      FFF077FF777777733FF7000BFB00B0FF00F07773FF77373377373330000B0FFF
      FFF03337777373333FF7333330B0FFFF00003333373733FF777733330B0FF00F
      0FF03333737F37737F373330B00FFFFF0F033337F77F33337F733309030FFFFF
      00333377737FFFFF773333303300000003333337337777777333}
    NumGlyphs = 2
  end
  object btnCancelar: TBitBtn
    Left = 200
    Top = 64
    Width = 87
    Height = 30
    Caption = 'Cancelar'
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    OnClick = btnCancelarClick
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000130B0000130B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      3333333333FFFFF3333333333999993333333333F77777FFF333333999999999
      33333337777FF377FF3333993370739993333377FF373F377FF3399993000339
      993337777F777F3377F3393999707333993337F77737333337FF993399933333
      399377F3777FF333377F993339903333399377F33737FF33377F993333707333
      399377F333377FF3377F993333101933399377F333777FFF377F993333000993
      399377FF3377737FF7733993330009993933373FF3777377F7F3399933000399
      99333773FF777F777733339993707339933333773FF7FFF77333333999999999
      3333333777333777333333333999993333333333377777333333}
    NumGlyphs = 2
  end
  object btnAlterar: TBitBtn
    Left = 296
    Top = 64
    Width = 87
    Height = 30
    Caption = 'Alterar'
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    OnClick = btnAlterarClick
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000130B0000130B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333330070
      7700333333337777777733333333008088003333333377F73377333333330088
      88003333333377FFFF7733333333000000003FFFFFFF77777777000000000000
      000077777777777777770FFFFFFF0FFFFFF07F3333337F3333370FFFFFFF0FFF
      FFF07F3FF3FF7FFFFFF70F00F0080CCC9CC07F773773777777770FFFFFFFF039
      99337F3FFFF3F7F777F30F0000F0F09999937F7777373777777F0FFFFFFFF999
      99997F3FF3FFF77777770F00F000003999337F773777773777F30FFFF0FF0339
      99337F3FF7F3733777F30F08F0F0337999337F7737F73F7777330FFFF0039999
      93337FFFF7737777733300000033333333337777773333333333}
    NumGlyphs = 2
  end
  object btnFechar: TBitBtn
    Left = 391
    Top = 64
    Width = 87
    Height = 30
    Hint = '>>> Fecha o formul'#225'rio de cadastro'
    Caption = 'Fechar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 6
    OnClick = btnFecharClick
    Glyph.Data = {
      B60D0000424DB60D000000000000360000002800000030000000180000000100
      180000000000800D000000000000000000000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00044534386B5457837679
      9C9799B4B9BBCCD8D9E3F5F6F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF868686
      9F9F9FAEAEAEBEBEBECECECEDEDEDEEDEDEDFBFBFBFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0C317C0C
      317C0C317C000A4D3B68AC33599D3152962B488C21397D15286C0A185C020C4F
      010D5103125704165D061C6507236B092872FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFF9090909090909090908787879B9B9B9898989797979595959191918E
      8E8E8A8A8A8787878787878989898A8A8A8B8B8B8D8D8D8E8E8EFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFF0A317D0C0D0F0C0D0F0011564477BB4F82C75A8D
      D26295DA6699DE6598DD679ADF6497DC6295DA5787CC426EB32E55991D3F8400
      1257FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F8F8F838383838383888888
      9F9F9FA2A2A2A4A4A4A6A6A6A7A7A7A7A7A7A8A8A8A7A7A7A6A6A6A3A3A39D9D
      9D979797929292888888FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0C35820E
      10120E0F120018613467AB3164A8396CB03F72B6487BBE5184C85A8DD25A8DD2
      5E91D65E91D65689CE4679BD3D70B4001962FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFF9090908484848383838A8A8A9B9B9B9A9A9A9C9C9C9D9D9DA0A0A0A2
      A2A2A4A4A4A4A4A4A5A5A5A5A5A5A3A3A39F9F9F9D9D9D8A8A8AFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFF0E3986101214111114001F6A3366AA295CA0295C
      A0285B9F275A9E376AAC6295DB315FAB25589C275A9E2A5DA13063A6396CB000
      206BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9191918484848484848B8B8B
      9A9A9A9898989898989898989797979B9B9BA6A6A69A9A9A9797979797979898
      989A9A9A9C9C9C8B8B8BFFFFFFFFFFFFFFFFFFF9FCFAFFFFFFFFFFFF113F8B13
      141713131700226D3467AB2A5DA12B5EA22B5EA22B5EA23363A95F92D7305EA8
      2B5EA22B5EA22B5EA22B5CA03A6CB100236EFFFFFFFFFFFFFFFFFFFCFCFCFFFF
      FFFFFFFF9292928585858585858B8B8B9B9B9B9898989898989898989898989A
      9A9AA6A6A69999999898989898989898989898989C9C9C8C8C8CFFFFFFFFFFFF
      FFFFFF002FE6FFFFFFFFFFFF13429015161A14161A0024703467AB2A5DA12B5E
      A22B5EA22A5DA12E5CA25A8DD22E5CA52B5EA22B5EA22B5EA22655993B6DB200
      2571FFFFFFFFFFFFFFFFFF979797FFFFFFFFFFFF9393938585858585858C8C8C
      9B9B9B989898989898989898989898999999A4A4A49999999898989898989898
      989797979C9C9C8C8C8CFFFFFFFFFFFFFFFFFF002FE60018DAFFFFFF16469417
      181D16191E0026723467AB295CA02B5EA22B5EA2295B9F28569B5588CD2C59A2
      2B5EA22B5EA22B5EA22350943D6FB4012773FFFFFFFFFFFFFFFFFF9797979494
      94FFFFFF9494948686868686868C8C8C9B9B9B98989898989898989898989897
      9797A3A3A39898989898989898989898989595959D9D9D8C8C8CFFFFFFFFFFFF
      FFFFFF002FE61569FF0109CB184A9A191B21191B200028753568AC295CA02B5E
      A22B5EA2245297204A905083C82B579F2B5EA22B5EA22B5DA11E488C3E70B501
      2976FFFFFFFFFFFFFFFFFF9797979F9F9F9191919595958787878787878D8D8D
      9B9B9B989898989898989898969696949494A2A2A29898989898989898989898
      989494949D9D9D8D8D8D0033EE0033EE0033EE002FE61669FF095EFE0400B41B
      1E231B1E23002A783669AD295CA0295B9F245296194085163C844B7EC328549D
      2B5EA22A5CA023509413387B4072B7012B799898989898989898989797979F9F
      9F9D9D9D8F8F8F8787878787878D8D8D9B9B9B98989898989896969692929291
      9191A1A1A19797979898989898989595959090909E9E9E8D8D8D0033EE5DA2FF
      3F87FF2876FF1569FF095EFE0055FE08009D1E2026002C7A2B599F1D478A1B44
      88153B7F0E2C700E2E75487BC026529A1D498D1A438713367A0B286C4274B901
      2D7B989898AAAAAAA5A5A5A2A2A29F9F9F9D9D9D9C9C9C8D8D8D8888888D8D8D
      9898989393939393939191918E8E8E8E8E8EA0A0A09696969494949393939090
      908D8D8D9E9E9E8E8E8E0033EE599FFF4089FF2874FF1568FF095EFE0055FE00
      52FD070081002E7D142669142669477ABF477ABF477ABF477ABF477ABF477ABF
      477ABF477ABF477ABF477ABF4376BB012F7E989898A9A9A9A6A6A6A2A2A29F9F
      9F9D9D9D9C9C9C9B9B9B8B8B8B8E8E8E8D8D8D8D8D8DA0A0A0A0A0A0A0A0A0A0
      A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A09F9F9F8E8E8E0033EE5DA2FF
      3F87FF2876FF1568FF095DFE0055FE0052FD070081002F7F3166B45287D1315E
      AA315FAA305EA93361AC477ABF315FAA305DA8305DA9305EA8305DA94578BD01
      3080989898AAAAAAA5A5A5A2A2A29F9F9F9D9D9D9C9C9C9B9B9B8B8B8B8E8E8E
      9B9B9BA3A3A39A9A9A9A9A9A9999999A9A9AA0A0A09A9A9A9999999999999999
      999999999F9F9F8E8E8E0033EE5DA2FF4089FF2876FF1669FF095DFE0055FE08
      009D25282F0031826EA1E880B3F8285B9F285B9F2A5DA03366A84C7FC426529A
      285B9F285B9F285B9F2B5EA2477ABF013283989898AAAAAAA6A6A6A2A2A29F9F
      9F9D9D9D9C9C9C8D8D8D8A8A8A8E8E8EA9A9A9AEAEAE9898989898989898989A
      9A9AA1A1A1969696989898989898989898989898A0A0A08F8F8F0033EE0033EE
      0033EE002CE61569FF095DFE0400B4282A32272A32003384386BAF24579B275A
      9E275A9E275A9E2F60A45487CC2B57A0275A9E275A9E275A9E245599497CC101
      34859898989898989898989696969F9F9F9D9D9D8F8F8F8B8B8B8A8A8A8F8F8F
      9C9C9C979797979797979797979797999999A3A3A39898989797979797979797
      97969696A0A0A08F8F8FFFFFFFFFFFFFFFFFFF002CE61668FF0109CB2560B12A
      2D35292C35003586386BAF24579B26599D26599D25589C2C5BA05E91D62D5BA4
      26599D25589C24579B204F924A7DC2013687FFFFFFFFFFFFFFFFFF9696969F9F
      9F9191919999998B8B8B8B8B8B8F8F8F9C9C9C97979797979797979797979798
      9898A5A5A5999999979797979797979797959595A0A0A08F8F8FFFFFFFFFFFFF
      FFFFFF002CE60018DAFFFFFF2560B12B2F372B2F37003689386BAF2255992558
      9C25589C24569A28569C699CE1325FAA24579B24579B24579B1B478A4C7FC401
      378AFFFFFFFFFFFFFFFFFF969696949494FFFFFF9999998C8C8C8C8C8C8F8F8F
      9C9C9C969696979797979797979797979797A8A8A89A9A9A9797979797979797
      97939393A1A1A1909090FFFFFFFFFFFFFFFFFF002CE6FFFFFFFFFFFF2560B12D
      313A2D313A00388B386BAF21549824579B24579B20509325509773A6EB3563AF
      23569A23569A215397163D804D80C501398CFFFFFFFFFFFFFFFFFF969696FFFF
      FFFFFFFF9999998C8C8C8C8C8C9090909C9C9C96969697979797979795959596
      9696ABABAB9B9B9B969696969696969696919191A1A1A1909090FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFF2560B130323C2F323D00398C386BAF2053972356
      99205194163F811C448B7CAFF43868B42255992152961842850C2B6C4E81C701
      3A8DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9999998D8D8D8D8D8D909090
      9C9C9C969696969696959595919191939393ADADAD9C9C9C9696969696969292
      928D8D8DA1A1A1909090FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2560B131
      353E30353E003B8E3668AC194A8E18458811367708225E10307882B5FA3C6DBA
      143D7E153C7F1335791131785386CC013C8FFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFF9999998D8D8D8D8D8D9090909B9B9B9494949393938F8F8F8B8B8B8F
      8F8FAEAEAE9D9D9D9191919191919090908F8F8FA3A3A3919191FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFF2560B132373F32373F003C903564AB255197315F
      A73D6DB7487AC8578AD974A7EC7CAFF484B7FC83B6FB7AADF26A9DE25E91D601
      3D91FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9999998E8E8E8E8E8E919191
      9B9B9B9696969999999D9D9DA0A0A0A4A4A4ABABABADADADAFAFAFAFAFAFACAC
      ACA8A8A8A5A5A5919191FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2560B134
      3841343841003D916497DC70A3E87BAEF383B6FB88BBFF85B8FD83B6FB83B6FB
      78ACF26398E0497FCA3069B51C57A6013E92FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFF9999998E8E8E8E8E8E919191A7A7A7AAAAAAADADADAFAFAFB0B0B0AF
      AFAFAFAFAFAFAFAFACACACA7A7A7A1A1A19B9B9B979797919191FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFF2560B12560B12560B1003E935388D0437BC53C75
      C1316BB9215DAD124EA10542970341950845990D4A9D134FA21854A71E5AAB23
      5EAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF999999999999999999919191
      A3A3A3A0A0A09E9E9E9C9C9C9898989595959292929292929393939494949595
      95969696989898999999FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFF0443963D6DAE5F87BC83A2CBA9BFDBCBD8EAEDF2F8FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFF939393ACACACBABABACACACADADADAE9E9E9F8
      F8F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
    NumGlyphs = 2
  end
  object DBGrid1: TDBGrid
    Left = 7
    Top = 104
    Width = 474
    Height = 204
    DataSource = DM_Banco.dsSetor
    FixedColor = clActiveCaption
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    ReadOnly = True
    TabOrder = 7
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Id'
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Descricao'
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 337
        Visible = True
      end>
  end
  object SkinData1: TSkinData
    Active = True
    DisableTag = 99
    SkinControls = [xcMainMenu, xcPopupMenu, xcToolbar, xcControlbar, xcCombo, xcCheckBox, xcRadioButton, xcProgress, xcScrollbar, xcEdit, xcButton, xcBitBtn, xcSpeedButton, xcPanel, xcGroupBox, xcStatusBar, xcTab]
    SkinFile = '\Armazem\Skins\MXSKIN30.SKN'
    SkinStore = '(none)'
    SkinFormtype = sfMainform
    Left = 440
    Top = 24
    SkinStream = {00000000}
  end
end
