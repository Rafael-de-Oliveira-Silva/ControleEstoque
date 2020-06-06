unit unt_alterarSenha;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, WinSkinData;

type
  TF_AlterarSenha = class(TForm)
    lblSenhaAntiga: TLabel;
    lblSenhaNova1: TLabel;
    lblSenhaNova2: TLabel;
    edtSenhaAntiga: TEdit;
    edtSenhaNova: TEdit;
    edtRepitaNovamente: TEdit;
    btnFechar: TBitBtn;
    btnAlterar: TBitBtn;
    SkinData1: TSkinData;
    procedure btnFecharClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnAlterarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    LOGIN2: String;
  end;

var
  F_AlterarSenha: TF_AlterarSenha;

implementation

{$R *.dfm}
uses unt_dmBanco, unt_dmLogin, unt_principal, unt_login;

procedure TF_AlterarSenha.btnFecharClick(Sender: TObject);
begin
     F_AlterarSenha.Close;
end;

procedure TF_AlterarSenha.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    action := cafree;
end;

procedure TF_AlterarSenha.btnAlterarClick(Sender: TObject);
var
   SenhaAntiga: string;
   SenhaNova: string;
   SenhaRepetida: string;
begin
     if (edtRepitaNovamente.Text = '') or (edtSenhaAntiga.Text = '') or (edtSenhaNova.Text = '') then
     begin
          MessageDlg('É necessário o preenchimento de todos os campos !',mtError,[mbOK],0);
          Exit;
     end
     else if (DM_Login.tabAcesso.FindKey([LOGIN2])) then
          begin
               SenhaAntiga := (DM_Login.tabAcesso.FieldByName('Senha').Value);
               SenhaNova := (edtSenhaNova.Text);
               SenhaRepetida := (edtRepitaNovamente.Text);
               if (SenhaAntiga <> edtSenhaAntiga.Text) then
               begin
                   MessageDlg('A senha informada não é igual a senha antiga !',mtError,[mbOK],0);
                   Exit;
               end
               else if (SenhaNova = SenhaRepetida) then
                    begin
                         DM_Login.tabAcesso.Edit;
                         DM_Login.tabAcesso.FieldByName('Senha').AsString := (SenhaNova);
                         DM_Login.tabAcesso.Post;
                         Application.MessageBox('Senha alterada com sucesso!', 'Senha alterada', MB_ICONINFORMATION + mb_Ok);
                         F_AlterarSenha.Close;
                    end
                    else
                    begin
                        MessageDlg('Você erro na repetição da nova senha. Tente novamente !',mtError,[mbOK],0);
                        Exit;
                    end;
          end;


end;

end.
