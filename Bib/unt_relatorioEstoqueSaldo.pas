unit unt_relatorioEstoqueSaldo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, QRCtrls, QuickRpt, ExtCtrls, jpeg;

type
  TRel_EstoqueSaldo = class(TForm)
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    PageFooterBand1: TQRBand;
    PageHeaderBand1: TQRBand;
    TitleBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRImage1: TQRImage;
    QRLabel5: TQRLabel;
    QRSysData3: TQRSysData;
    QRSysData4: TQRSysData;
    QRLabel9: TQRLabel;
    QRSysData1: TQRSysData;
    QRLabel14: TQRLabel;
    QRLabel16: TQRLabel;
    QRExpr2: TQRExpr;
    QRLabel8: TQRLabel;
    QRLabel10: TQRLabel;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRLabel6: TQRLabel;
    QRLabel11: TQRLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Rel_EstoqueSaldo: TRel_EstoqueSaldo;

implementation

uses unt_principal, unt_FiltroSaldoSetor, unt_dmBanco;

{$R *.dfm}

procedure TRel_EstoqueSaldo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    action := cafree;
end;

end.
