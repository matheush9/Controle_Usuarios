unit uLogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Vcl.Mask,
  Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids;

type
  TfrmLogin = class(TForm)
    lb_login: TLabel;
    dbEdit_login: TDBEdit;
    DataSource1: TDataSource;
    lb_senha: TLabel;
    dbEdit_senha: TDBEdit;
    btn_confirmar: TButton;
    btn_sair: TButton;
    procedure btn_sairClick(Sender: TObject);
    procedure btn_confirmarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLogin: TfrmLogin;

implementation

{$R *.dfm}

uses uDmLogin;

procedure TfrmLogin.btn_confirmarClick(Sender: TObject);
var
armazenaLogin: string;
armazenaSenha: string;
begin
  // Login
  armazenaLogin := dbEdit_login.Text;

  // Senha
  armazenaSenha := DmLogin.MD5(dbEdit_senha.text);

  // Autenticação

  DmLogin.FDQuery1.Active;
  DmLogin.FDQuery1.SQL.Text := 'SELECT * FROM LOGIN WHERE LOGIN = :LOGIN AND SENHA = :SENHA';
  DmLogin.FDQuery1.ParamByName('LOGIN').AsString := armazenaLogin;
  DmLogin.FDQuery1.ParamByName('SENHA').AsString := armazenaSenha;
  DmLogin.FDQuery1.Open;

  if DmLogin.FDQuery1.IsEmpty = false then
  begin
    ShowMessage('Autenticado com sucesso!');
    FreeAndNil(DmLogin);
    frmLogin.Close;
  end

  else if DmLogin.FDQuery1.IsEmpty = true then
  begin
    ShowMessage('Login ou senha inválidos!');
  end;
end;

procedure TfrmLogin.btn_sairClick(Sender: TObject);
begin
  Application.Terminate;
end;


procedure TfrmLogin.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmLogin.FormCreate(Sender: TObject);
begin
  DmLogin := TDmLogin.Create(Self);
end;

end.
