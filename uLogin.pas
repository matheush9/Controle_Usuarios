unit uLogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Vcl.Mask,
  Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids;

type
  TfrmLogin = class(TForm)
    btn_confirmar: TButton;
    btn_sair: TButton;
    lb_login: TLabel;
    dbEdit_login: TDBEdit;
    DataSource1: TDataSource;
    lb_senha: TLabel;
    dbEdit_senha: TDBEdit;
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

uses uDmLogin, uPrincipal;

procedure TfrmLogin.btn_confirmarClick(Sender: TObject);
var
armazenaSenha: string;
armazenaLogin: string;
begin
  DmLogin.FDQuery1.Active;

  // Login
  armazenaLogin := dbEdit_login.Text;

  // Senha
  armazenaSenha := DmLogin.MD5(dbEdit_senha.text);

  // Autentica��o
  DmLogin.FDQuery1.SQL.Text := 'SELECT * FROM LOGIN WHERE LOGIN = :LOGIN AND SENHA = :SENHA';
  DmLogin.FDQuery1.ParamByName('LOGIN').AsString := armazenaLogin;
  DmLogin.FDQuery1.ParamByName('SENHA').AsString := armazenaSenha;
  DmLogin.FDQuery1.Open;

  //Esconder a quantidade de caracteres da senha
  dbEdit_senha.Text := EmptyStr;

  if DmLogin.FDQuery1.IsEmpty = false then
  begin
    ShowMessage('Autenticado com sucesso!');
    frmPrincipal.Enabled := true;
    frmLogin.Close;
  end

  else if DmLogin.FDQuery1.IsEmpty = true then
  begin
    ShowMessage('Login ou senha inv�lidos!');
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
  frmPrincipal.Enabled := false;
end;

end.
