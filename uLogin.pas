unit uLogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
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
    procedure ControlarPermissao;
  private
    { Private declarations }
  public
    { Public declarations }
    armazenaPermissao: string;
    armazenaLogin: string;
  end;

var
  frmLogin: TfrmLogin;

implementation

{$R *.dfm}

uses uDmLogin, uPrincipal;

procedure TfrmLogin.ControlarPermissao;
var
  Permissao: integer;
begin
  // Controle de Permissões dos Usuários

  armazenaPermissao := DmLogin.FDQuery1.FieldByName('PERMISSAO').Value;
  armazenaLogin := DmLogin.FDQuery1.FieldByName('LOGIN').Value;

  frmPrincipal.StatusBar1.Panels[0].Text := frmPrincipal.StatusBar1.Panels[0]
    .Text + ' ' + armazenaLogin;

  if armazenaPermissao = 'ADM' then
  begin
    Permissao := 0
  end

  else if armazenaPermissao = 'NIVEL1' then
  begin
    Permissao := 1;
  end

  else if armazenaPermissao = 'NIVEL2' then
  begin
    Permissao := 2;
  end;

  case Permissao of
    0:
      begin
        { Permissão completa };
      end;
    1:
      begin
        frmPrincipal.MainMenu1.Items[0].Items[0].Enabled := false;
      end;

    2:
      begin
        frmPrincipal.MainMenu1.Items[2].Enabled := false;
        frmPrincipal.MainMenu1.Items[0].Items[1].Enabled := false;
      end;
  end;
end;

procedure TfrmLogin.btn_confirmarClick(Sender: TObject);
var
  armazenaSenha: string;
begin
  // Login
  armazenaLogin := dbEdit_login.Text;

  // Senha
  armazenaSenha := DmLogin.MD5(dbEdit_senha.Text);

  // Autenticação
  DmLogin.FDQuery1.SQL.Text := 'SELECT * FROM LOGIN WHERE LOGIN = :LOGIN AND SENHA = :SENHA';
  DmLogin.FDQuery1.ParamByName('LOGIN').AsString := armazenaLogin;
  DmLogin.FDQuery1.ParamByName('SENHA').AsString := armazenaSenha;
  DmLogin.FDQuery1.Open;

  // Esconder a quantidade de caracteres da senha
  dbEdit_senha.Text := EmptyStr;

  if DmLogin.FDQuery1.IsEmpty = false then
  begin
    ShowMessage('Autenticado com sucesso!');
    frmPrincipal.Enabled := true;
    ControlarPermissao;
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
  Action := cafree;
  FreeAndNil(DmLogin);
end;

procedure TfrmLogin.FormCreate(Sender: TObject);
begin
  frmPrincipal.Enabled := false;
  DmLogin := TDmLogin.Create(Self);
  DmLogin.FDQuery1.Active := true;
end;

end.
