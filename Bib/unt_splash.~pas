unit unt_splash;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, ComCtrls, WinSkinData, jpeg;

type
  TF_Splash = class(TForm)
    Timer1: TTimer;
    ProgressBar1: TProgressBar;
    lblTexto: TLabel;
    SkinData1: TSkinData;
    Image1: TImage;
    lblProgresso: TLabel;
    Label2: TLabel;
    procedure Timer1Timer(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_Splash: TF_Splash;

implementation

uses unt_login;

{$R *.dfm}  

procedure TF_Splash.Timer1Timer(Sender: TObject);
begin
   Progressbar1.Position := progressbar1.Position + 1;
   lblProgresso.Caption := 'Carregando ' + inttostr (progressbar1.Position+1)+ '%';
   if progressbar1.Position = 100 then
   begin
      Application.CreateForm(TF_Login, F_Login);
      F_Splash.Destroy;
      F_Login.Show;
      F_Login.dbLogin.SetFocus;
   end;
end;

procedure TF_Splash.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    action := cafree;
end;

end.
