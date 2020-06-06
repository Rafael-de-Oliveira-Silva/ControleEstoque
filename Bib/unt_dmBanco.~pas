unit unt_dmBanco;

interface

uses
  SysUtils, Classes, DB, DBTables;

type
  TDM_Banco = class(TDataModule)
    dsProduto: TDataSource;
    tabProduto: TTable;
    dsEntrada: TDataSource;
    tabEntrada: TTable;
    dsSaida: TDataSource;
    tabSaida: TTable;
    dsSolicitante: TDataSource;
    tabSolicitante: TTable;
    dsRelatorioEntrada: TDataSource;
    dsRelatorioSaida: TDataSource;
    QueryRelatorioEntrada: TQuery;
    QueryRelatorioSaida: TQuery;
    dsConsultaEntrada: TDataSource;
    QueryConsultaEntrada: TQuery;
    dsConsultaSaida: TDataSource;
    QueryConsultaSaida: TQuery;
    dsRelatorioGastos: TDataSource;
    QueryRelatorioGastos: TQuery;
    dsSetor: TDataSource;
    tabSetor: TTable;
    dsEstoque: TDataSource;
    tabEstoque: TTable;
    QueryConsultaEntradaCodigo: TQuery;
    QueryConsultaEntradaRequisicao: TQuery;
    QueryConsultaEntradaPeriodo: TQuery;
    dsConsultaEntradaRequisicao: TDataSource;
    dsConsultaEntradaPeriodo: TDataSource;
    dsConsultaEntradaCodigo: TDataSource;
    dsConsultaSaidaCodigo: TDataSource;
    dsConsultaSaidaPeriodo: TDataSource;
    dsConsultaSaidaSolicitante: TDataSource;
    QueryConsultaSaidaCodigo: TQuery;
    QueryConsultaSaidaPeriodo: TQuery;
    QueryConsultaSaidaSolicitante: TQuery;
    dsConsultaEstoque: TDataSource;
    QueryConsultaEstoque: TQuery;
    dsRelatorioSaldo: TDataSource;
    QueryRelatorioSaldo: TQuery;
    dsRelatorioGeral: TDataSource;
    QueryRelatorioGeral: TQuery;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM_Banco: TDM_Banco;

implementation

{$R *.dfm}

procedure TDM_Banco.DataModuleCreate(Sender: TObject);
begin
   tabProduto.Open;
   tabEntrada.Open;
   tabSaida.Open;
   tabSolicitante.Open;
   tabSetor.Open;
   tabEstoque.Open;
end;

procedure TDM_Banco.DataModuleDestroy(Sender: TObject);
begin
    tabProduto.Close;
    tabEntrada.Close;
    tabSaida.Close;
    tabSolicitante.Close;
    tabSetor.Close;
    tabEstoque.Close;
end;

end.
