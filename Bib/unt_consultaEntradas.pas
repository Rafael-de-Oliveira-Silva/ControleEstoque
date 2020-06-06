unit unt_consultaEntradas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, Buttons, WinSkinData, Mask, ExtCtrls;

type
  TF_ConsultaEntradas = class(TForm)
    DBGrid1: TDBGrid;
    btn_Fechar: TBitBtn;
    SkinData1: TSkinData;
    btn_Filtrar: TBitBtn;
    radioGroup_Filtragem: TRadioGroup;
    painelCampos: TPanel;
    mask_DataInicial: TMaskEdit;
    Label1: TLabel;
    Label2: TLabel;
    mask_DataFinal: TMaskEdit;
    Label3: TLabel;
    edt_CodigoProduto: TEdit;
    Label4: TLabel;
    edt_Requisicao: TEdit;
    SkinData2: TSkinData;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn_FecharClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btn_FiltrarClick(Sender: TObject);
    procedure radioGroup_FiltragemClick(Sender: TObject);
    procedure edt_RequisicaoKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_ConsultaEntradas: TF_ConsultaEntradas;

implementation

{$R *.dfm}
uses unt_dmBanco, DBTables;

procedure TF_ConsultaEntradas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    action := cafree;
end;

procedure TF_ConsultaEntradas.btn_FecharClick(Sender: TObject);
begin
   F_ConsultaEntradas.Close;
end;

procedure TF_ConsultaEntradas.FormCreate(Sender: TObject);
begin
    DM_Banco.QueryConsultaEntrada.Active := False;
    DM_Banco.QueryConsultaEntrada.Active := True;
end;

procedure TF_ConsultaEntradas.btn_FiltrarClick(Sender: TObject);
begin
     if (radioGroup_Filtragem.ItemIndex = 0) then
     begin
          with DM_Banco.QueryConsultaEntradaCodigo do
          begin
                DM_Banco.QueryConsultaEntradaCodigo.Close;
                if (edt_CodigoProduto.Text = '') then
                begin
                     MessageDlg('É necessário informar uma Código de Produto para realizar o filtro!',mtError,[mbOK],0);
                     DM_Banco.QueryConsultaEntrada.Close;
                     F_ConsultaEntradas.DBGrid1.DataSource := DM_Banco.dsConsultaEntrada;
                     DM_Banco.QueryConsultaEntrada.Open;
                     Exit;
                end
                else
                   DM_Banco.QueryConsultaEntradaCodigo.Params.ParamByName('pCodigoProduto').Value := (edt_CodigoProduto.Text);
                   F_ConsultaEntradas.DBGrid1.DataSource := DM_Banco.dsConsultaEntradaCodigo;
                   DM_Banco.QueryConsultaEntradaCodigo.Open;
          end;
     end;

     if (radioGroup_Filtragem.ItemIndex = 1) then
     begin
          with DM_Banco.QueryConsultaEntradaPeriodo do
          begin
               DM_Banco.QueryConsultaEntradaPeriodo.Close;
               if (mask_DataInicial.Text = '  /  /    ') or (mask_DataFinal.Text = '  /  /    ') or (mask_DataInicial.Text = '  /  /    ') or (mask_DataFinal.Text = '  /  /    ') then
                begin
                     MessageDlg('É necessário informar uma Data Inicial e uma Data Final para realizar o filtro!',mtError,[mbOK],0);
                     DM_Banco.QueryConsultaEntrada.Close;
                     F_ConsultaEntradas.DBGrid1.DataSource := DM_Banco.dsConsultaEntrada;
                     DM_Banco.QueryConsultaEntrada.Open;
                     Exit;
                end
                else
                    DM_Banco.QueryConsultaEntradaPeriodo.Params.ParamByName('pDataInicial').AsDate := StrToDateTime(mask_DataInicial.Text);
                    DM_Banco.QueryConsultaEntradaPeriodo.Params.ParamByName('pDataFinal').AsDate := StrToDateTime(mask_DataFinal.Text);
                    F_ConsultaEntradas.DBGrid1.DataSource := DM_Banco.dsConsultaEntradaPeriodo;
                    DM_Banco.QueryConsultaEntradaPeriodo.Open;
          end;
      end;

      if (radioGroup_Filtragem.ItemIndex = 2) then
      begin
            with DM_Banco.QueryConsultaEntradaRequisicao do
            begin
                 DM_Banco.QueryConsultaEntradaRequisicao.Close;
                 if (edt_Requisicao.Text = '') then
                begin
                     MessageDlg('É necessário informar o número da Requisição Interna para realizar o filtro!',mtError,[mbOK],0);
                     DM_Banco.QueryConsultaEntrada.Close;
                     F_ConsultaEntradas.DBGrid1.DataSource := DM_Banco.dsConsultaEntrada;
                     DM_Banco.QueryConsultaEntrada.Open;
                     Exit;
                end
                else
                    Params.ParamByName('pRequisicao').AsInteger := StrToInt(edt_Requisicao.Text);
                    F_ConsultaEntradas.DBGrid1.DataSource := DM_Banco.dsConsultaEntradaRequisicao;
                    DM_Banco.QueryConsultaEntradaRequisicao.Open;
            end;
      end;
