object DM_Login: TDM_Login
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Left = 616
  Top = 223
  Height = 150
  Width = 234
  object dsLogin: TDataSource
    DataSet = tabAcesso
    Left = 8
    Top = 8
  end
  object tabAcesso: TTable
    Active = True
    DatabaseName = '\Armazem\Dados'
    IndexFieldNames = 'Login'
    TableName = 'autenticacao.db'
    Left = 64
    Top = 8
  end
end
