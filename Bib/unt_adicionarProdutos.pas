unit unt_adicionarProdutos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, WinSkinData;

type
  TF_AdicionarProdutos = class(TForm)
    lbl_Codigo: TLabel;
    lbl_Descricao: TLabel;
    lbl_Medida: TLabel;
    lbl_Tipo: TLabel;
    edt_Codigo: TEdit;
    edt_Descricao: TEdit;
    cb_Medida: TComboBox;
    cb_Tipo: TComboBox;
    btn_Gravar: TBitBtn;
    btn_Limpar: TBitBtn;
    btn_Sair: TBitBtn;
    SkinData1: TSkinData;
    procedure btn_GravarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn_SairClick(Sender: TObject);
    procedure btn_LimparClick(Sender: TObject);
    procedure edt_CodigoKeyPress(Sender: TObject; var Key: Char);
    procedure edt_DescricaoKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_AdicionarProdutos: TF_AdicionarProdutos;

implementation

{$R *.dfm}

uses unt_dmBanco;

procedure TF_AdicionarProdutos.btn_GravarClick(Sender: TObject);
begin
     if (edt_Codigo.Text = '') or (edt_Descricao.Text = '') then
    begin
        MessageDlg('É necessário entrar com um Código e uma Descrição!',mtError,[mbOK],0);
        Exit;
    end
    else
       if (DM_Banco.tabProduto.FindKey([edt_Codigo.Text])) or (DM_Banco.tabProduto.FieldByName('Descricao').AsString = edt_Descricao.Text)then
       begin
          MessageDlg('Código ou Produto já cadastrado!',mtError,[mbOK],0);
          Exit;
       end
       else
           DM_Banco.tabProduto.Append;
           DM_Banco.tabProduto.FieldByName('Codigo').AsString :=(edt_Codigo.Text);
           DM_Banco.tabProduto.FieldByName('Descricao').AsString :=(edt_Descricao.Text);
           DM_Banco.tabProduto.FieldByName('Medida').AsString := (cb_Medida.Text);
           DM_Banco.tabProduto.FieldByName('Tipo').AsString := (cb_Tipo.Text);
           DM_Banco.tabProduto.Post;
           Application.MessageBox('Produto adicionado com Sucesso!', 'Produto', MB_ICONINFORMATION + mb_Ok);
           F_AdicionarProdutos.Close;
           
end;

procedure TF_AdicionarProdutos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   action := cafree;
end;

procedure TF_AdicionarProdutos.btn_SairClick(Sender: TObject);
begin
   F_AdicionarProdutos.Close;
end;

procedure TF_AdicionarProdutos.btn_LimparClick(Sender: TObject);
begin
    edt_Codigo.Clear;
    edt_Descricao.Clear;
    cb_Medida.ItemIndex := -1;
    cb_Tipo.ItemIndex := -1;
    edt_Codigo.SetFocus;
end;

procedure TF_AdicionarProdutos.edt_CodigoKeyPress(Sender: TObject;
  var Key: Char);
begin
  Key:= Upcase(Key);
end;

procedure TF_AdicionarProdutos.edt_DescricaoKeyPress(Sender: TObject;
  var Key: Char);
begin
   Key:= Upcase(Key);
end;

end.
