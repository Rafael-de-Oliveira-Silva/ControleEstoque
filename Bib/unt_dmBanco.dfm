object DM_Banco: TDM_Banco
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Left = 199
  Top = 155
  Height = 376
  Width = 1043
  object dsProduto: TDataSource
    DataSet = tabProduto
    Left = 72
    Top = 8
  end
  object tabProduto: TTable
    AutoRefresh = True
    DatabaseName = 'Armazem\Dados'
    IndexFieldNames = 'Codigo'
    TableName = 'produto.DB'
    TableType = ttParadox
    Left = 16
    Top = 6
  end
  object dsEntrada: TDataSource
    DataSet = tabEntrada
    Left = 77
    Top = 56
  end
  object tabEntrada: TTable
    DatabaseName = 'Armazem\Dados'
    IndexFieldNames = 'Codigo'
    TableName = 'entrada.DB'
    Left = 20
    Top = 55
  end
  object dsSaida: TDataSource
    DataSet = tabSaida
    Left = 73
    Top = 108
  end
  object tabSaida: TTable
    DatabaseName = 'Armazem\Dados'
    IndexFieldNames = 'Codigo'
    TableName = 'saida.DB'
    Left = 20
    Top = 106
  end
  object dsSolicitante: TDataSource
    DataSet = tabSolicitante
    Left = 88
    Top = 159
  end
  object tabSolicitante: TTable
    DatabaseName = 'Armazem\Dados'
    IndexFieldNames = 'Codigo'
    TableName = 'solicitante.db'
    Left = 21
    Top = 159
  end
  object dsRelatorioEntrada: TDataSource
    DataSet = QueryRelatorioEntrada
    Left = 319
    Top = 7
  end
  object dsRelatorioSaida: TDataSource
    DataSet = QueryRelatorioSaida
    Left = 314
    Top = 112
  end
  object QueryRelatorioEntrada: TQuery
    DatabaseName = 'Armazem\Dados'
    SQL.Strings = (
      'SELECT tabEntrada.Data, '
      '               tabProduto.Descricao, '
      '               tabEntrada.Quantidade, '
      '               tabEntrada.Preco, '
      '               tabEntrada.Req_Interna '
      'FROM entrada tabEntrada, produto tabProduto, setor tabSetor '
      
        'WHERE (tabEntrada.cod_Produto = tabProduto.Codigo) AND (tabSetor' +
        '.Id = tabEntrada.Cod_Setor) AND (tabSetor.Descricao = :pNomeSeto' +
        'r) and'
      
        '               (tabEntrada.Data BETWEEN :pDataInicial AND :pData' +
        'Final) '
      'ORDER BY tabEntrada.Data')
    Left = 211
    Top = 7
    ParamData = <
      item
        DataType = ftString
        Name = 'pNomeSetor'
        ParamType = ptUnknown
      end
      item
        DataType = ftDate
        Name = 'pDataInicial'
        ParamType = ptOutput
      end
      item
        DataType = ftDate
        Name = 'pDataFinal'
        ParamType = ptOutput
      end>
  end
  object QueryRelatorioSaida: TQuery
    DatabaseName = 'Armazem\Dados'
    SQL.Strings = (
      'SELECT '
      '            sa.Data, '
      '            pr.Descricao, '
      '            sa.Quantidade, '
      '            so.Nome, '
      '            au.Nome '
      'FROM '
      
        '          saida sa, produto pr, solicitante so, autenticacao au,' +
        ' setor se  '
      'WHERE '
      '             (pr.Codigo = sa.Cod_Produto) AND'
      '             (au.Login = sa.Operador_Saida) AND'
      '             (so.Codigo = sa.Solicitado_Por) AND'
      '             (so.Nome LIKE :pSolicitante) AND '
      '             (sa.Data BETWEEN :pDataInicial AND :pDataFinal)AND'
      '             (se.Descricao = :pSetor) '
      '               ')
    Left = 208
    Top = 111
    ParamData = <
      item
        DataType = ftString
        Name = 'pSolicitante'
        ParamType = ptOutput
      end
      item
        DataType = ftDate
        Name = 'pDataInicial'
        ParamType = ptOutput
      end
      item
        DataType = ftDate
        Name = 'pDataFinal'
        ParamType = ptOutput
      end
      item
        DataType = ftString
        Name = 'pSetor'
        ParamType = ptOutput
      end>
  end
  object dsConsultaEntrada: TDataSource
    DataSet = QueryConsultaEntrada
    Left = 622
    Top = 9
  end
  object QueryConsultaEntrada: TQuery
    AutoRefresh = True
    DatabaseName = '\Armazem\Dados'
    SQL.Strings = (
      'SELECT '
      '        entrada.Data, '
      '        entrada.Hora_Entrada,'
      '        produto.Codigo, '
      '        produto.Descricao, '
      '        entrada.Quantidade, '
      '        entrada.Preco, '
      '        entrada.Req_Interna, '
      '        setor.Descricao, '
      '        entrada.Operador_Entrada'
      'FROM Entrada entrada, Produto produto, Setor setor  '
      
        'WHERE (produto.Codigo = entrada.Cod_Produto) and (setor.ID = ent' +
        'rada.Cod_Setor)'
      'ORDER BY 1, 2 DESC')
    Left = 479
    Top = 8
  end
  object dsConsultaSaida: TDataSource
    DataSet = QueryConsultaSaida
    Left = 939
    Top = 8
  end
  object QueryConsultaSaida: TQuery
    AutoRefresh = True
    DatabaseName = '\Armazem\Dados'
    SQL.Strings = (
      'SELECT '
      #9#9'tabSaida.Data,'
      #9#9'tabSaida.Hora_Saida,'
      #9#9'tabSaida.Cod_Produto,'
      #9#9'tabProduto.Descricao,'
      #9#9'tabSaida.Quantidade,'
      #9#9'tabSetor.Descricao,'
      #9#9'tabSolicitante.Nome,'
      #9#9'tabSaida.Operador_Saida'
      
        'FROM saida tabSaida, produto tabProduto, setor tabSetor, solicit' +
        'ante tabSolicitante'
      
        'WHERE (tabProduto.Codigo = tabSaida.Cod_Produto) and (tabSolicit' +
        'ante.Codigo = tabSaida.Solicitado_Por) and (tabSetor.Id = tabSai' +
        'da.Cod_Setor)'
      'ORDER BY 1, 2 DESC'#9)
    Left = 811
    Top = 8
  end
  object dsRelatorioGastos: TDataSource
    DataSet = QueryRelatorioGastos
    Left = 316
    Top = 58
  end
  object QueryRelatorioGastos: TQuery
    DatabaseName = 'Armazem\Dados'
    SQL.Strings = (
      'SELECT '
      '             p.Descricao, '
      '             SUM (e.Quantidade), '
      '             SUM (e.Preco * e.Quantidade) '
      'FROM '
      '          Produto p, Entrada e, Setor s  '
      'WHERE '
      '            (p.Codigo = e.Cod_Produto) AND'
      '            (s.Id = e.Cod_Setor) AND'
      '            (s.Descricao = :pNomeSetor) AND'
      '            (Data BETWEEN :pDataInicial AND :pDataFinal)'
      'GROUP BY (p.Descricao)')
    Left = 211
    Top = 58
    ParamData = <
      item
        DataType = ftString
        Name = 'pNomeSetor'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'pDataInicial'
        ParamType = ptOutput
      end
      item
        DataType = ftDate
        Name = 'pDataFinal'
        ParamType = ptOutput
      end>
  end
  object dsSetor: TDataSource
    DataSet = tabSetor
    Left = 72
    Top = 208
  end
  object tabSetor: TTable
    DatabaseName = 'Armazem\Dados'
    IndexFieldNames = 'Id'
    TableName = 'Setor.db'
    Left = 16
    Top = 208
  end
  object dsEstoque: TDataSource
    DataSet = tabEstoque
    Left = 72
    Top = 264
  end
  object tabEstoque: TTable
    DatabaseName = 'Armazem\Dados'
    IndexFieldNames = 'Cod_Produto;Id_Setor'
    TableName = 'estoque.DB'
    Left = 16
    Top = 264
  end
  object QueryConsultaEntradaCodigo: TQuery
    AutoRefresh = True
    DatabaseName = '\Armazem\Dados'
    SQL.Strings = (
      'SELECT '
      #9#9'  entrada.Data, '
      #9#9'  entrada.Hora_Entrada,'
      #9#9'  produto.Codigo, '
      #9#9'  produto.Descricao, '
      #9#9'  entrada.Quantidade, '
      #9#9'  entrada.Preco, '
      #9#9'  entrada.Req_Interna, '
      #9#9'  setor.Descricao, '
      #9#9'  entrada.Operador_Entrada'
      'FROM Entrada entrada, Produto produto, Setor setor  '
      
        'WHERE (produto.Codigo = entrada.Cod_Produto) and (setor.ID = ent' +
        'rada.Cod_Setor) and (produto.Codigo = :pCodigoProduto)'
      'ORDER BY 1, 2 DESC')
    Left = 483
    Top = 63
    ParamData = <
      item
        DataType = ftString
        Name = 'pCodigoProduto'
        ParamType = ptUnknown
      end>
  end
  object QueryConsultaEntradaRequisicao: TQuery
    DatabaseName = '\Armazem\Dados'
    SQL.Strings = (
      'SELECT '
      '            entrada.Data, '
      '            entrada.Hora_Entrada,'
      '            produto.Codigo, '
      '            produto.Descricao, '
      '            entrada.Quantidade, '
      '            entrada.Preco, '
      '            entrada.Req_Interna, '
      '            setor.Descricao, '
      '            entrada.Operador_Entrada'
      'FROM Entrada entrada, Produto produto, Setor setor  '
      
        'WHERE (produto.Codigo = entrada.Cod_Produto) and (setor.ID = ent' +
        'rada.Cod_Setor) and (entrada.Req_Interna = :pRequisicao)'
      'ORDER BY 1, 2 DESC')
    Left = 483
    Top = 183
    ParamData = <
      item
        DataType = ftInteger
        Name = 'pRequisicao'
        ParamType = ptUnknown
      end>
  end
  object QueryConsultaEntradaPeriodo: TQuery
    DatabaseName = '\Armazem\Dados'
    SQL.Strings = (
      'SELECT '
      #9#9'  entrada.Data, '
      #9#9'  entrada.Hora_Entrada,'
      #9#9'  produto.Codigo, '
      #9#9'  produto.Descricao, '
      #9#9'  entrada.Quantidade, '
      #9#9'  entrada.Preco, '
      #9#9'  entrada.Req_Interna, '
      #9#9'  setor.Descricao, '
      #9#9'  entrada.Operador_Entrada'
      'FROM Entrada entrada, Produto produto, Setor setor  '
      
        'WHERE (produto.Codigo = entrada.Cod_Produto) and (setor.ID = ent' +
        'rada.Cod_Setor) and (entrada.Data BETWEEN :pDataInicial AND :pDa' +
        'taFinal)'
      'ORDER BY 1, 2 DESC')
    Left = 478
    Top = 124
    ParamData = <
      item
        DataType = ftDate
        Name = 'pDataInicial'
        ParamType = ptOutput
      end
      item
        DataType = ftDate
        Name = 'pDataFinal'
        ParamType = ptOutput
      end>
  end
  object dsConsultaEntradaRequisicao: TDataSource
    DataSet = QueryConsultaEntradaRequisicao
    Left = 635
    Top = 183
  end
  object dsConsultaEntradaPeriodo: TDataSource
    DataSet = QueryConsultaEntradaPeriodo
    Left = 623
    Top = 124
  end
  object dsConsultaEntradaCodigo: TDataSource
    DataSet = QueryConsultaEntradaCodigo
    Left = 622
    Top = 63
  end
  object dsConsultaSaidaCodigo: TDataSource
    DataSet = QueryConsultaSaidaCodigo
    Left = 942
    Top = 61
  end
  object dsConsultaSaidaPeriodo: TDataSource
    DataSet = QueryConsultaSaidaPeriodo
    Left = 936
    Top = 125
  end
  object dsConsultaSaidaSolicitante: TDataSource
    DataSet = QueryConsultaSaidaSolicitante
    Left = 936
    Top = 189
  end
  object QueryConsultaSaidaCodigo: TQuery
    DatabaseName = '\Armazem\Dados'
    SQL.Strings = (
      'SELECT '
      #9'tabSaida.Data,'
      #9'tabSaida.Hora_Saida,'
      #9'tabSaida.Cod_Produto,'
      #9'tabProduto.Descricao,'
      #9'tabSaida.Quantidade,'
      #9'tabSetor.Descricao,'
      #9'tabSolicitante.Nome,'
      #9'tabSaida.Operador_Saida'
      
        'FROM saida tabSaida, produto tabProduto, setor tabSetor, solicit' +
        'ante tabSolicitante'
      
        'WHERE (tabProduto.Codigo = tabSaida.Cod_Produto) and (tabSolicit' +
        'ante.Codigo = tabSaida.Solicitado_Por) and (tabSetor.Id = tabSai' +
        'da.Cod_Setor) and (tabProduto.Codigo = :pCodigoProduto)'
      'ORDER BY 1, 2 DESC')
    Left = 807
    Top = 60
    ParamData = <
      item
        DataType = ftString
        Name = 'pCodigoProduto'
        ParamType = ptUnknown
      end>
  end
  object QueryConsultaSaidaPeriodo: TQuery
    DatabaseName = '\Armazem\Dados'
    SQL.Strings = (
      'SELECT '
      #9#9'tabSaida.Data,'
      #9#9'tabSaida.Hora_Saida,'
      #9#9'tabSaida.Cod_Produto,'
      #9#9'tabProduto.Descricao,'
      #9#9'tabSaida.Quantidade,'
      #9#9'tabSetor.Descricao,'
      #9#9'tabSolicitante.Nome,'
      #9#9'tabSaida.Operador_Saida'
      
        'FROM saida tabSaida, produto tabProduto, setor tabSetor, solicit' +
        'ante tabSolicitante'
      
        'WHERE (tabProduto.Codigo = tabSaida.Cod_Produto) and (tabSolicit' +
        'ante.Codigo = tabSaida.Solicitado_Por) and (tabSetor.Id = tabSai' +
        'da.Cod_Setor) and (tabSaida.Data BETWEEN :pDataInicial AND :pDat' +
        'aFinal)'
      'ORDER BY 1, 2 DESC')
    Left = 797
    Top = 125
    ParamData = <
      item
        DataType = ftDate
        Name = 'pDataInicial'
        ParamType = ptOutput
      end
      item
        DataType = ftDate
        Name = 'pDataFinal'
        ParamType = ptOutput
      end>
  end
  object QueryConsultaSaidaSolicitante: TQuery
    DatabaseName = '\Armazem\Dados'
    SQL.Strings = (
      'SELECT '
      #9#9'tabSaida.Data,'
      #9#9'tabSaida.Hora_Saida,'
      #9#9'tabSaida.Cod_Produto,'
      #9#9'tabProduto.Descricao,'
      #9#9'tabSaida.Quantidade,'
      #9#9'tabSetor.Descricao,'
      #9#9'tabSolicitante.Nome,'
      #9#9'tabSaida.Operador_Saida'
      
        'FROM saida tabSaida, produto tabProduto, setor tabSetor, solicit' +
        'ante tabSolicitante'
      
        'WHERE (tabProduto.Codigo = tabSaida.Cod_Produto) and (tabSolicit' +
        'ante.Codigo = tabSaida.Solicitado_Por) and (tabSetor.Id = tabSai' +
        'da.Cod_Setor) and (tabSolicitante.Codigo = :pSolicitante)'
      'ORDER BY 1, 2 DESC')
    Left = 808
    Top = 176
    ParamData = <
      item
        DataType = ftInteger
        Name = 'pSolicitante'
        ParamType = ptOutput
      end>
  end
  object dsConsultaEstoque: TDataSource
    DataSet = QueryConsultaEstoque
    Left = 640
    Top = 232
  end
  object QueryConsultaEstoque: TQuery
    DatabaseName = '\Armazem\Dados'
    SQL.Strings = (
      'SELECT '
      #9'tabEstoque.Cod_Produto,'
      #9'tabProduto.Descricao,'
      #9'tabSetor.Descricao,'
      #9'tabEstoque.Entrada,'
      #9'tabEstoque.Saida,'
      #9'tabEstoque.Saldo'
      'FROM estoque tabEstoque, produto tabProduto, setor tabSetor'
      
        'WHERE (tabEstoque.Cod_Produto = tabProduto.Codigo) and (tabEstoq' +
        'ue.Id_Setor = tabSetor.Id) and (tabSetor.Descricao = :pNomeSetor' +
        ')'
      'ORDER BY 1, 2 DESC')
    Left = 488
    Top = 240
    ParamData = <
      item
        DataType = ftString
        Name = 'pNomeSetor'
        ParamType = ptUnknown
      end>
  end
  object dsRelatorioSaldo: TDataSource
    DataSet = QueryRelatorioSaldo
    Left = 312
    Top = 169
  end
  object QueryRelatorioSaldo: TQuery
    DatabaseName = 'Armazem\Dados'
    SQL.Strings = (
      'SELECT '
      #9'  p.Codigo, '
      #9'  p.Descricao, '
      #9'  p.Medida, '
      #9'  p.Tipo, '
      #9'  e.Saldo'
      'FROM'
      #9'estoque e, produto p, setor s'
      'WHERE'
      #9'(p.Codigo = e.Cod_Produto) AND'
      #9'(s.Id = e.Id_Setor) AND'
      #9'(e.Saldo > 0) AND'
      #9'(s.Descricao = :pNomeSetor)'
      'ORDER BY p.Codigo ASC'
      '')
    Left = 208
    Top = 168
    ParamData = <
      item
        DataType = ftString
        Name = 'pNomeSetor'
        ParamType = ptInput
      end>
  end
  object dsRelatorioGeral: TDataSource
    DataSet = QueryRelatorioGeral
    Left = 312
    Top = 240
  end
  object QueryRelatorioGeral: TQuery
    DatabaseName = '$\Armazem\Dados'
    SQL.Strings = (
      'SELECT '
      #9'  p.Codigo, '
      #9'  p.Descricao, '
      #9'  p.Medida, '
      #9'  p.Tipo, '
      #9'  e.Saldo'
      'FROM'
      #9'estoque e, produto p, setor s'
      'WHERE'
      #9'(p.Codigo = e.Cod_Produto) AND'
      #9'(s.Id = e.Id_Setor) AND'
      #9'(s.Descricao = :pNomeSetor)')
    Left = 208
    Top = 240
    ParamData = <
      item
        DataType = ftString
        Name = 'pNomeSetor'
        ParamType = ptInput
      end>
  end
end
