unit unt_FiltroSaldoSetor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TFiltro_Saldo = class(TForm)
    Label1: TLabel;
    comboSetor: TComboBox;
    btnRelatorio: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure btnRelatorioClick(Sender: TObject);
    procedure comboSetorChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Filtro_Saldo: TFiltro_Saldo;

implementation

uses unt_dmBanco, unt_EntradaDeDatas, unt_relatorioEstoqueSaldo;

{$R *.dfm}

procedure TFiltro_Saldo.FormCreate(Sender: TObject);
begin
    //TRECHO QUE CARREGA TODOS OS SETORES CADASTRADO NO FORMULARIO F_EntradaProdutos
    With (DM_Banco.tabSetor) do
    begin
         DM_Banco.tabSetor.First;
         if not (DM_Banco.tabSetor.IsEmpty) then
         begin
              While not (DM_Banco.tabSetor.Eof) do
              begin
                   Filtro_Saldo.comboSetor.Items.Add(FieldByName('Descricao').AsString);
                   Next;
              end;
         end;
    end;
    //FIM DO TRECHO QUE CARREGA TODOS OS SETORES CADASTRADOS NO FORMULARIO
end;

procedure TFiltro_Saldo.btnRelatorioClick(Sender: TObject);
begin
   Screen.Cursor := crSQLWait;
   Application.CreateForm(TRel_EstoqueSaldo, Rel_EstoqueSaldo);
   Screen.Cursor := crDefault;
   DM_Banco.QueryRelatorioSaldo.Close;
   DM_Banco.QueryRelatorioSaldo.Params.ParamByName('pSetor').Value := (comboSetor.Text);
   DM_Banco.QueryRelatorioSaldo.Open;
   Rel_EstoqueSaldo.QuickRep1.Preview;
end;

procedure TFiltro_Saldo.comboSetorChange(Sender: TObject);
begin
     btnRelatorio.Enabled := True;
end;

end.
