unit unt_cadastrarUsuario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids, WinSkinData;

type
  TF_CadastrarUsuario = class(TForm)
    DBGrid1: TDBGrid;
    btnGravar: TBitBtn;
    btnLimpar: TBitBtn;
    btnEditar: TBitBtn;
    btnFechar: TBitBtn;
    lblNome: TLabel;
    edt_NomeUsuario: TEdit;
    lblLogin: TLabel;
    edt_LoginUsuario: TEdit;
    lblPerfil: TLabel;
    cbPerfilUsuario: TComboBox;
    edt_SenhaUsuario: TEdit;
    lblSenha: TLabel;
    btnAlterar: TBitBtn;
    SkinData1: TSkinData;
    procedure btnLimparClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edt_LoginUsuarioKeyPress(Sender: TObject; var Key: Char);
    procedure edt_NomeUsuarioKeyPress(Sender: TObject; var Key: Char);
    procedure btnAlterarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_CadastrarUsuario: TF_CadastrarUsuario;

implementation

{$R *.dfm}
Uses unt_dmLogin;

procedure TF_CadastrarUsuario.btnLimparClick(Sender: TObject);
begin
   edt_LoginUsuario.Text := '';
   edt_NomeUsuario.Text := '';
   cbPerfilUsuario.Text := '';
   edt_SenhaUsuario.Text := '';
   edt_LoginUsuario.SetFocus;
   F_CadastrarUsuario.btnEditar.Enabled := True;
   F_CadastrarUsuario.btnGravar.Enabled := True;
   F_CadastrarUsuario.btnAlterar.Enabled := False;
   F_CadastrarUsuario.btnLimpar.Enabled := False;
end;

procedure TF_CadastrarUsuario.btnEditarClick(Sender: TObject);
begin
    DM_Login.tabAcesso.Edit;
    F_CadastrarUsuario.edt_LoginUsuario.Text := DM_Login.tabAcesso.FieldByName('Login').AsString;
    F_CadastrarUsuario.edt_NomeUsuario.Text := DM_Login.tabAcesso.FieldByName('Nome').AsString;
    F_CadastrarUsuario.cbPerfilUsuario.Text := DM_Login.tabAcesso.FieldByName('Perfil').AsString;
    F_CadastrarUsuario.edt_SenhaUsuario.Text := DM_Login.tabAcesso.FieldByName('Senha').AsString;
    F_CadastrarUsuario.btnGravar.Enabled := False;
    F_CadastrarUsuario.btnEditar.Enabled := False;
    F_CadastrarUsuario.btnAlterar.Enabled := True;
    F_CadastrarUsuario.btnLimpar.Enabled := True;
end;

procedure TF_CadastrarUsuario.btnFecharClick(Sender: TObject);
begin
    F_CadastrarUsuario.Close;
end;

procedure TF_CadastrarUsuario.btnGravarClick(Sender: TObject);
begin
    if (edt_LoginUsuario.Text = '') or (edt_NomeUsuario.Text = '') or (cbPerfilUsuario.ItemIndex = -1) then
      begin
          MessageDlg('É necessário o preenchimento de todos os campos!',mtError,[mbOK],0);
          Exit;
      end
      else if (DM_Login.tabAcesso.FindKey([edt_LoginUsuario.Text])) then
           begin
               MessageDlg('Usuário já cadastrado. Verifique e tente novamente !',mtError,[mbOK],0);
               Exit;
           end
      else if not (DM_Login.tabAcesso.FindKey([edt_LoginUsuario.Text])) then
           begin
               DM_Login.tabAcesso.Append;
               DM_Login.tabAcesso.FieldByName('Login').AsString := (edt_LoginUsuario.Text);
               DM_Login.tabAcesso.FieldByName('Senha').AsString := (edt_SenhaUsuario.Text);
               DM_Login.tabAcesso.FieldByName('Nome').AsString := (edt_NomeUsuario.Text);
               DM_Login.tabAcesso.FieldByName('Perfil').AsString := (cbPerfilUsuario.Text);
               DM_Login.tabAcesso.Post;
               edt_LoginUsuario.Text := '';
               edt_SenhaUsuario.Text := '';
               edt_NomeUsuario.Text := '';
               cbPerfilUsuario.Text := '';
               edt_LoginUsuario.SetFocus;
               Application.MessageBox('Usuário cadastrado com sucesso!', 'Usuário', MB_ICONINFORMATION + mb_Ok);
           end;
end;

procedure TF_CadastrarUsuario.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    action := cafree;
end;

procedure TF_CadastrarUsuario.edt_LoginUsuarioKeyPress(Sender: TObject;
  var Key: Char);
begin
    Key:= Upcase(Key);
end;

procedure TF_CadastrarUsuario.edt_NomeUsuarioKeyPress(Sender: TObject;
  var Key: Char);
begin
    Key:= Upcase(Key);
end;

procedure TF_CadastrarUsuario.btnAlterarClick(Sender: TObject);
begin
    if (edt_LoginUsuario.Text = '') or (edt_NomeUsuario.Text = '') then
    begin
        MessageDlg('É necessário o preenchimento de todos os campos!',mtError,[mbOK],0);
        Exit;
    end
    else
       DM_Login.tabAcesso.Edit;
       DM_Login.tabAcesso.FieldByName('Login').AsString := (edt_LoginUsuario.Text);
       DM_Login.tabAcesso.FieldByName('Senha').AsString := (edt_SenhaUsuario.Text);
       DM_Login.tabAcesso.FieldByName('Nome').AsString := (edt_NomeUsuario.Text);
       DM_Login.tabAcesso.FieldByName('Perfil').AsString := (cbPerfilUsuario.Text);
       DM_Login.tabAcesso.Post;
       F_CadastrarUsuario.btnGravar.Enabled := True;
       Application.MessageBox('Usuário alterado com sucesso!', 'Usuário', MB_ICONINFORMATION + mb_Ok);
       edt_LoginUsuario.Text := '';
       edt_NomeUsuario.Text := '';
       cbPerfilUsuario.Text := '';
       edt_SenhaUsuario.Text := '';
       edt_LoginUsuario.SetFocus;
       F_CadastrarUsuario.btnGravar.Enabled := True;
       F_CadastrarUsuario.btnEditar.Enabled := True;
       F_CadastrarUsuario.btnAlterar.Enabled := False;
       F_CadastrarUsuario.btnLimpar.Enabled := False;
end;

end.
