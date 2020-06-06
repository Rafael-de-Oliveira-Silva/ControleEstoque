unit unt_produtos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, Buttons, ExtCtrls, DBCtrls, DB,
  DBTables, WinSkinData;

type
  TF_ConsultaProdutos = class(TForm)
    DBGrid1: TDBGrid;
    btn_Adicionar: TBitBtn;
    btn_Alterar: TBitBtn;
    btn_Excluir: TBitBtn;
    btn_Fechar: TBitBtn;
    edt_pesquisarNome: TEdit;
    lbl_produto: TLabel;
    btn_Limpar: TBitBtn;
    SkinData1: TSkinData;
    procedure btn_AdicionarClick(Sender: TObject);
    procedure btn_AlterarClick(Sender: TObject);
    procedure btn_ExcluirClick(Sender: TObject);
    procedure btn_FecharClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn_OKClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edt_pesquisarNomeChange(Sender: TObject);
    procedure edt_pesquisarNomeKeyPress(Sender: TObject; var Key: Char);
    procedure btn_LimparClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_ConsultaProdutos: TF_ConsultaProdutos;

implementation

{$R *.dfm}

uses unt_excluirProdutos,
     unt_dmBanco,
     unt_alterarProdutos,
     unt_adicionarProdutos,
     unt_entradaProdutos,
     unt_saidaProdutos,
     unt_cadastrarSolicitantes;

procedure TF_ConsultaProdutos.btn_AdicionarClick(Sender: TObject);
begin
   DM_Banco.tabProduto.Append;
   F_AdicionarProdutos := TF_AdicionarProdutos.Create(self);
   F_AdicionarProdutos.ShowModal;
end;

procedure TF_ConsultaProdutos.btn_AlterarClick(Sender: TObject);
begin
     DM_Banco.tabProduto.Edit;
     Application.CreateForm(TF_AlterarProdutos, F_AlterarProdutos);
     F_AlterarProdutos.Show;
     F_AlterarProdutos.edt_Codigo.Text := DM_Banco.tabProduto.FieldByName('Codigo').AsString;
     F_AlterarProdutos.edt_Descricao.Text := DM_Banco.tabProduto.FieldByName('Descricao').AsString;
     F_AlterarProdutos.cb_Medida.Text := DM_Banco.tabProduto.FieldByName('Medida').AsString;
     F_AlterarProdutos.cb_Tipo.Text := DM_Banco.tabProduto.FieldByName('Tipo').AsString;
end;

procedure TF_ConsultaProdutos.btn_ExcluirClick(Sender: TObject);
var
   REC_ENTRADA: Integer;
begin
   if (MessageDlg('Deseja excluir o produto ?', mtConfirmation,[mbYes,mbNo],0)) <> mrYes then
       Abort
   else
   begin
      REC_ENTRADA := (DM_Banco.tabProduto.FieldByName('Entrada').Value);
      if (REC_ENTRADA = 0) then
      begin
          DM_Banco.tabProduto.Edit;
          DM_Banco.tabProduto.Delete;
      end
      else if (REC_ENTRADA <> 0) then
           begin
               MessageDlg('Não é possível excluir o produto, pois há um histórico de entradas!',mtError,[mbOK],0);
               Exit;
           end
   end;
end;

procedure TF_ConsultaProdutos.btn_FecharClick(Sender: TObject);
begin
   F_ConsultaProdutos.Close;
end;

procedure TF_ConsultaProdutos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    action := cafree;
end;

procedure TF_ConsultaProdutos.btn_OKClick(Sender: TObject);
begin
   edt_pesquisarNome.Text := '';
   edt_pesquisarNome.SetFocus;
end;

procedure TF_ConsultaProdutos.FormCreate(Sender: TObject);
begin
    DM_Banco.tabProduto.Open;
end;

procedure TF_ConsultaProdutos.edt_pesquisarNomeChange(Sender: TObject);
begin
   DM_Banco.tabProduto.Locate('Descricao',edt_pesquisarNome.Text,[loCaseInsensitive, loPartialKey]);
end;

procedure TF_ConsultaProdutos.edt_pesquisarNomeKeyPress(Sender: TObject;
  var Key: Char);
begin
    Key:= Upcase(Key);
    DM_Banco.tabProduto.Locate('Descricao',edt_pesquisarNome.Text,[loCaseInsensitive, loPartialKey]);
end;

procedure TF_ConsultaProdutos.btn_LimparClick(Sender: TObject);
begin
    edt_pesquisarNome.Text := '';
    edt_pesquisarNome.SetFocus;
end;

end.