end;

procedure TF_ConsultaEntradas.radioGroup_FiltragemClick(Sender: TObject);
begin
    if (radioGroup_Filtragem.ItemIndex = 0) then
    begin
         mask_DataInicial.Enabled := False;
         mask_DataFinal.Enabled := False;
         edt_CodigoProduto.Enabled := True;
         edt_Requisicao.Enabled := False;

         btn_Filtrar.Enabled := True;

         mask_DataInicial.Color := clActiveBorder;
         mask_DataFinal.Color := clActiveBorder;
         edt_CodigoProduto.Color := clWindow;
         edt_Requisicao.Color := clActiveBorder;


         mask_DataInicial.Text := '';
         mask_DataFinal.Text := '';
         edt_CodigoProduto.Text := '';
         edt_Requisicao.Text := '';
         edt_CodigoProduto.SetFocus;
    end;

    if (radioGroup_Filtragem.ItemIndex = 1) then
    begin
         mask_DataInicial.Enabled := True;
         mask_DataFinal.Enabled := True;
         edt_CodigoProduto.Enabled := False;
         edt_Requisicao.Enabled := False;

         btn_Filtrar.Enabled := True;

         mask_DataInicial.Color := clWindow;
         mask_DataFinal.Color := clWindow;
         edt_CodigoProduto.Color := clActiveBorder;
         edt_Requisicao.Color := clActiveBorder;

         mask_DataInicial.Text := '';
         mask_DataFinal.Text := '';
         edt_CodigoProduto.Text := '';
         edt_Requisicao.Text := '';
         mask_DataInicial.SetFocus;
    end;
    if (radioGroup_Filtragem.ItemIndex = 2) then
    begin
         mask_DataInicial.Enabled := False;
         mask_DataFinal.Enabled := False;
         edt_CodigoProduto.Enabled := False;
         edt_Requisicao.Enabled := True;

         btn_Filtrar.Enabled := True;

         mask_DataInicial.Color := clActiveBorder;
         mask_DataFinal.Color := clActiveBorder;
         edt_CodigoProduto.Color := clActiveBorder;
         edt_Requisicao.Color := clWindow;

         mask_DataInicial.Text := '';
         mask_DataFinal.Text := '';
         edt_CodigoProduto.Text := '';
         edt_Requisicao.Text := '';
         edt_Requisicao.SetFocus;
    end;
end;

procedure TF_ConsultaEntradas.edt_RequisicaoKeyPress(Sender: TObject;
  var Key: Char);
begin
    If not( key in['0'..'9',#08] ) then
        key:=#0;
end;

end.
