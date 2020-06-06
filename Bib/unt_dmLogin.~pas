unit unt_dmLogin;

interface

uses
  SysUtils, Classes, DB, DBTables;

type
  TDM_Login = class(TDataModule)
    dsLogin: TDataSource;
    tabAcesso: TTable;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM_Login: TDM_Login;

implementation

{$R *.dfm}

procedure TDM_Login.DataModuleCreate(Sender: TObject);
begin
    tabAcesso.Open;
end;

procedure TDM_Login.DataModuleDestroy(Sender: TObject);
begin
   tabAcesso.Close;
end;

end.
