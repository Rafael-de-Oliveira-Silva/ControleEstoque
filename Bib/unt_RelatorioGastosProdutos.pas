unit unt_RelatorioGastosProdutos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, QuickRpt, QRCtrls, ExtCtrls;

type
  TRel_GastosProdutos = class(TForm)
    QuickRep_Gastos_Produtos: TQuickRep;
    DetailBand1: TQRBand;
    PageFooterBand1: TQRBand;
    PageHeaderBand1: TQRBand;
    TitleBand1: TQRBand;
    QRImage1: TQRImage;
    QRLabel15: TQRLabel;
    QRSysData3: TQRSysData;
    QRSysData1: TQRSysData;
    QRLabel10: TQRLabel;
    QRSysData4: TQRSysData;
    QRLabel9: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel_Dt_Inicio: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel_Dt_Final: TQRLabel;
    QRLabel16: TQRLabel;
    QRExpr2: TQRExpr;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRLabel6: TQRLabel;
    QRLabel_Nome_do_Setor: TQRLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Rel_GastosProdutos: TRel_GastosProdutos;

implementation

{$R *.dfm}
uses unt_dmBanco;

procedure TRel_GastosProdutos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   action := cafree;
end;

end.
