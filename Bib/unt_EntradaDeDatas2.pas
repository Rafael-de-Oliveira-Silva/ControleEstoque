unit unt_EntradaDeDatas2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, WinSkinData;

type
  TFiltro_Saidas = class(TForm)
    lblDataInicial: TLabel;
    MaskDataInicial: TMaskEdit;
    lblDataFinal: TLabel;
    MaskDataFinal: TMaskEdit;
    btnRelatorio: TBitBtn;
    btnLimpar: TBitBtn;
    btnSair: TBitBtn;
    SkinData1: TSkinData;
    cbSolicitantes: TComboBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnLimparClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure btnRelatorioClick(Sender: TObject);
    procedure MaskDataInicialExit(Sender: TObject);
    procedure MaskDataFinalExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Filtro_Saidas: TFiltro_Saidas;

implementation

{$R *.dfm}
uses unt_relatorioSaidaProdutos,
     unt_dmBanco;

procedure TFiltro_Saidas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    action := cafree;
end;

procedure TFiltro_Saidas.btnLimparClick(Sender: TObject);
begin
    MaskDataFinal.Text := '';
    MaskDataInicial.Text := '';
    MaskDataInicial.SetFocus;
end;

procedure TFiltro_Saidas.btnSairClick(Sender: TObject);
begin
   Filtro_Saidas.Close;
end;

procedure TFiltro_Saidas.btnRelatorioClick(Sender: TObject);
begin
    if (MaskDataInicial.Text > MaskDataFinal.Text) then
     begin
        MessageDlg('A data final deve ser maior que a data inicial !',mtError,[mbOK],0);
        Exit;
     end
     else
        Screen.Cursor := crSQLWait;
        Application.CreateForm(TRel_SaidaProdutos, Rel_SaidaProdutos);
        with DM_Banco.QueryRelatorioSaida do
        begin
           DM_Banco.QueryRelatorioSaida.Close;
           Params.ParamByName('pDataInicial').AsDate := StrToDateTime(MaskDataInicial.Text);
           Params.ParamByName('pDataFinal').AsDate := StrToDateTime(MaskDataFinal.Text);
           if (cbSolicitantes.ItemIndex = -1) then
               Params.ParamByName('pSolicitante').AsString :=('%')
           else
               Params.ParamByName('pSolicitante').AsString :=(cbSolicitantes.Text);

           DM_Banco.QueryRelatorioSaida.Open;
        end;
        Screen.Cursor := crDefault;
        Rel_SaidaProdutos.QRLabel10.Caption := (MaskDataInicial.Text);
        Rel_SaidaProdutos.QRLabel12.Caption := (MaskDataFinal.Text);
        Rel_SaidaProdutos.QuickRep1.Preview;
        MaskDataInicial.Text := '';
        MaskDataFinal.Text := '';
        cbSolicitantes.ItemIndex := -1;
        btnRelatorio.Enabled := False;
        btnSair.SetFocus;
end;

procedure TFiltro_Saidas.MaskDataInicialExit(Sender: TObject);
begin
    try
       strtodate(MaskDataInicial.Text);
    except
    on EConvertError do
       begin
          ShowMessage ('Data inválida ! Tente novamente.');
          MaskDataInicial.Text := '';
       end;
    end;
end;

procedure TFiltro_Saidas.MaskDataFinalExit(Sender: TObject);
begin
    try
       strtodate(MaskDataFinal.Text);
       btnRelatorio.Enabled := True;
       btnRelatorio.SetFocus;
    except
    on EConvertError do
       begin
          ShowMessage ('Data inválida ! Tente novamente.');
          MaskDataFinal.Text := '';
       end;
    end;
end;

procedure TFiltro_Saidas.FormCreate(Sender: TObject);
begin
    cbSolicitantes.ItemIndex := -1;
end;

end.
