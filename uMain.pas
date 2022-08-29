unit uMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.ComCtrls,
  Datasnap.Provider, Datasnap.DBClient;

type
  TFrmMain = class(TForm)
    MainMenu1: TMainMenu;
    Cadastro1: TMenuItem;
    CadastrodeParceiros: TMenuItem;
    CadastrodeUsuarios: TMenuItem;
    Sistema1: TMenuItem;
    ContasUsuarios: TMenuItem;
    Ajuda1: TMenuItem;
    Sobre1: TMenuItem;
    StatusBar1: TStatusBar;
    procedure CadastrodeParceirosClick(Sender: TObject);
    procedure CadastrodeUsuariosClick(Sender: TObject);
    procedure ContasUsuariosClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMain: TFrmMain;

implementation

{$R *.dfm}

uses
  uLogin, uDmLogin,
  uControleParceiros, uControleUsuarios, uDmUsuarios, uControleLogin;

procedure TFrmMain.CadastrodeParceirosClick(Sender: TObject);
begin
  if frmControleParceiros = nil then
  begin
    frmControleParceiros := TfrmControleParceiros.Create(Self);
    frmControleParceiros.Show;
  end;
end;

procedure TFrmMain.CadastrodeUsuariosClick(Sender: TObject);
begin
  if frmControleUsuarios = nil then
  begin
    frmControleUsuarios := TfrmControleUsuarios.Create(Self);
    frmControleUsuarios.Show;
  end;
end;

procedure TFrmMain.ContasUsuariosClick(Sender: TObject);
begin
  if frmControleLogin = nil then
  begin
    frmControleLogin := TfrmControleLogin.Create(Self);
    frmControleLogin.Show;
  end;
end;

procedure TFrmMain.FormCreate(Sender: TObject);
begin
  frmLogin := TfrmLogin.Create(Self);
  frmLogin.ShowModal;
end;

end.
