object Filtro_Saldo: TFiltro_Saldo
  Left = 398
  Top = 278
  Width = 390
  Height = 154
  Caption = 'Filtro'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 12
    Top = 32
    Width = 50
    Height = 20
    Caption = 'Setor:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object comboSetor: TComboBox
    Left = 64
    Top = 33
    Width = 297
    Height = 21
    Color = clSkyBlue
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ItemHeight = 13
    ParentFont = False
    Sorted = True
    TabOrder = 0
    OnChange = comboSetorChange
  end
  object btnRelatorio: TBitBtn
    Left = 147
    Top = 72
    Width = 100
    Height = 30
    Caption = 'Imprimir'
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = btnRelatorioClick
    Glyph.Data = {
      B60D0000424DB60D000000000000360000002800000030000000180000000100
      180000000000800D000000000000000000000000000000000000FFFFFFFFFFFF
      9366459366459367459367459367449367449366459367459367459366449367
      44936644936745936644936644936745936744936744936744936744FFFFFFFF
      FFFFFFFFFFFFFFFF9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A
      9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A
      9A9A9A9AFFFFFFFFFFFFFFFFFFFFFFFF946745E9D7C1E9D7C1E9D7C1E9D7C1E9
      D7C1E9D7C1E9D7C1E9D7C1E9D7C1E8D7C1E8D7C1E8D7C1E8D7C1E8D7C1E8D7C1
      E8D7C1E8D7C1E8D7C1936745FFFFFFFFFFFFFFFFFFFFFFFF9A9A9AB5B5B5B5B5
      B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5
      B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B59A9A9AFFFFFFFFFFFFFFFFFFFFFFFF
      956945E8D8C3E8D8C3E8D8C3E8D8C3E8D8C3E8D8C3E8D8C3E8D8C3E8D8C3E9D8
      C3E9D8C3E9D8C3E9D8C3E9D8C3E9D8C3E9D8C3E9D8C3E9D7C3956846FFFFFFFF
      FFFFFFFFFFFFFFFF9A9A9AB5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5
      B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5
      B59A9A9AFFFFFFFFFFFFFFFFFFFFFFFF976946E9D9C4E9D9C4E9D9C4E9D9C4E9
      D9C4E9D9C4E9D9C4E9D9C4E9D9C4E9D8C5E9D8C5E9D8C5E9D8C5E9D8C5E9D8C5
      E9D8C5E9D8C5E9D9C4976946FFFFFFFFFFFFFFFFFFFFFFFF9B9B9BB5B5B5B5B5
      B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5
      B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B59B9B9BFFFFFFFFFFFFFFFFFFFFFFFF
      986A46E9DAC6E9DAC61E6F271E6F27E9DAC67E50197E5019E9DAC61015A61015
      A6EADAC6EADAC6EADAC6EADAC6EADAC6EADAC6EADAC6E9D9C6986A46FFFFFFFF
      FFFFFFFFFFFFFFFF9B9B9BB6B6B6B6B6B68F8F8F8F8F8FB6B6B6939393939393
      B6B6B6909090909090B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6
      B69B9B9BFFFFFFFFFFFFFFFFFFFFFFFF9A6B47EADCC8EADCC85DAE661E6F27EA
      DCC8C89A637E5019EADCC86365F11015A6EBDBC8EBDBC8A9754EA9754EA9754E
      A9754EEBDBC8EBDBC89A6B47FFFFFFFFFFFFFFFFFFFFFFFF9B9B9BB6B6B6B6B6
      B69E9E9E8F8F8FB6B6B6A5A5A5939393B6B6B6A4A4A4909090B6B6B6B6B6B69E
      9E9E9E9E9E9E9E9E9E9E9EB6B6B6B6B6B69B9B9BFFFFFFFFFFFFFFFFFFFFFFFF
      9A6C48EADCCAEADCCA5DAE661E6F27EADCCAC89A637E5019EADCCA6365F11015
      A6EADDCAEADDCAEADDCAEADDCAEADDCAEADDCAEADDCAEADCCA9B6C48FFFFFFFF
      FFFFFFFFFFFFFFFF9B9B9BB6B6B6B6B6B69E9E9E8F8F8FB6B6B6A5A5A5939393
      B6B6B6A4A4A4909090B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6
      B69B9B9BFFFFFFFFFFFFFFFFFFFFFFFF9C6E48EBDECCEBDECC5DAE661E6F27EB
      DECCC89A637E5019EBDECC6365F11015A6EBDECCEBDECCEBDECCEBDECCEBDECC
      EBDECCEBDECCECDECC9D6D49FFFFFFFFFFFFFFFFFFFFFFFF9C9C9CB7B7B7B7B7
      B79E9E9E8F8F8FB7B7B7A5A5A5939393B7B7B7A4A4A4909090B7B7B7B7B7B7B7
      B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B79C9C9CFFFFFFFFFFFFFFFFFFFFFFFF
      9F6E49ECDFCFECDFCFECDFCFECDFCFECDFCFC89A637E5019ECDFCF6365F11015
      A6ECDFCFECDFCFA9754EA9754EA9754EA9754EECDFCFECE0CF9F6D49FFFFFFFF
      FFFFFFFFFFFFFFFF9C9C9CB7B7B7B7B7B7B7B7B7B7B7B7B7B7B7A5A5A5939393
      B7B7B7A4A4A4909090B7B7B7B7B7B79E9E9E9E9E9E9E9E9E9E9E9EB7B7B7B7B7
      B79C9C9CFFFFFFFFFFFFFFFFFFFFFFFFA06F4AECE1D1ECE1D1ECE1D1ECE1D1EC
      E1D1C89A637E5019ECE1D16365F11015A6EDE1D1EDE1D1EDE1D1EDE1D1EDE1D1
      EDE1D1EDE1D1ECE1D1A06F49FFFFFFFFFFFFFFFFFFFFFFFF9C9C9CB7B7B7B7B7
      B7B7B7B7B7B7B7B7B7B7A5A5A5939393B7B7B7A4A4A4909090B7B7B7B7B7B7B7
      B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B79C9C9CFFFFFFFFFFFFFFFFFFFFFFFF
      A2714BEDE3D4EDE3D4EDE3D4EDE3D4EDE3D4EDE3D4EDE3D4EDE3D46365F11015
      A6EDE3D3EDE3D3EDE3D3EDE3D3EDE3D3EDE3D3EDE3D3EDE3D4A2714AFFFFFFFF
      FFFFFFFFFFFFFFFF9D9D9DB8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8
      B8B8B8A4A4A4909090B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8
      B89D9D9DFFFFFFFFFFFFFFFFFFFFFFFFA3724BEEE4D6EEE4D6EEE4D6EEE4D6EE
      E4D6EEE4D6EEE4D6EEE4D66365F11015A6EEE4D6EEE4D6A9754EA9754EA9754E
      A9754EEEE4D6EEE4D6A4724BFFFFFFFFFFFFFFFFFFFFFFFF9D9D9DB8B8B8B8B8
      B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8A4A4A4909090B8B8B8B8B8B89E
      9E9E9E9E9E9E9E9E9E9E9EB8B8B8B8B8B89D9D9DFFFFFFFFFFFFFFFFFFFFFFFF
      A5744BEFE6D8EFE6D8EFE6D8EFE6D8EFE6D8EFE6D8EFE6D8EFE6D86365F11015
      A6EEE6D8EEE6D8EEE6D8EEE6D8EEE6D8EEE6D8EEE6D8EEE6D8A6724BFFFFFFFF
      FFFFFFFFFFFFFFFF9D9D9DB9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9
      B9B9B9A4A4A4909090B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9
      B99D9D9DFFFFFFFFFFFFFFFFFFFFFFFFA8744CEFE8DCEFE8DCEFE8DCEFE8DCEF
      E8DCEFE8DCEFE8DCEFE8DCEFE8DCEFE7DBEFE7DBEFE7DBEFE7DBEFE7DBEFE7DB
      EFE7DBEFE7DBF0E7DCA7744CFFFFFFFFFFFFFFFFFFFFFFFF9E9E9EB9B9B9B9B9
      B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9
      B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B99D9D9DFFFFFFFFFFFFFFFFFFFFFFFF
      A9754DEFE9DDEFE9DDA9754EA9754EA9754EA9754EA9754EA9754EA9754EA975
      4EA9754EA9754EA9754EA9754EA9754EA9754EDFD3C5E6DBCDA8764DFFFFFFFF
      FFFFFFFFFFFFFFFF9E9E9EB9B9B9B9B9B99E9E9E9E9E9E9E9E9E9E9E9E9E9E9E
      9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9EB4B4B4B6B6
      B69E9E9EFFFFFFFFFFFFFFFFFFFFFFFFAA774EF0EBE0F0EBE0F0EBE0F0EBE0F0
      EBE0F0EBE0F0EBE0F0EBE0F0EBE0F1EBE0C5B19EBCA691BCA691BCA691BCA691
      BCA691BCA691BBA591915F37FEFEFEFFFFFFFFFFFFFFFFFF9E9E9EBABABABABA
      BABABABABABABABABABABABABABABABABABABABABABABABABAACACACA9A9A9A9
      A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9989898FFFFFFFFFFFFFFFFFFFFFFFF
      AD784FF1ECE2F1ECE2F1ECE2F1ECE2F1ECE2F1ECE2F1ECE2F1ECE2F1ECE2F1EC
      E2C9B8A7CD9162C98D5EC3875ABC8154B47A4EAC7347A36A409A6238FFFFFFFF
      FFFFFFFFFFFFFFFF9F9F9FBABABABABABABABABABABABABABABABABABABABABA
      BABABABABABABABABAAEAEAEA5A5A5A4A4A4A3A3A3A1A1A19F9F9F9D9D9D9B9B
      9B999999FFFFFFFFFFFFFFFFFFFFFFFFAF794FF1EDE4F1EDE4A9754EA9754EA9
      754EA9754EA9754EA9754EA9754EA9754EBC9A7FC98D5FE9D7C1E9D7C1EBDBC8
      EDE1D2F0E7DCF1ECE2FBF9F6FFFFFFFFFFFFFFFFFFFFFFFF9F9F9FBABABABABA
      BA9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9EA7A7A7A4A4A4B5
      B5B5B5B5B5B6B6B6B8B8B8B9B9B9BABABAE9E9E9FFFFFFFFFFFFFFFFFFFFFFFF
      AF7A50F2EFE5F2EFE5F2EFE5F2EFE5F2EFE5F2EFE5F2EFE5F2EFE5F2EFE5F2EE
      E6D4C6B8C4895BE9D7C1EADBC8EDE1D1EFE7DBF1ECE2FAF8F4FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFF9F9F9FBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB
      BBBBBBBBBBBBBBBBBBB1B1B1A3A3A3B5B5B5B6B6B6B7B7B7B9B9B9BABABAE5E5
      E5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB17B51F2EFE7F2EFE7F2EFE7F2EFE7F2
      EFE7F2EFE7F2EFE7F2EFE7F2EFE7F2EFE7D8CCBFBF8456EBDBC8EDE2D2EFE8DB
      F1ECE2F9F7F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9F9FBBBBBBBBBB
      BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB2B2B2A2A2A2B6
      B6B6B8B8B8B9B9B9BABABAE0E0E0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      B27C51F3F0E8F3F0E8A9754EA9754EA9754EA9754EA9754EA9754EA9754EAA76
      4FCDB6A2B87E51EDE1D1EFE8DBF1ECE2F8F6F0FFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFF9F9F9FBBBBBBBBBBBB9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E
      9E9E9E9E9E9E9E9E9EADADADA0A0A0B7B7B7B9B9B9BABABADCDCDCFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB37D52F3F1EAF3F1EAF3F1EAF3F1EAF3
      F1EAF3F1EAF3F1EAF3F1EAF3F1EAF3F1EAE2DAD0B1774BEFE7DBF1ECE2F7F4EE
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA0A0A0BBBBBBBBBB
      BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB6B6B69E9E9EB9
      B9B9BABABAD6D6D6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      B57D52F3F1EAF3F1EAF3F1EAF3F1EAF3F1EAF3F1EAF3F1EAF3F1EAF3F1EAF3F1
      EAEBE6DDA97145F1ECE2F6F3ECFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFA0A0A0BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB
      BBBBBBBBBBBBBBBBBBB9B9B99D9D9DBABABAD1D1D1FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB57D52B57D52B57D52B57D52B57D52B5
      7D52B57E52B57D52B57D52B57D52B57D52B57D52A2693FF8F6F0FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA0A0A0A0A0A0A0A0
      A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A09B9B9BDC
      DCDCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
    NumGlyphs = 2
  end
end