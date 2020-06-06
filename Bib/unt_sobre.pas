unit unt_sobre;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls,
  Buttons, ExtCtrls, jpeg, WinSkinData;

type
  TF_Sobre = class(TForm)
    Panel1: TPanel;
    ProgramIcon: TImage;
    ProductName: TLabel;
    Version: TLabel;
    Copyright: TLabel;
    Comments: TLabel;
    lblEmail: TLabel;
    butOK: TBitBtn;
    SkinData1: TSkinData;
    procedure butOKClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_Sobre: TF_Sobre;

implementation

{$R *.dfm}

procedure TF_Sobre.butOKClick(Sender: TObject);
begin
    close;
end;

end.
 
