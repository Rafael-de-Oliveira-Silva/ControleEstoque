unit unt_saidaProdutos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, WinSkinData;

type
  TF_SaidaProdutos = class(TForm)
    lbl_Codigo: TLabel;
    edt_codigoProduto: TEdit;
    lbl_Data: TLabel;
    mask_data: TMaskEdit;
    lbl_Quantidade: TLabel;
    edt_quantidade: TEdit;
    btn_Gravar: TBitBtn;
    btn_Sair: TBitBtn;
    lbl_Solicitado: TLabel;
    edt_Produto: TEdit;
    lbl_Produto: TLabel;
    comboSolicitadoPor: TComboBox;
    SkinData1: TSkinData;
    cbSetor: TComboBox;
    Label1: TLabel;
    btnPesquisar: TBitBtn;
    procedure btn_GravarClick(Sender: TObject);
    procedure btn_SairClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edt_solicitadoPorKeyPress(Sender: TObject; var Key: Char);
    procedure btnPesquisarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edt_quantidadeKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_SaidaProdutos: TF_SaidaProdutos;

implementation

{$R *.dfm}
uses unt_dmBanco,
     unt_login, unt_principal, unt_selecionandoProduto, unt_entradaProdutos;

procedure TF_SaidaProdutos.btn_GravarClick(Sender: TObject);
var
   QTD_SAINDO: Integer;
   ENTRADAS_ANTERIORES: Integer;
   TOTAL_SAIDA_ATUALIZADA: Integer;
   SAIDAS_ANTERIORES: Integer;
   SALDO_ANTERIOR: Integer;
   SALDO_FINAL: Integer;
   CONDICAO: String;
   NOMESOLICITANTE: String;
   CODSOLICITANTE: String;
   DESCSETORSELECIONADO: String;
   CODSETORSELECIONADO: String;
begin
        //=================VERIFICO SE OS CAMPOS EST�O EM BRANCO================
        if (edt_quantidade.Text = '') or (comboSolicitadoPor.Text = '') or (cbSetor.Text = '') then
         begin
                MessageDlg('� necess�rio o preenchimento de todos os campos!',mtError,[mbOK],0);
                Exit;
         end //==========FIM DA VERIFICA��O===============

         else
             //===============VERIFICO SE O CAMPO QUANTIDADE � V�LIDO===========
             if (edt_quantidade.Text = '0') or (edt_quantidade.Text < '0') then
             begin
                  MessageDlg('N�o ser� permitida uma entrada nula ou menor que zero!',mtError,[mbOK],0);
                  Exit;
             end//==========FIM DA VERIFICA��O DO CAMPO QUANTIDADE===============
             else
                With (DM_Banco.tabSetor) do
                begin //Abertura do 1� begin
                     DM_Banco.tabSetor.First;
                     if not (DM_Banco.tabSetor.IsEmpty) then
                     begin //Abertura do 3� begin
                          While not (DM_Banco.tabSetor.Eof) do
                          begin //Abertura do 4� begin
                               DESCSETORSELECIONADO := (FieldByName('Descricao').AsString);
                               if (DESCSETORSELECIONADO = cbSetor.Text) then
                               begin  //Abertura do 5� begin
                                    CODSETORSELECIONADO := (FieldByName('Id').AsString);
                                    Break;
                               end;  //Fechamento do 5� begin
                               Next
                          end //Fechamento do 4� begin
                     end //Fechamento do 3� begin
                 end;  //Fechamento do 1� begin

                 With (DM_Banco.tabSolicitante) do
                 begin //Abertura do 1� begin
                     DM_Banco.tabSolicitante.First;
                     if not (DM_Banco.tabSolicitante.IsEmpty) then
                     begin //Abertura do 3� begin
                          While not (DM_Banco.tabSolicitante.Eof) do
                          begin //Abertura do 4� begin
                               NOMESOLICITANTE := (FieldByName('Nome').AsString);
                               if (NOMESOLICITANTE = comboSolicitadoPor.Text) then
                               begin  //Abertura do 5� begin
                                    CODSOLICITANTE := (FieldByName('Codigo').AsString);
                                    Break;
                               end;  //Fechamento do 5� begin
                               Next
                          end //Fechamento do 4� begin
                     end //Fechamento do 3� begin
                 end;  //Fechamento do 1� begin

            if (DM_Banco.tabEstoque.FindKey([edt_codigoProduto.Text,CODSETORSELECIONADO])) then
            begin
                 ENTRADAS_ANTERIORES := StrToInt(DM_Banco.tabEstoque.FieldByName('Entrada').Value);//Recupero o total de ENTRADA da tabEstoque
                 QTD_SAINDO := StrtoInt(edt_quantidade.Text);//Repasso a quantidade de saida para a variavel
                 SAIDAS_ANTERIORES := StrtoInt(DM_Banco.tabEstoque.FieldByName('Saida').Value);//Recupero o total ENTRADA da tabEStoque
                 SALDO_ANTERIOR := StrtoInt(DM_Banco.tabEstoque.FieldByName('Saldo').Value);//Recupero o valor do campo Saldo de tabProduto
                 //Processamento

                 TOTAL_SAIDA_ATUALIZADA := SAIDAS_ANTERIORES + QTD_SAINDO;//Total de que j� tinha de saida + o valor informado
                 SALDO_FINAL := ENTRADAS_ANTERIORES - TOTAL_SAIDA_ATUALIZADA;

                 //ATUALIZO A tabEstoque
                 DM_Banco.tabEstoque.Edit;//Coloco a tabEstoque em modo de edi��o
                 DM_Banco.tabEstoque.FieldByName('Saida').AsString := IntToStr(TOTAL_SAIDA_ATUALIZADA);
                 DM_Banco.tabEstoque.FieldByName('Saldo').AsString := IntToStr(SALDO_FINAL);
                 DM_Banco.tabEstoque.Post;
        
                //Opero na tabela SAIDA.
                DM_Banco.tabSaida.Append;//Habilita tabSaida para uma nova entrada
                DM_Banco.tabSaida.FieldByName('Data').AsString := (mask_data.Text);//Gravo data no campo Data da tabEntrada
                DM_Banco.tabSaida.FieldByName('Quantidade').AsString := (edt_quantidade.Text);//Gravo a quantidade informada no campo Quantidade da tabEntrada
                DM_Banco.tabSaida.FieldByName('Cod_Produto').AsString := AnsiUpperCase(edt_codigoProduto.Text);//Gravo o c�digo do produto no campo Cod_Produto da tabEntrada
                DM_Banco.tabSaida.FieldByName('Solicitado_Por').AsString := (CODSOLICITANTE);
                DM_Banco.tabSaida.FieldByName('Operador_Saida').AsString := (F_Principal.LOGIN1);
                DM_Banco.tabSaida.FieldByName('Hora_Saida').AsString := (F_Principal.StatusBar1.Panels[1].Text);
                DM_Banco.tabSaida.FieldByName('Cod_Setor').AsString := (CODSETORSELECIONADO);
                DM_Banco.tabSaida.Post;//Atualizo a tabSaida

                Application.MessageBox('Saida realizada com sucesso!', 'Saida', MB_ICONINFORMATION + mb_Ok);
                F_SaidaProdutos.edt_quantidade.Text := '';
                F_SaidaProdutos.comboSolicitadoPor.Text := '';
                F_SaidaProdutos.cbSetor.Text := '';
            end
            else
               begin
                    MessageDlg('O item n�o est� cadastrado no estoque ou ainda n�o h� um hist�rico de entradas!',mtError,[mbOK],0);
                    Exit;
               end;
           
