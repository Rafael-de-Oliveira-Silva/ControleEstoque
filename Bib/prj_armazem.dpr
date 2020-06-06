program prj_armazem;

uses
  Forms,
  unt_splash in 'unt_splash.pas' {F_Splash},
  unt_login in 'unt_login.pas' {F_Login},
  unt_dmLogin in 'unt_dmLogin.pas' {DM_Login: TDataModule},
  unt_principal in 'unt_principal.pas' {F_Principal},
  unt_sobre in 'unt_sobre.pas' {F_Sobre},
  unt_produtos in 'unt_produtos.pas' {F_ConsultaProdutos},
  unt_adicionarProdutos in 'unt_adicionarProdutos.pas' {F_AdicionarProdutos},
  unt_alterarProdutos in 'unt_alterarProdutos.pas' {F_AlterarProdutos},
  unt_dmBanco in 'unt_dmBanco.pas' {DM_Banco: TDataModule},
  unt_entradaProdutos in 'unt_entradaProdutos.pas' {F_EntradaProdutos},
  unt_saidaProdutos in 'unt_saidaProdutos.pas' {F_SaidaProdutos},
  unt_relatorioEstoqueSaldo in 'unt_relatorioEstoqueSaldo.pas' {Rel_EstoqueSaldo},
  unt_cadastrarSolicitantes in 'unt_cadastrarSolicitantes.pas' {F_CadastrarSolicitantes},
  unt_EntradaDeDatas in 'unt_EntradaDeDatas.pas' {Filtro_Entradas},
  unt_EntradaDeDatas2 in 'unt_EntradaDeDatas2.pas' {Filtro_Saidas},
  unt_relatorioEstoqueGeral in 'unt_relatorioEstoqueGeral.pas' {Rel_EstoqueGeral},
  unt_relatorioEntradaProdutos in 'unt_relatorioEntradaProdutos.pas' {Rel_EntradaProdutos},
  unt_relatorioSaidaProdutos in 'unt_relatorioSaidaProdutos.pas' {Rel_SaidaProdutos},
  unt_consultaEntradas in 'unt_consultaEntradas.pas' {F_ConsultaEntradas},
  unt_consultaSaidas in 'unt_consultaSaidas.pas' {F_ConsultaSaidas},
  unt_alterarSenha in 'unt_alterarSenha.pas' {F_AlterarSenha},
  unt_cadastrarUsuario in 'unt_cadastrarUsuario.pas' {F_CadastrarUsuario},
  unt_RelatorioGastosProdutos in 'unt_RelatorioGastosProdutos.pas' {Rel_GastosProdutos},
  unt_EntradadeDatas3 in 'unt_EntradadeDatas3.pas' {Filtro_Gastos},
  unt_cadastrarSetor in 'unt_cadastrarSetor.pas' {F_CadastroSetor},
  unt_selecionandoProduto in 'unt_selecionandoProduto.pas' {F_SelecionandoProduto},
  unt_consultaEstoque in 'unt_consultaEstoque.pas' {F_ConsultaEstoque},
  unt_FiltroSaldoSetor in 'unt_FiltroSaldoSetor.pas' {Filtro_Saldo};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Gerenciamento de Materiais - Versão 3.0';
  Application.CreateForm(TDM_Login, DM_Login);
  Application.CreateForm(TDM_Banco, DM_Banco);
  Application.CreateForm(TF_Splash, F_Splash);
  Application.Run;
end.
