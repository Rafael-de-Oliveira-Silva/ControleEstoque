unit unt_alterarProdutos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, WinSkinData;

type
  TF_AlterarProdutos = class(TForm)
    edt_Codigo: TEdit;
    lbl_Codigo: TLabel;
    edt_Descricao: TEdit;
    lbl_Descricao: TLabel;
    cb_Medida: TComboBox;
    lbl_Medida: TLabel;
    cb_Tipo: TComboBox;
    lbl_Tipo: TLabel;
    btn_Gravar: TBitBtn;
    btn_Sair: TBitBtn;
    SkinData1: TSkinData;
    procedure btn_GravarClick(Sender: TObject);
    procedure btn_SairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edt_CodigoKeyPress(Sender: TObject; var Key: Char);
    procedure edt_DescricaoKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_AlterarProdutos: TF_AlterarProdutos;

implementation

{$R *.dfm}

uses unt_dmBanco;

procedure TF_AlterarProdutos.btn_GravarClick(Sender: TObject);
begin
    if (edt_Codigo.Text = '') or (edt_Descricao.Text = '') then
    begin
        MessageDlg('É necessário entrar com um Código e uma Descrição!',mtError,[mbOK],0);
        Exit;
    end
    else
           DM_Banco.tabProduto.Edit;
           DM_Banco.tabProduto.FieldByName('Codigo').AsString := AnsiUpperCase(edt_Codigo.Text);
           DM_Banco.tabProduto.FieldByName('Descricao').AsString := AnsiUpperCase(edt_Descricao.Text);
           DM_Banco.tabProduto.FieldByName('Medida').AsString := (cb_Medida.Text);
           DM_Banco.tabProduto.FieldByName('Tipo').AsString := (cb_Tipo.Text);
           DM_Banco.tabProduto.Post;
           F_AlterarProdutos.Close;
end;

procedure TF_AlterarProdutos.btn_SairClick(Sender: TObject);
begin
   F_AlterarProdutos.Close;
end;

procedure TF_AlterarProdutos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     action := cafree;
end;

procedure TF_AlterarProdutos.edt_CodigoKeyPress(Sender: TObject;
  var Key: Char);
begin
    Key:= Upcase(Key);
end;

procedure TF_AlterarProdutos.edt_DescricaoKeyPress(Sender: TObject;
  var Key: Char);
begin
    Key:= Upcase(Key);
end;

end.