end;

procedure TF_SaidaProdutos.btn_SairClick(Sender: TObject);
begin
   F_SaidaProdutos.Close;
end;

procedure TF_SaidaProdutos.FormCreate(Sender: TObject);
begin
    mask_data.Text := DateToStr(date);

    //TRECHO QUE CARREGA TODOS OS SOLICITANTES CADASTRADOS QUE EST�O NA SITUA��O "ATIVO"
    With DM_Banco.tabSolicitante do
    begin
         DM_Banco.tabSolicitante.First;
         if not (DM_Banco.tabSolicitante.IsEmpty) then
         begin
              While not (DM_Banco.tabSolicitante.Eof) do
              begin
                   if (DM_Banco.tabSolicitante.FieldByName('Situacao').AsString = 'ATIVO') then
                      F_SaidaProdutos.comboSolicitadoPor.Items.Add(FieldByName('Nome').AsString);
                      Next;
              end;
         end;
    end;
    //FIM DO TRECHO DE C�DIGO QUE CARREGA TODOS OS SOLICITANTES

    //TRECHO DE C�DIGO QUE CARREGA TODOS OS SETORES CADASTRADOS
    With DM_Banco.tabSetor do
    begin
         DM_Banco.tabSetor.First;
         if not (DM_Banco.tabSetor.IsEmpty) then
         begin
              While not (DM_Banco.tabSetor.Eof) do
              begin
                      F_SaidaProdutos.cbSetor.Items.Add(FieldByName('Descricao').AsString);
                      Next;
              end;
         end;
    end;
    //FIM DO TRECHO DE C�DIGO QUE CARREGA TODOS OS SETORES
end;

procedure TF_SaidaProdutos.edt_solicitadoPorKeyPress(Sender: TObject;
  var Key: Char);
begin
    Key:= Upcase(Key);
end;

procedure TF_SaidaProdutos.btnPesquisarClick(Sender: TObject);
begin
     Application.CreateForm(TF_SelecionandoProduto, F_SelecionandoProduto);
     F_SelecionandoProduto.Show;
     F_SelecionandoProduto.OPERACAO := 1;
end;

procedure TF_SaidaProdutos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     action := cafree;
end;

procedure TF_SaidaProdutos.edt_quantidadeKeyPress(Sender: TObject;
  var Key: Char);
begin
    If not( key in['0'..'9',#08] ) then
        key:=#0;
end;

end.
