unit unt_consultaSaidas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids, WinSkinData, ExtCtrls, Mask;

type
  TF_ConsultaSaidas = class(TForm)
    lbl_pesquisaRapida: TLabel;
    DBGrid1: TDBGrid;
    btn_Fechar: TBitBtn;
    SkinData1: TSkinData;
    painelCampos: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    mask_DataInicial: TMaskEdit;
    mask_DataFinal: TMaskEdit;
    edt_CodigoProduto: TEdit;
    edt_Solicitante: TEdit;
    btn_Filtrar: TBitBtn;
    radioGroup_Filtragem: TRadioGroup;
    procedure btn_FecharClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure radioGroup_FiltragemClick(Sender: TObject);
    procedure btn_FiltrarClick(Sender: TObject);
    procedure edt_SolicitanteKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_ConsultaSaidas: TF_ConsultaSaidas;

implementation

{$R *.dfm}
uses unt_dmBanco;

procedure TF_ConsultaSaidas.btn_FecharClick(Sender: TObject);
begin
    F_ConsultaSaidas.Close;
end;

procedure TF_ConsultaSaidas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    action := cafree;
end;

procedure TF_ConsultaSaidas.FormCreate(Sender: TObject);
begin
    DM_Banco.QueryConsultaSaida.Active := False;
    DM_Banco.QueryConsultaSaida.Active := True;
end;

procedure TF_ConsultaSaidas.radioGroup_FiltragemClick(Sender: TObject);
begin
    if (radioGroup_Filtragem.ItemIndex = 0) then
    begin
         mask_DataInicial.Enabled := False;
         mask_DataFinal.Enabled := False;
         edt_CodigoProduto.Enabled := True;
         edt_Solicitante.Enabled := False;

         btn_Filtrar.Enabled := True;

         mask_DataInicial.Color := clActiveBorder;
         mask_DataFinal.Color := clActiveBorder;
         edt_CodigoProduto.Color := clWindow;
         edt_Solicitante.Color := clActiveBorder;

         mask_DataInicial.Text := '';
         mask_DataFinal.Text := '';
         edt_CodigoProduto.Text := '';
         edt_Solicitante.Text := '';
         edt_CodigoProduto.SetFocus;
    end;

    if (radioGroup_Filtragem.ItemIndex = 1) then
    begin
         mask_DataInicial.Enabled := True;
         mask_DataFinal.Enabled := True;
         edt_CodigoProduto.Enabled := False;
         edt_Solicitante.Enabled := False;

         btn_Filtrar.Enabled := True;

         mask_DataInicial.Color := clWindow;
         mask_DataFinal.Color := clWindow;
         edt_CodigoProduto.Color := clActiveBorder;
         edt_Solicitante.Color := clActiveBorder;

         mask_DataInicial.Text := '';
         mask_DataFinal.Text := '';
         edt_CodigoProduto.Text := '';
         edt_Solicitante.Text := '';
         mask_DataInicial.SetFocus;
    end;
    if (radioGroup_Filtragem.ItemIndex = 2) then
    begin
         mask_DataInicial.Enabled := False;
         mask_DataFinal.Enabled := False;
         edt_CodigoProduto.Enabled := False;
         edt_Solicitante.Enabled := True;

         btn_Filtrar.Enabled := True;

         mask_DataInicial.Color := clActiveBorder;
         mask_DataFinal.Color := clActiveBorder;
         edt_CodigoProduto.Color := clActiveBorder;
         edt_Solicitante.Color := clWindow;

         mask_DataInicial.Text := '';
         mask_DataFinal.Text := '';
         edt_CodigoProduto.Text := '';
         edt_Solicitante.Text := '';
         edt_Solicitante.SetFocus;
    end;
end;

procedure TF_ConsultaSaidas.btn_FiltrarClick(Sender: TObject);
begin
     if (radioGroup_Filtragem.ItemIndex = 0) then
     begin
          with DM_Banco.QueryConsultaSaidaCodigo do
          begin
                DM_Banco.QueryConsultaSaidaCodigo.Close;
                if (edt_CodigoProduto.Text = '') then
                begin
                     MessageDlg('� necess�rio informar uma C�digo de Produto para realizar o filtro!',mtError,[mbOK],0);
                     DM_Banco.QueryConsultaSaida.Close;
                     F_ConsultaSaidas.DBGrid1.DataSource := DM_Banco.dsConsultaSaida;
                     DM_Banco.QueryConsultaSaida.Open;
                     Exit;
                end
                else
                     DM_Banco.QueryConsultaSaidaCodigo.Params.ParamByName('pCodigoProduto').Value := (edt_CodigoProduto.Text);
                     F_ConsultaSaidas.DBGrid1.DataSource := DM_Banco.dsConsultaSaidaCodigo;
                     DM_Banco.QueryConsultaSaidaCodigo.Open;
          end;
     end;

     if (radioGroup_Filtragem.ItemIndex = 1) then
     begin
          with DM_Banco.QueryConsultaSaidaPeriodo do
          begin
               DM_Banco.QueryConsultaSaidaPeriodo.Close;
               if (mask_DataInicial.Text = '  /  /    ') or (mask_DataFinal.Text = '  /  /    ') or (mask_DataInicial.Text = '  /  /    ') or (mask_DataFinal.Text = '  /  /    ') then
               begin
                    MessageDlg('� necess�rio informar uma Data Inicial e uma Data Final para realizar o filtro!',mtError,[mbOK],0);
                    DM_Banco.QueryConsultaSaida.Close;
                    F_ConsultaSaidas.DBGrid1.DataSource := DM_Banco.dsConsultaSaida;
                    DM_Banco.QueryConsultaSaida.Open;
                    Exit;
               end
               else
                   DM_Banco.QueryConsultaSaidaPeriodo.Params.ParamByName('pDataInicial').AsDate := StrToDateTime(mask_DataInicial.Text);
                   DM_Banco.QueryConsultaSaidaPeriodo.Params.ParamByName('pDataFinal').AsDate := StrToDateTime(mask_DataFinal.Text);
                   F_ConsultaSaidas.DBGrid1.DataSource := DM_Banco.dsConsultaSaidaPeriodo;
                   DM_Banco.QueryConsultaSaidaPeriodo.Open;
          end;
     end;

     if (radioGroup_Filtragem.ItemIndex = 2) then
     begin
          with DM_Banco.QueryConsultaSaidaSolicitante do
          begin
               DM_Banco.QueryConsultaSaidaSolicitante.Close;
               if (edt_Solicitante.Text = '')then
               begin
                    MessageDlg('� necess�rio informar o nome do solicitante para realizar o filtro!',mtError,[mbOK],0);
                    DM_Banco.QueryConsultaSaida.Close;
                    F_ConsultaSaidas.DBGrid1.DataSource := DM_Banco.dsConsultaSaida;
                    DM_Banco.QueryConsultaSaida.Open;
                    Exit;
               end
               else
                    Params.ParamByName('pSolicitante').AsInteger := StrToInt(edt_Solicitante.Text);
                    F_ConsultaSaidas.DBGrid1.DataSource := DM_Banco.dsConsultaSaidaSolicitante;
                    DM_Banco.QueryConsultaSaidaSolicitante.Open;
          end;
     end;




end;

procedure TF_ConsultaSaidas.edt_SolicitanteKeyPress(Sender: TObject;
  var Key: Char);
begin
     If not( key in['0'..'9',#08] ) then
        key:=#0;
end;

end.
