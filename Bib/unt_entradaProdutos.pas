unit unt_entradaProdutos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Mask, StdCtrls, Buttons, WinSkinData;

type
  TF_EntradaProdutos = class(TForm)
    lbl_Codigo: TLabel;
    lbl_Data: TLabel;
    lbl_Preco: TLabel;
    lbl_Quantidade: TLabel;
    edt_codigoProduto: TEdit;
    mask_data: TMaskEdit;
    mask_preco: TMaskEdit;
    edt_quantidade: TEdit;
    btn_Gravar: TBitBtn;
    btn_Sair: TBitBtn;
    edt_Produto: TEdit;
    Label1: TLabel;
    edt_requisicao: TEdit;
    lbl_requisicao: TLabel;
    SkinData1: TSkinData;
    Label2: TLabel;
    cbSetor: TComboBox;
    btnPesquisar: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn_GravarClick(Sender: TObject);
    procedure btn_SairClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
    procedure edt_quantidadeKeyPress(Sender: TObject; var Key: Char);
    procedure edt_requisicaoKeyPress(Sender: TObject; var Key: Char);
    procedure mask_precoKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_EntradaProdutos: TF_EntradaProdutos;

implementation

{$R *.dfm}
uses unt_dmBanco, unt_principal, unt_saidaProdutos, unt_selecionandoProduto,
  DB;

procedure TF_EntradaProdutos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   action := cafree;
end;

procedure TF_EntradaProdutos.btn_GravarClick(Sender: TObject);
var
   QTD_ENTRADA: Integer;
   ENTRADAS_ANTERIORES: Integer;
   TOTAL_ENTRADA_ATUALIZADA: Integer;
   SAIDAS_ANTERIORES: Integer;
   SALDO_FINAL: Integer;
   CONDICAO: String;
   CODSETORSELECIONADO: String;
   DESCSETORSELECIONADO: String;

begin
      //==============VERIFICO SE OS CAMPOS ESTÃO EM BRANCO
      if (edt_codigoProduto.Text = '') or (edt_Produto.Text = '') or (mask_preco.Text = '') or (edt_quantidade.Text = '') or (edt_requisicao.Text = '') or (cbSetor.Text = '')then
      begin
          MessageDlg('É necessário o preenchimento de todos os campos!',mtError,[mbOK],0);
          Exit;
      end  //==============FIM DA VERIFICAÇÃO

      else
          if (edt_quantidade.Text = '0') or (edt_quantidade.Text < '0') then
          begin
                MessageDlg('Não será permitida uma entrada nula ou menor que zero!',mtError,[mbOK],0);
                Exit;
          end //==============FIM DA VERIFICAÇÃO
          else
              With (DM_Banco.tabSetor) do
              begin //Abertura do 1º begin
                     DM_Banco.tabSetor.First;
                     if not (DM_Banco.tabSetor.IsEmpty) then
                     begin //Abertura do 3º begin
                          While not (DM_Banco.tabSetor.Eof) do
                          begin //Abertura do 4º begin
                               DESCSETORSELECIONADO := (FieldByName('Descricao').AsString);
                               if (DESCSETORSELECIONADO = cbSetor.Text) then
                               begin  //Abertura do 5º begin
                                    CODSETORSELECIONADO := (FieldByName('Id').AsString);
                                    Break;
                               end;  //Fechamento do 5º begin
                               Next
                          end //Fechamento do 4º begin
                     end //Fechamento do 3º begin
                 end;  //Fechamento do 1º begin


        //Se já houver um registro na tabela ESTOQUE então é necessário apenas atualizar o registro.
        //E acrescentar um novo registro na tabela ENTRADA.
        if (DM_Banco.tabEstoque.FindKey([edt_codigoProduto.Text,CODSETORSELECIONADO])) then
        begin
             ENTRADAS_ANTERIORES := StrToInt(DM_Banco.tabEstoque.FieldByName('Entrada').Value); //Recupero o valor do campo Entrada
             QTD_ENTRADA := StrToInt(edt_quantidade.Text);//Repasso a quantidade informada no formulário
             SAIDAS_ANTERIORES := StrToInt(DM_Banco.tabEstoque.FieldByName('Saida').Value);

             //Processamento do saldo
             TOTAL_ENTRADA_ATUALIZADA := ENTRADAS_ANTERIORES + QTD_ENTRADA;
             SALDO_FINAL := TOTAL_ENTRADA_ATUALIZADA - SAIDAS_ANTERIORES;

             //Atualizo a tabela ESTOQUE
             DM_Banco.tabEstoque.Edit; //Coloca tabEstoque em modo edição
             DM_Banco.tabEstoque.FieldByName('Saldo').AsString := IntToStr(SALDO_FINAL);
             DM_Banco.tabEstoque.FieldByName('Entrada').AsString := IntToStr(TOTAL_ENTRADA_ATUALIZADA);
             DM_Banco.tabEstoque.Post;//Atualizo a entrada dos dados na tabEstoque

             //Inserir um registro na tabela ENTRADA
             DM_Banco.tabEntrada.Append;//Habilita tabEntrada para uma nova entrada
             DM_Banco.tabEntrada.FieldByName('Data').AsString := (mask_data.Text);//Gravo data no campo Data da tabEntrada
             DM_Banco.tabEntrada.FieldByName('Preco').AsString := (mask_preco.Text);//Gravo o preço no campo Preço da tabEntrada
             DM_Banco.tabEntrada.FieldByName('Quantidade').AsString := (edt_quantidade.Text);//Gravo a quantidade informada no campo Quantidade da tabEntrada
             DM_Banco.tabEntrada.FieldByName('Cod_Produto').AsString := AnsiUpperCase(edt_codigoProduto.Text);//Gravo o código do produto no campo Cod_Produto da tabEntrada
             DM_Banco.tabEntrada.FieldByName('Req_Interna').AsString := (edt_requisicao.Text);//Gravo o número da requisição interna no campo Req_Interna da tabEntrada
             DM_Banco.tabEntrada.FieldByName('Operador_Entrada').AsString := (F_Principal.LOGIN1);
             DM_Banco.tabEntrada.FieldByName('Hora_Entrada').AsString := (F_Principal.StatusBar1.Panels[1].Text);
             DM_Banco.tabEntrada.FieldByName('Cod_Setor').AsString := (CODSETORSELECIONADO);
             DM_Banco.tabEntrada.Post;//Atualizo a tabEntrada
             Application.MessageBox('Entrada Realizada com Sucesso!', 'Entrada', MB_ICONINFORMATION + mb_Ok);
             F_EntradaProdutos.mask_preco.Text := '';
             F_EntradaProdutos.edt_quantidade.Text := '';
             F_EntradaProdutos.edt_requisicao.Text := '';
             F_EntradaProdutos.cbSetor.Text := '';
          end
          else
             //Se não houver o registro na tabela ESTOQUE então é necessário criar-lo na tabela
             //ENTRADA e ESTOQUE.
             begin
             //Opero na tabela ESTOQUE
             DM_Banco.tabEstoque.Append; //Habilita tabEstoque para uma nova entrada
             DM_Banco.tabEstoque.FieldByName('Cod_Produto').AsString := AnsiUpperCase(edt_codigoProduto.Text);
             DM_Banco.tabEstoque.FieldByName('Id_Setor').AsString := (CODSETORSELECIONADO);
             DM_Banco.tabEstoque.FieldByName('Entrada').AsString := (edt_quantidade.Text);
             DM_Banco.tabEstoque.FieldByName('Saida').AsString := ('0');
             DM_Banco.tabEstoque.FieldByName('Saldo').AsString := (edt_quantidade.Text);
             DM_Banco.tabEstoque.Post;//Atualizo a entrada dos dados na tabEstoque

             //Opero na tabela ENTRADA.
             DM_Banco.tabEntrada.Append;//Habilita tabEntrada para uma nova entrada
             DM_Banco.tabEntrada.FieldByName('Data').AsString := (mask_data.Text);//Gravo data no campo Data da tabEntrada
             DM_Banco.tabEntrada.FieldByName('Preco').AsString := (mask_preco.Text);//Gravo o preço no campo Preço da tabEntrada
             DM_Banco.tabEntrada.FieldByName('Quantidade').AsString := (edt_quantidade.Text);//Gravo a quantidade informada no campo Quantidade da tabEntrada
             DM_Banco.tabEntrada.FieldByName('Cod_Produto').AsString := AnsiUpperCase(edt_codigoProduto.Text);//Gravo o código do produto no campo Cod_Produto da tabEntrada
             DM_Banco.tabEntrada.FieldByName('Req_Interna').AsString := (edt_requisicao.Text);//Gravo o número da requisição interna no campo Req_Interna da tabEntrada
             DM_Banco.tabEntrada.FieldByName('Operador_Entrada').AsString := (F_Principal.LOGIN1);
             DM_Banco.tabEntrada.FieldByName('Hora_Entrada').AsString := (F_Principal.StatusBar1.Panels[1].Text);
             DM_Banco.tabEntrada.FieldByName('Cod_Setor').AsString := (CODSETORSELECIONADO);
             DM_Banco.tabEntrada.Post;//Atualizo a tabEntrada

             Application.MessageBox('Entrada Realizada com Sucesso!', 'Entrada', MB_ICONINFORMATION + mb_Ok);
             F_EntradaProdutos.mask_preco.Text := '';
             F_EntradaProdutos.edt_quantidade.Text := '';
             F_EntradaProdutos.edt_requisicao.Text := '';
             F_EntradaProdutos.cbSetor.Text := '';
             end;
