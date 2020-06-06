unit unt_cadastrarSolicitantes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, Buttons, WinSkinData;

type
  TF_CadastrarSolicitantes = class(TForm)
    lblMatricula: TLabel;
    lblNome: TLabel;
    edt_MatriculaSolicitante: TEdit;
    edt_NomeSolicitante: TEdit;
    btnGravar: TBitBtn;
    btnFechar: TBitBtn;
    DBGrid1: TDBGrid;
    btnEditar: TBitBtn;
    btnAlterar: TBitBtn;
    SkinData1: TSkinData;
    CBSituacao: TComboBox;
    lblSituacao: TLabel;
    btnCancelar: TBitBtn;
    procedure btnFecharClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure edt_NomeSolicitanteKeyPress(Sender: TObject; var Key: Char);
    procedure btnEditarClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure edt_MatriculaSolicitanteKeyPress(Sender: TObject;
      var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_CadastrarSolicitantes: TF_CadastrarSolicitantes;

implementation

{$R *.dfm}
Uses unt_dmBanco,
     unt_saidaProdutos,
     unt_EntradaDeDatas2;

procedure TF_CadastrarSolicitantes.btnFecharClick(Sender: TObject);
begin
    F_CadastrarSolicitantes.Close;
end;

procedure TF_CadastrarSolicitantes.btnGravarClick(Sender: TObject);
begin
   if (edt_MatriculaSolicitante.Text = '') or (edt_NomeSolicitante.Text = '') or (CBSituacao.Text = '') then
      begin
          MessageDlg('� necess�rio o preenchimento de todos os campos!',mtError,[mbOK],0);
          Exit;
      end
      else if (DM_Banco.tabSolicitante.FindKey([edt_MatriculaSolicitante.Text])) then
           begin
               MessageDlg('Solicitante j� cadastrado. Verifique e tente novamente !',mtError,[mbOK],0);
               Exit;
           end
      else if not (DM_Banco.tabSolicitante.FindKey([edt_MatriculaSolicitante.Text])) then
           begin
               DM_Banco.tabSolicitante.Append;
               DM_Banco.tabSolicitante.FieldByName('Codigo').AsString := (edt_MatriculaSolicitante.Text);
               DM_Banco.tabSolicitante.FieldByName('Nome').AsString := (edt_NomeSolicitante.Text);
               DM_Banco.tabSolicitante.FieldByName('Situacao').AsString := (CBSituacao.Text);
               DM_Banco.tabSolicitante.Post;
               edt_MatriculaSolicitante.Text := '';
               edt_NomeSolicitante.Text := '';
               CBSituacao.Text := '';
               edt_MatriculaSolicitante.SetFocus;
               Application.MessageBox('Cadastro de solicitantes realizada com sucesso!', 'Solicitantes', MB_ICONINFORMATION + mb_Ok);
          end;
end;

procedure TF_CadastrarSolicitantes.edt_NomeSolicitanteKeyPress(
  Sender: TObject; var Key: Char);
begin
    Key:= Upcase(Key);
end;

procedure TF_CadastrarSolicitantes.btnEditarClick(Sender: TObject);
begin
     DM_Banco.tabSolicitante.Edit;
     F_CadastrarSolicitantes.edt_MatriculaSolicitante.Text := DM_Banco.tabSolicitante.FieldByName('Codigo').AsString;
     F_CadastrarSolicitantes.edt_NomeSolicitante.Text := DM_Banco.tabSolicitante.FieldByName('Nome').AsString;
     F_CadastrarSolicitantes.CBSituacao.Text := DM_Banco.tabSolicitante.FieldByName('Situacao').AsString;
     F_CadastrarSolicitantes.btnGravar.Enabled := False;
     F_CadastrarSolicitantes.btnEditar.Enabled := False;
     F_CadastrarSolicitantes.btnAlterar.Enabled := True;
     F_CadastrarSolicitantes.btnCancelar.Enabled := True;
end;

procedure TF_CadastrarSolicitantes.btnAlterarClick(Sender: TObject);
begin
   if (edt_MatriculaSolicitante.Text = '') or (edt_NomeSolicitante.Text = '') or (CBSituacao.Text = '') then
   begin
       MessageDlg('� necess�rio o preenchimento de todos os campos!',mtError,[mbOK],0);
       Exit;
   end;
      DM_Banco.tabSolicitante.Edit;
      DM_Banco.tabSolicitante.FieldByName('Codigo').AsString := (edt_MatriculaSolicitante.Text);
      DM_Banco.tabSolicitante.FieldByName('Nome').AsString := (edt_NomeSolicitante.Text);
      DM_Banco.tabSolicitante.FieldByName('Situacao').AsString := (CBSituacao.Text);
      DM_Banco.tabSolicitante.Post;
      Application.MessageBox('Solicitante alterado com sucesso!', 'Solicitante', MB_ICONINFORMATION + mb_Ok);
      edt_MatriculaSolicitante.Text := '';
      edt_NomeSolicitante.Text := '';
      CBSituacao.Text := '';
      edt_MatriculaSolicitante.SetFocus;
      F_CadastrarSolicitantes.btnGravar.Enabled := True;
      F_CadastrarSolicitantes.btnAlterar.Enabled := False;
      F_CadastrarSolicitantes.btnEditar.Enabled := True;
      F_CadastrarSolicitantes.btnCancelar.Enabled := False;
end;

procedure TF_CadastrarSolicitantes.btnCancelarClick(Sender: TObject);
begin
    edt_MatriculaSolicitante.Text := '';
    edt_NomeSolicitante.Text := '';
    CBSituacao.Text := '';
    edt_MatriculaSolicitante.SetFocus;
    F_CadastrarSolicitantes.btnCancelar.Enabled := False;
    F_CadastrarSolicitantes.btnAlterar.Enabled := False;
    F_CadastrarSolicitantes.btnGravar.Enabled := True;
    F_CadastrarSolicitantes.btnEditar.Enabled := True;
end;

procedure TF_CadastrarSolicitantes.edt_MatriculaSolicitanteKeyPress(
  Sender: TObject; var Key: Char);
begin
     If not( key in['0'..'9',#08] ) then
        key:=#0;
end;

end.
