unit uMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.ComCtrls,
  Datasnap.Provider, Datasnap.DBClient, uCrud;

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
    function NewFrmCadastro(FrmName: String; Frm: TFrmCrud): TfrmCrud;
  end;

var
  FrmMain: TFrmMain;

  FrmParceiros,
  FrmControleLogin,
  FrmUsuarios: TfrmCrud;

  FrmLogin: TForm;

implementation

{$R *.dfm}

uses
 View.Factory;


function TFrmMain.NewFrmCadastro(FrmName: String; Frm: TFrmCrud): TfrmCrud;
var
  FormCreator: TViewFactory;
begin
  if not Assigned(Frm) then
  begin
    FormCreator := TViewFactory.Create;
    Result := FormCreator.CriaFrmCadastro(FrmName);
    Result.Show
  end
  else
    Frm.Show;
end;

procedure TFrmMain.CadastrodeParceirosClick(Sender: TObject);
begin
  FrmParceiros := NewFrmCadastro('Parceiros', FrmParceiros);
end;

procedure TFrmMain.CadastrodeUsuariosClick(Sender: TObject);
begin
  FrmUsuarios := NewFrmCadastro('Usuarios', FrmUsuarios);
end;

procedure TFrmMain.ContasUsuariosClick(Sender: TObject);
begin
  FrmControleLogin := NewFrmCadastro('Login', FrmControleLogin);
end;

procedure TFrmMain.FormCreate(Sender: TObject);
var
  FormCreator: TViewFactory;
begin
  FrmLogin := FormCreator.CriaFrmLogin;
  FrmLogin.ShowModal;
end;

end.
