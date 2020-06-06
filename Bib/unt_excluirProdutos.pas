unit unt_excluirProdutos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TF_Excluir = class(TForm)
    Label1: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_Excluir: TF_Excluir;

implementation

{$R *.dfm}

uses unt_dmBanco,
     unt_produtos;

procedure TF_Excluir.BitBtn1Click(Sender: TObject);
var
   REC_ENTRADA: Integer;
begin
   REC_ENTRADA := (DM_Banco.tabProduto.FieldByName('Entrada').Value);
   if (REC_ENTRADA = 0) then
   begin
     DM_Banco.tabProduto.Edit;
     DM_Banco.tabProduto.Delete;
     F_Excluir.Close;
   end
   else if (REC_ENTRADA <> 0) then
      MessageDlg('Não é possível excluir o produto, pois há um histórico de entradas!',mtError,[mbOK],0);
      F_Excluir.Close;
      Exit;
end;

procedure TF_Excluir.BitBtn2Click(Sender: TObject);
begin
   F_Excluir.Close;
end;

procedure TF_Excluir.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    action := cafree;
end;

end.
