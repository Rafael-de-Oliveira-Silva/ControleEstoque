unit unt_principal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, Menus, StdCtrls, ExtCtrls, WinSkinData, jpeg;

type
  TF_Principal = class(TForm)
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    Consulta1: TMenuItem;
    Relatrio1: TMenuItem;
    Auxlio1: TMenuItem;
    StatusBar1: TStatusBar;
    Sobreosistema1: TMenuItem;
    N1: TMenuItem;
    Contudo1: TMenuItem;
    picosdeAjuda1: TMenuItem;
    ComousaraAjuda1: TMenuItem;
    Cadastro1: TMenuItem;
    ArquivoCadastroUsuario: TMenuItem;
    N2: TMenuItem;
    Sair1: TMenuItem;
    ConsultaProdutos: TMenuItem;
    Timer1: TTimer;
    Saldo1: TMenuItem;
    Solicitantes1: TMenuItem;
    Entradas1: TMenuItem;
    Geral1: TMenuItem;
    Sadas1: TMenuItem;
    Entrada1: TMenuItem;
    Sadas2: TMenuItem;
    AlterarSenha1: TMenuItem;
    Alterar1: TMenuItem;
    SkinData1: TSkinData;
    Image1: TImage;
    Gastos1: TMenuItem;
    Setor1: TMenuItem;
    Lanamento1: TMenuItem;
    Produtos1: TMenuItem;
    Saida1: TMenuItem;
    Estoque2: TMenuItem;
    procedure Sobreosistema1Click(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Timer1Timer(Sender: TObject);
    procedure Saldo1Click(Sender: TObject);
    procedure Solicitantes1Click(Sender: TObject);
    procedure Entradas1Click(Sender: TObject);
    procedure Sadas1Click(Sender: TObject);
    procedure Entrada1Click(Sender: TObject);
    procedure Sadas2Click(Sender: TObject);
    procedure ArquivoCadastroUsuarioClick(Sender: TObject);
    procedure Alterar1Click(Sender: TObject);
    procedure Gastos1Click(Sender: TObject);
    procedure Setor1Click(Sender: TObject);
    procedure Produtos1Click(Sender: TObject);
    procedure ConsultaProdutosClick(Sender: TObject);
    procedure Saida1Click(Sender: TObject);
    procedure Estoque2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    LOGIN1: String;
  end;

var
  F_Principal: TF_Principal;

implementation

{$R *.dfm}

uses  unt_sobre,
      unt_produtos,
      unt_dmBanco,
      unt_relatorioEstoqueSaldo,
      unt_cadastrarSolicitantes,
      unt_EntradaDeDatas,
      unt_EntradaDeDatas2,
      unt_relatorioEstoqueGeral,
      unt_consultaEntradas,
      unt_ConsultaSaidas,
      unt_alterarSenha,
      unt_cadastrarUsuario,
      unt_EntradadeDatas3, unt_cadastrarSetor, unt_entradaProdutos,
  unt_saidaProdutos, unt_consultaEstoque, unt_FiltroSaldoSetor;

procedure TF_Principal.Sobreosistema1Click(Sender: TObject);
begin
    Application.CreateForm(TF_Sobre, F_Sobre);
    F_Sobre.Show;
end;

procedure TF_Principal.Sair1Click(Sender: TObject);
begin
    if (MessageDlg('Deseja fechar o programa ?', mtConfirmation,[mbYes,mbNo],0)) <> mrYes then
        Abort
    else
        F_Principal.Close;
        DM_Banco.Destroy;
        Application.Terminate;
end;

procedure TF_Principal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    action := cafree;
end;

procedure TF_Principal.Timer1Timer(Sender: TObject);
begin
  F_Principal.StatusBar1.Panels[1].Text := TimeToStr(time);
end;

procedure TF_Principal.Saldo1Click(Sender: TObject);
begin
   Application.CreateForm(TFiltro_Saldo, Filtro_Saldo);
   Filtro_Saldo.Show;
end;

procedure TF_Principal.Solicitantes1Click(Sender: TObject);
begin
    Application.CreateForm(TF_CadastrarSolicitantes, F_CadastrarSolicitantes);
    F_CadastrarSolicitantes.Show;
end;

procedure TF_Principal.Entradas1Click(Sender: TObject);
begin
    Application.CreateForm(TFiltro_Entradas, Filtro_Entradas);
    Filtro_Entradas.Show;
    Filtro_Entradas.MaskDataInicial.SetFocus;
end;

procedure TF_Principal.Sadas1Click(Sender: TObject);
begin
    Application.CreateForm(TFiltro_Saidas, Filtro_Saidas);
    Filtro_Saidas.Show;
    With DM_Banco.tabSolicitante do
    begin
         DM_Banco.tabSolicitante.First;
         if not (DM_Banco.tabSolicitante.IsEmpty) then
         begin
              While not (DM_Banco.tabSolicitante.Eof) do
              begin
                   Filtro_Saidas.cbSolicitantes.Items.Add(FieldByName('Nome').AsString);
                   Next;
              end;
         end;
    end;
    //F_EntradaDeDatas2.MaskDataInicial.SetFocus;
end;

procedure TF_Principal.Entrada1Click(Sender: TObject);
begin
    Application.CreateForm(TF_ConsultaEntradas, F_ConsultaEntradas);
    F_ConsultaEntradas.Show;
end;

procedure TF_Principal.Sadas2Click(Sender: TObject);
begin
    Application.CreateForm(TF_ConsultaSaidas, F_ConsultaSaidas);
    F_ConsultaSaidas.Show;
end;

procedure TF_Principal.ArquivoCadastroUsuarioClick(Sender: TObject);
begin
    Application.CreateForm(TF_CadastrarUsuario, F_CadastrarUsuario);
    F_CadastrarUsuario.Show;
end;

procedure TF_Principal.Alterar1Click(Sender: TObject);
begin
    Application.CreateForm(TF_AlterarSenha, F_AlterarSenha);
    F_AlterarSenha.Show;
    F_AlterarSenha.LOGIN2 := (LOGIN1);
end;

procedure TF_Principal.Gastos1Click(Sender: TObject);
begin
    Application.CreateForm(TFiltro_Gastos, Filtro_Gastos);
    Filtro_Gastos.Show;
end;

procedure TF_Principal.Setor1Click(Sender: TObject);
begin
        Application.CreateForm(TF_CadastroSetor, F_CadastroSetor);
        F_CadastroSetor.Show;
end;

procedure TF_Principal.Produtos1Click(Sender: TObject);
begin
     Application.CreateForm(TF_ConsultaProdutos, F_ConsultaProdutos);
     F_ConsultaProdutos.Show;
end;

procedure TF_Principal.ConsultaProdutosClick(Sender: TObject);
begin
    Application.CreateForm(TF_EntradaProdutos, F_EntradaProdutos);
    F_EntradaProdutos.Show;
end;

procedure TF_Principal.Saida1Click(Sender: TObject);
begin
    Application.CreateForm(TF_SaidaProdutos, F_SaidaProdutos);
    F_SaidaProdutos.Show;
end;

procedure TF_Principal.Estoque2Click(Sender: TObject);
begin
     Application.CreateForm(TF_ConsultaEstoque, F_ConsultaEstoque);
     F_ConsultaEstoque.Show;
end;

end.