end;

procedure TF_EntradaProdutos.btn_SairClick(Sender: TObject);
begin
   F_EntradaProdutos.Close;
end;

procedure TF_EntradaProdutos.FormCreate(Sender: TObject);
begin
    DM_Banco.tabProduto.Edit;
    mask_data.Text := DateToStr(date);

    //TRECHO QUE CARREGA TODOS OS SETORES CADASTRADO NO FORMULARIO F_EntradaProdutos
    With (DM_Banco.tabSetor) do
    begin
         DM_Banco.tabSetor.First;
         if not (DM_Banco.tabSetor.IsEmpty) then
         begin
              While not (DM_Banco.tabSetor.Eof) do
              begin
                   F_EntradaProdutos.cbSetor.Items.Add(FieldByName('Descricao').AsString);
                   Next;
              end;
         end;
    end;
    //FIM DO TRECHO QUE CARREGA TODOS OS SETORES CADASTRADOS NO FORMULARIO
end;

procedure TF_EntradaProdutos.btnPesquisarClick(Sender: TObject);
begin
    Application.CreateForm(TF_SelecionandoProduto, F_SelecionandoProduto);
    F_SelecionandoProduto.Show;
    F_SelecionandoProduto.OPERACAO := 0;
end;

procedure TF_EntradaProdutos.edt_quantidadeKeyPress(Sender: TObject;
  var Key: Char);
begin
     If not( key in['0'..'9',#08] ) then
        key:=#0;
end;

procedure TF_EntradaProdutos.edt_requisicaoKeyPress(Sender: TObject;
  var Key: Char);
begin
      If not( key in['0'..'9',#08] ) then
        key:=#0;
end;

procedure TF_EntradaProdutos.mask_precoKeyPress(Sender: TObject;
  var Key: Char);
begin
    If not( key in['0'..'9',',',#08] ) then
        key:=#0;
end;

end.
