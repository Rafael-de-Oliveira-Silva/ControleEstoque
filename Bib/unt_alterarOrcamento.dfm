object F_AlterarOrcamento: TF_AlterarOrcamento
  Left = 538
  Top = 258
  Width = 296
  Height = 206
  Caption = 'Alterar Or'#231'amento'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbl_conta: TLabel
    Left = 32
    Top = 31
    Width = 38
    Height = 13
    Caption = 'Conta:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl_Orcamento: TLabel
    Left = 6
    Top = 54
    Width = 66
    Height = 13
    Caption = 'Or'#231'amento:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl_Gastos: TLabel
    Left = 28
    Top = 80
    Width = 44
    Height = 13
    Caption = 'Gastos:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl_Saldo: TLabel
    Left = 34
    Top = 104
    Width = 37
    Height = 13
    Caption = 'Saldo:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object edt_Conta: TEdit
    Left = 72
    Top = 28
    Width = 179
    Height = 21
    Enabled = False
    MaxLength = 6
    TabOrder = 0
  end
  object edt_Orcamento: TEdit
    Left = 72
    Top = 51
    Width = 91
    Height = 21
    TabOrder = 1
  end
  object edt_Gastos: TEdit
    Left = 72
    Top = 75
    Width = 91
    Height = 21
    Enabled = False
    TabOrder = 2
  end
  object edt_Saldo: TEdit
    Left = 72
    Top = 100
    Width = 89
    Height = 21
    Enabled = False
    TabOrder = 3
  end
  object btn_Gravar: TBitBtn
    Left = 16
    Top = 136
    Width = 75
    Height = 25
    Caption = 'Gravar'
    TabOrder = 4
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      333333FFFFFFFFFFFFF33000077777770033377777777777773F000007888888
      00037F3337F3FF37F37F00000780088800037F3337F77F37F37F000007800888
      00037F3337F77FF7F37F00000788888800037F3337777777337F000000000000
      00037F3FFFFFFFFFFF7F00000000000000037F77777777777F7F000FFFFFFFFF
      00037F7F333333337F7F000FFFFFFFFF00037F7F333333337F7F000FFFFFFFFF
      00037F7F333333337F7F000FFFFFFFFF00037F7F333333337F7F000FFFFFFFFF
      00037F7F333333337F7F000FFFFFFFFF07037F7F33333333777F000FFFFFFFFF
      0003737FFFFFFFFF7F7330099999999900333777777777777733}
    NumGlyphs = 2
  end
  object btn_Sair: TBitBtn
    Left = 194
    Top = 136
    Width = 75
    Height = 25
    Caption = 'Sair'
    TabOrder = 5
    OnClick = btn_SairClick
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
end
