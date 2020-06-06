unit unt_consultaEstoque;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Grids, DBGrids, Buttons, WinSkinData;

type
  TF_ConsultaEstoque = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    comboSetor: TComboBox;
    btnPesquisar: TBitBtn;
    DBGrid1: TDBGrid;
    btn_Fechar: TBitBtn;
    SkinData1: TSkinData;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btn_FecharClick(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
    procedure comboSetorSelect(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_ConsultaEstoque: TF_ConsultaEstoque;

implementation

uses unt_dmBanco;

{$R *.dfm}

procedure TF_ConsultaEstoque.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     action := cafree;
     DM_Banco.QueryConsultaEstoque.Close;
end;

procedure TF_ConsultaEstoque.FormCreate(Sender: TObject);
begin
     //TRECHO QUE CARREGA TODOS OS SETORES CADASTRADO NO FORMULARIO F_EntradaProdutos
    With (DM_Banco.tabSetor) do
    begin
         DM_Banco.tabSetor.First;
         if not (DM_Banco.tabSetor.IsEmpty) then
         begin
              While not (DM_Banco.tabSetor.Eof) do
              begin
                   F_ConsultaEstoque.comboSetor.Items.Add(FieldByName('Descricao').AsString);
                   Next;
              end;
         end;
    end;
    //FIM DO TRECHO QUE CARREGA TODOS OS SETORES CADASTRADOS NO FORMULARIO

    F_ConsultaEstoque.btnPesquisar.Enabled := False;
end;

procedure TF_ConsultaEstoque.btn_FecharClick(Sender: TObject);
begin
     F_ConsultaEstoque.Close;
end;

procedure TF_ConsultaEstoque.btnPesquisarClick(Sender: TObject);
begin
    DM_Banco.QueryConsultaEstoque.Close;
    DM_Banco.QueryConsultaEstoque.Params.ParamByName('pNomeSetor').Value := (comboSetor.Text);
    DM_Banco.QueryConsultaEstoque.Open;
end;

procedure TF_ConsultaEstoque.comboSetorSelect(Sender: TObject);
begin
      F_ConsultaEstoque.btnPesquisar.Enabled := True;
end;

end.
