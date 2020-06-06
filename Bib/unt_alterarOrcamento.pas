unit unt_alterarOrcamento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TF_AlterarOrcamento = class(TForm)
    lbl_conta: TLabel;
    lbl_Orcamento: TLabel;
    lbl_Gastos: TLabel;
    lbl_Saldo: TLabel;
    edt_Conta: TEdit;
    edt_Orcamento: TEdit;
    edt_Gastos: TEdit;
    edt_Saldo: TEdit;
    btn_Gravar: TBitBtn;
    btn_Sair: TBitBtn;
    procedure btn_SairClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_AlterarOrcamento: TF_AlterarOrcamento;

implementation

{$R *.dfm}
uses unt_dmBanco;

procedure TF_AlterarOrcamento.btn_SairClick(Sender: TObject);
begin
   F_AlterarOrcamento.Close;
end;

end.
