unit unt_EntradaDeDatas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, WinSkinData, ExtCtrls;

type
  TFiltro_Entradas = class(TForm)
    SkinData1: TSkinData;
    Panel1: TPanel;
    btnLimpar: TBitBtn;
    btnImprimir: TBitBtn;
    btnFechar: TBitBtn;
    Panel2: TPanel;
    comboSetor: TComboBox;
    Label1: TLabel;
    Panel3: TPanel;
    lblDataInicial: TLabel;
    MaskDataInicial: TMaskEdit;
    MaskDataFinal: TMaskEdit;
    lblDataFinal: TLabel;
    RG_TiposRelatorios: TRadioGroup;
    Panel4: TPanel;
    lblSolicitantes: TLabel;
    cbSolicitantes: TComboBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnFecharClick(Sender: TObject);
    procedure btnLimparClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure RG_TiposRelatoriosEnter(Sender: TObject);
    procedure RG_TiposRelatoriosClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Filtro_Entradas: TFiltro_Entradas;

implementation

{$R *.dfm}
USES unt_dmBanco,
     unt_relatorioEntradaProdutos,
     unt_RelatorioGastosProdutos,
     unt_relatorioEstoqueGeral,
     unt_relatorioSaidaProdutos,
     unt_relatorioEstoqueSaldo,
     unt_EntradaDeDatas2;

procedure TFiltro_Entradas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    action := cafree;
end;

procedure TFiltro_Entradas.btnFecharClick(Sender: TObject);
begin
   Filtro_Entradas.Close;
end;

procedure TFiltro_Entradas.btnLimparClick(Sender: TObject);
begin
    MaskDataFinal.Text := '';
    MaskDataInicial.Text := '';
    comboSetor.ItemIndex := -1;
    RG_TiposRelatorios.ItemIndex := -1;
    cbSolicitantes.ItemIndex := -1;
    btnImprimir.Enabled := False;
    MaskDataInicial.SetFocus;
end;

procedure TFiltro_Entradas.btnImprimirClick(Sender: TObject);
begin
     if (MaskDataInicial.Text > MaskDataFinal.Text) then
     begin
        MessageDlg('A data inicial deve ser maior que a data final !',mtError,[mbOK],0);
        Exit;
     end
     else
         Screen.Cursor := crSQLWait;
         if (RG_TiposRelatorios.ItemIndex = 0) then
         begin
              Application.CreateForm(TRel_EntradaProdutos, Rel_EntradaProdutos);
              with DM_Banco.QueryRelatorioEntrada do
              begin
                   DM_Banco.QueryRelatorioEntrada.Close;
                   Params.ParamByName('pDataInicial').AsDate := StrToDateTime(MaskDataInicial.Text);
                   Params.ParamByName('pDataFinal').AsDate := StrToDateTime(MaskDataFinal.Text);
                   Params.ParamByName('pNomeSetor').AsString := (comboSetor.Text);
                   DM_Banco.QueryRelatorioEntrada.Open;
              end;
              Rel_EntradaProdutos.QRLabel_Dt_Inicio.Caption := (MaskDataInicial.Text);
              Rel_EntradaProdutos.QRLabel_Dt_Final.Caption := (MaskDataFinal.Text);
              Rel_EntradaProdutos.QRLabel_Nome_do_Setor.Caption := (comboSetor.Text);
              Screen.Cursor := crDefault;
              Rel_EntradaProdutos.QuickRep_Rel_Entrada_Produtos.Preview;
         end;

         if (RG_TiposRelatorios.ItemIndex = 1) then
         begin
              Application.CreateForm(TRel_GastosProdutos, Rel_GastosProdutos);
              with DM_Banco.QueryRelatorioGastos do
              begin
                   DM_Banco.QueryRelatorioGastos.Close;
                   Params.ParamByName('pDataInicial').AsDate := StrToDateTime(MaskDataInicial.Text);
                   Params.ParamByName('pDataFinal').AsDate := StrToDateTime(MaskDataFinal.Text);
                   Params.ParamByName('pNomeSetor').AsString := (comboSetor.Text);
                   DM_Banco.QueryRelatorioGastos.Open;
              end;
              Rel_GastosProdutos.QRLabel_Dt_Inicio.Caption := (MaskDataInicial.Text);
              Rel_GastosProdutos.QRLabel_Dt_Final.Caption := (MaskDataFinal.Text);
              Rel_GastosProdutos.QRLabel_Nome_do_Setor.Caption := (comboSetor.Text);
              Screen.Cursor := crDefault;
              Rel_GastosProdutos.QuickRep_Gastos_Produtos.Preview;

         end;

         if (RG_TiposRelatorios.ItemIndex = 2) then
         begin
              Application.CreateForm(TRel_EstoqueGeral, Rel_EstoqueGeral);
              with DM_Banco.QueryRelatorioGeral do
              begin
                   DM_Banco.QueryRelatorioGeral.Close;
                   Params.ParamByName('pNomeSetor').AsString := (comboSetor.Text);
                   DM_Banco.QueryRelatorioGeral.Open;
              end;
              Rel_EstoqueGeral.QRLabel11.Caption := (comboSetor.Text);
              Screen.Cursor := crDefault;
              Rel_EstoqueGeral.QuickRep1.Preview;
         end;

         if (RG_TiposRelatorios.ItemIndex = 3) then
         begin
              Application.CreateForm(TRel_SaidaProdutos, Rel_SaidaProdutos);
              with DM_Banco.QueryRelatorioSaida do
              begin
                   DM_Banco.QueryRelatorioSaida.Close;
                   Params.ParamByName('pDataInicial').AsDate := StrToDateTime(MaskDataInicial.Text);
                   Params.ParamByName('pDataFinal').AsDate := StrToDateTime(MaskDataFinal.Text);
                   Params.ParamByName('pSetor').AsString := (comboSetor.Text);
                   if (cbSolicitantes.ItemIndex = -1) then
                       Params.ParamByName('pSolicitante').AsString :=('%')
                   else
                       Params.ParamByName('pSolicitante').AsString :=(cbSolicitantes.Text);
                       
                   DM_Banco.QueryRelatorioSaida.Open;
              end;
              Rel_SaidaProdutos.QRLabel10.Caption := (MaskDataInicial.Text);
              Rel_SaidaProdutos.QRLabel12.Caption := (MaskDataFinal.Text);
              Rel_SaidaProdutos.QRLabel17.Caption := (comboSetor.Text);
              Screen.Cursor := crDefault;
              Rel_SaidaProdutos.QuickRep1.Preview;
         end;

         if (RG_TiposRelatorios.ItemIndex = 4) then
         begin
             Application.CreateForm(TRel_EstoqueSaldo, Rel_EstoqueSaldo);
              with DM_Banco.QueryRelatorioSaldo do
              begin
                   DM_Banco.QueryRelatorioSaldo.Close;
                   Params.ParamByName('pNomeSetor').AsString := (comboSetor.Text);
                   DM_Banco.QueryRelatorioSaldo.Open;
              end;
              Rel_EstoqueSaldo.QRLabel11.Caption := (comboSetor.Text);
              Screen.Cursor := crDefault;
              Rel_EstoqueSaldo.QuickRep1.Preview;
         end;
