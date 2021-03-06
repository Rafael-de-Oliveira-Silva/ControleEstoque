unit unt_cadastrarSetor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, Buttons, WinSkinData;

type
  TF_CadastroSetor = class(TForm)
    edt_CodSetor: TEdit;
    lblCodigo: TLabel;
    lblDescricao: TLabel;
    edt_DescSetor: TEdit;
    btnGravar: TBitBtn;
    btnEditar: TBitBtn;
    btnCancelar: TBitBtn;
    btnAlterar: TBitBtn;
    btnFechar: TBitBtn;
    DBGrid1: TDBGrid;
    SkinData1: TSkinData;
    procedure btnFecharClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure edt_DescSetorKeyPress(Sender: TObject; var Key: Char);
    procedure edt_CodSetorKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_CadastroSetor: TF_CadastroSetor;

implementation

{$R *.dfm}
Uses unt_dmBanco;

procedure TF_CadastroSetor.btnFecharClick(Sender: TObject);
begin
        F_CadastroSetor.Close;
end;

procedure TF_CadastroSetor.btnGravarClick(Sender: TObject);
begin
        if (edt_CodSetor.Text = '') or (edt_DescSetor.Text = '')then
        begin
                MessageDlg('� necess�rio o preenchimento de todos os campos!',mtError,[mbOK],0);
                Exit;
        end
        else if (DM_Banco.tabSetor.FindKey([edt_CodSetor.Text])) then
             begin
                  MessageDlg('Setor j� cadastrado. Verifique e tente novamente !',mtError,[mbOK],0);
                  Exit;
             end
             else if not (DM_Banco.tabSetor.FindKey([edt_CodSetor.Text])) then
                  begin
                        DM_Banco.tabSetor.Append;
                        DM_Banco.tabSetor.FieldByName('Id').AsString := (edt_CodSetor.Text);
                        DM_Banco.tabSetor.FieldByName('Descricao').AsString := (edt_DescSetor.Text);
                        DM_Banco.tabSetor.Post;
                        edt_CodSetor.Text := '';
                        edt_DescSetor.Text := '';
                        edt_CodSetor.SetFocus;
                        Application.MessageBox('Setor gravado com sucesso!', 'Setor', MB_ICONINFORMATION + mb_Ok);
                  end;
end;

procedure TF_CadastroSetor.btnEditarClick(Sender: TObject);
begin
        DM_Banco.tabSetor.Edit;
        F_CadastroSetor.edt_CodSetor.Text := DM_Banco.tabSetor.FieldByName('Id').AsString;
        F_CadastroSetor.edt_DescSetor.Text := DM_Banco.tabSetor.FieldByName('Descricao').AsString;

        F_CadastroSetor.btnGravar.Enabled := False;
        F_CadastroSetor.btnEditar.Enabled := False;
        F_CadastroSetor.btnAlterar.Enabled := True;
        F_CadastroSetor.btnCancelar.Enabled := True;
end;

procedure TF_CadastroSetor.btnCancelarClick(Sender: TObject);
begin
        edt_CodSetor.Text := '';
        edt_DescSetor.Text := '';

        edt_CodSetor.SetFocus;
        F_CadastroSetor.btnCancelar.Enabled := False;
        F_CadastroSetor.btnAlterar.Enabled := False;
        F_CadastroSetor.btnGravar.Enabled := True;
        F_CadastroSetor.btnEditar.Enabled := True;
end;

procedure TF_CadastroSetor.btnAlterarClick(Sender: TObject);
begin
        if (edt_CodSetor.Text = '') or (edt_DescSetor.Text = '')then
        begin
                MessageDlg('� necess�rio o preenchimento de todos os campos!',mtError,[mbOK],0);
                Exit;
        end;
                DM_Banco.tabSetor.Edit;
                DM_Banco.tabSetor.FieldByName('Id').AsString := (edt_CodSetor.Text);
                DM_Banco.tabSetor.FieldByName('Descricao').AsString := (edt_DescSetor.Text);

                DM_Banco.tabSetor.Post;
                Application.MessageBox('Setor alterado com sucesso!', 'Setor', MB_ICONINFORMATION + mb_Ok);

                edt_CodSetor.Text := '';
                edt_DescSetor.Text := '';

                edt_CodSetor.SetFocus;

                F_CadastroSetor.btnGravar.Enabled := True;
                F_CadastroSetor.btnAlterar.Enabled := False;
                F_CadastroSetor.btnEditar.Enabled := True;
                F_CadastroSetor.btnCancelar.Enabled := False;
end;

procedure TF_CadastroSetor.edt_DescSetorKeyPress(Sender: TObject;
  var Key: Char);
begin
     Key:= Upcase(Key);
end;

procedure TF_CadastroSetor.edt_CodSetorKeyPress(Sender: TObject;
  var Key: Char);
begin
    If not( key in['0'..'9',#08] ) then
        key:=#0;
end;

end.
