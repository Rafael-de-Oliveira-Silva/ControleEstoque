unit unt_selecionandoProduto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids, WinSkinData;

type
  TF_SelecionandoProduto = class(TForm)
    DBGrid1: TDBGrid;
    edt_DescProduto: TEdit;
    btnLimpar: TBitBtn;
    btnConfirmar: TBitBtn;
    lbl_produto: TLabel;
    SkinData1: TSkinData;
    procedure edt_DescProdutoChange(Sender: TObject);
    procedure edt_DescProdutoKeyPress(Sender: TObject; var Key: Char);
    procedure btnLimparClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    OPERACAO: Integer;
  end;

var
  F_SelecionandoProduto: TF_SelecionandoProduto;

implementation

{$R *.dfm}
uses unt_dmBanco, unt_entradaProdutos, unt_saidaProdutos;

procedure TF_SelecionandoProduto.edt_DescProdutoChange(Sender: TObject);
begin
      //  DM_Banco.tabProduto.Locate('Descricao',edt_DescProduto.Text,[loCaseInsensitive, loPartialKey]);
end;

procedure TF_SelecionandoProduto.edt_DescProdutoKeyPress(Sender: TObject;
  var Key: Char);
begin
    Key:= Upcase(Key);
    //DM_Banco.tabProduto.Locate('Descricao',edt_DescProduto.Text,[loCaseInsensitive, loPartialKey]);
end;

procedure TF_SelecionandoProduto.btnLimparClick(Sender: TObject);
begin
    edt_DescProduto.Text := '';
    edt_DescProduto.SetFocus;
end;

procedure TF_SelecionandoProduto.btnConfirmarClick(Sender: TObject);
begin
    if (OPERACAO = 0) then
    begin
        F_EntradaProdutos.edt_codigoProduto.Text := DM_Banco.tabProduto.FieldByName('Codigo').AsString;
        F_EntradaProdutos.edt_Produto.Text := DM_Banco.tabProduto.FieldByName('Descricao').AsString;
        F_SelecionandoProduto.Close;
    end;

    if (OPERACAO = 1) then
    begin
        F_SaidaProdutos.edt_codigoProduto.Text := DM_Banco.tabProduto.FieldByName('Codigo').AsString;
        F_SaidaProdutos.edt_Produto.Text := DM_Banco.tabProduto.FieldByName('Descricao').AsString;
        F_SelecionandoProduto.Close;
    end;
end;

procedure TF_SelecionandoProduto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     action := cafree;
end;

end.
