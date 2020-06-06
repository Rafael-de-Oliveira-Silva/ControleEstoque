unit unt_login;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, DBCtrls, DB, DBTables, WinSkinData;

type
  TF_Login = class(TForm)
    lblLogin: TLabel;
    lblSenha: TLabel;
    btnEntrar: TBitBtn;
    btn_Sair: TBitBtn;
    dbLogin: TEdit;
    dbSenha: TEdit;
    SkinData1: TSkinData;
    procedure btn_SairClick(Sender: TObject);
    procedure btnEntrarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dbLoginKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
    USUARIO: String;
  end;

var
  F_Login: TF_Login;

implementation

{$R *.dfm}
uses unt_principal,
     unt_dmLogin,
     unt_alterarSenha,
     unt_ControllerLogin;

procedure TF_Login.btn_SairClick(Sender: TObject);
begin
   close;
   Application.Terminate;
end;

procedure TF_Login.btnEntrarClick(Sender: TObject);
var
   NivelPerfil: String;
begin

    if (dbLogin.Text = '') or (dbSenha.Text = '') then
    begin
        MessageDlg('É necessário entrar com usuário e uma senha!',mtError,[mbOK],0);
        dbLogin.SetFocus;
        Exit;
    end
    else
       if (DM_Login.tabAcesso.FindKey([dbLogin.Text])) and (DM_Login.tabAcesso.FieldByName('Senha').AsString = dbSenha.Text)then
       begin
          USUARIO := (DM_Login.tabAcesso.FieldByName('Nome').Value);
          NivelPerfil := (DM_Login.tabAcesso.FieldByName('Perfil').Value);
          Application.CreateForm(TF_Principal, F_Principal);
          if (NivelPerfil = 'COMUM') then
          begin
            F_Principal.MainMenu1.Items[0].Items[0].Enabled := False;
            F_Principal.LOGIN1 := (dbLogin.Text);
            F_login.Close;
            F_Principal.Show;
            F_Principal.StatusBar1.Panels[0].Text := DateToStr(date);
            F_Principal.StatusBar1.Panels[3].Text := (USUARIO);
          end
          else if (NivelPerfil = 'ADMINISTRADOR') then
               begin
                 F_Principal.LOGIN1 := (dbLogin.Text);
                 F_login.Close;
                 F_Principal.Show;
                 F_Principal.StatusBar1.Panels[0].Text := DateToStr(date);
                 F_Principal.StatusBar1.Panels[3].Text := (USUARIO);
               end
       end
       else
          MessageDlg('Usuário/Senha inválidos!',mtError,[mbOK],0);
          dbLogin.Clear;
          dbSenha.Clear;
          dbLogin.SetFocus;
end;

procedure TF_Login.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   action := cafree;
end;

procedure TF_Login.dbLoginKeyPress(Sender: TObject; var Key: Char);
begin
    Key:= Upcase(Key);
end;

end.
