unit unt_relatorioEstoqueGeral;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, unt_relatorioEstoqueSaldo, DB, DBTables, jpeg, QRCtrls,
  QuickRpt, ExtCtrls;

type
  TRel_EstoqueGeral = class(TRel_EstoqueSaldo)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Rel_EstoqueGeral: TRel_EstoqueGeral;

implementation

{$R *.dfm}
uses
  unt_dmBanco;

end.
