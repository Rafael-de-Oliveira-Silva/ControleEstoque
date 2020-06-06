unit unt_EntradadeDatas3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, unt_EntradaDeDatas, WinSkinData, StdCtrls, Mask, Buttons,
  ExtCtrls;

type
  TFiltro_Gastos = class(TFiltro_Entradas)
    procedure btnSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Filtro_Gastos: TFiltro_Gastos;

implementation

{$R *.dfm}
uses unt_dmBanco, unt_RelatorioGastosProdutos;

procedure TFiltro_Gastos.btnSairClick(Sender: TObject);
begin
   Filtro_Gastos.Close;
end;

procedure TFiltro_Gastos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   action := cafree;
end;

end.