end;

procedure TFiltro_Entradas.FormCreate(Sender: TObject);
begin
    //TRECHO QUE CARREGA TODOS OS SETORES CADASTRADO NO FORMULARIO F_EntradaProdutos
    With (DM_Banco.tabSetor) do
    begin
         DM_Banco.tabSetor.First;
         if not (DM_Banco.tabSetor.IsEmpty) then
         begin
              While not (DM_Banco.tabSetor.Eof) do
              begin
                   comboSetor.Items.Add(FieldByName('Descricao').AsString);
                   Next;
              end;
         end;
    end;
    //FIM DO TRECHO QUE CARREGA TODOS OS SETORES CADASTRADOS NO FORMULARIO

    //TRECHO QUE CARREGA TODOS OS SOLICITANTES ATIVOS QUE ESTAO CADASTRADO PARA O FORMULARIO F_EntradaProdutos
    With DM_Banco.tabSolicitante do
    begin
         DM_Banco.tabSolicitante.First;
         if not (DM_Banco.tabSolicitante.IsEmpty) then
         begin
              While not (DM_Banco.tabSolicitante.Eof) do
              begin
                   cbSolicitantes.Items.Add(FieldByName('Nome').AsString);
                   Next;
              end;
         end;
    end;

end;

procedure TFiltro_Entradas.RG_TiposRelatoriosEnter(Sender: TObject);
begin
     Filtro_Entradas.btnImprimir.Enabled := True;
end;

procedure TFiltro_Entradas.RG_TiposRelatoriosClick(Sender: TObject);
begin
    if (RG_TiposRelatorios.ItemIndex = 0) then
    begin
         MaskDataInicial.Enabled := True;
         MaskDataFinal.Enabled := True;
         comboSetor.Enabled := True;
         cbSolicitantes.Enabled := False;
    end;

    if (RG_TiposRelatorios.ItemIndex = 1) then
    begin
         MaskDataInicial.Enabled := True;
         MaskDataFinal.Enabled := True;
         comboSetor.Enabled := True;
         cbSolicitantes.Enabled := False;
    end;

    if (RG_TiposRelatorios.ItemIndex = 2) then
    begin
         MaskDataInicial.Enabled := False;
         MaskDataFinal.Enabled := False;
         comboSetor.Enabled := True;
         cbSolicitantes.Enabled := False;
    end;

    if (RG_TiposRelatorios.ItemIndex = 3) then
    begin
         MaskDataInicial.Enabled := True;
         MaskDataFinal.Enabled := True;
         comboSetor.Enabled := True;
         cbSolicitantes.Enabled := True;
    end;

    if (RG_TiposRelatorios.ItemIndex = 4) then
    begin
         MaskDataInicial.Enabled := False;
         MaskDataFinal.Enabled := False;
         comboSetor.Enabled := True;
         cbSolicitantes.Enabled := False;
    end;
end;

end.
