unit uLogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Vcl.Mask,
  Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, uControllerLogin;

type
  TfrmLogin = class(TForm)
    btn_confirmar: TButton;
    btn_sair: TButton;
    lb_login: TLabel;
    lb_senha: TLabel;
    edit_login: TEdit;
    edit_senha: TEdit;
    procedure btn_sairClick(Sender: TObject);
    procedure btn_confirmarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ControlarPermissao;
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    armazenaPermissao: string;
    armazenaLogin: string;
    procedure AbrirConexao;
    procedure FecharConexao;
  end;

var
  frmLogin: TfrmLogin;
  ControllerLogin: TControllerLogin;

implementation

{$R *.dfm}

uses uMain;

procedure TfrmLogin.AbrirConexao;
begin
  ControllerLogin.AbrirConexao;
end;

procedure TfrmLogin.FecharConexao;
begin
  ControllerLogin.FecharConexao;
end;

procedure TfrmLogin.ControlarPermissao;
var
  Permissao: integer;
begin
  // Controle de Permissões dos Usuários

  armazenaPermissao := ControllerLogin.LoginModel.Query
  .FieldByName('PERMISSAO').Value;
  armazenaLogin := ControllerLogin.LoginModel.Query
  .FieldByName('LOGIN').Value;

  frmMain.StatusBar1.Panels[0].Text := frmMain.StatusBar1.Panels[0]
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
        { Permissão Total };
      end;
    1:
      begin
        frmMain.MainMenu1.Items[0].Items[0].Enabled := false;
      end;

    2:
      begin
        frmMain.MainMenu1.Items[2].Enabled := false;
        frmMain.MainMenu1.Items[0].Items[1].Enabled := false;
      end;
  end;
end;

procedure TfrmLogin.btn_confirmarClick(Sender: TObject);
var
  armazenaSenha: string;
begin
  AbrirConexao;

    // Login
  armazenaLogin := edit_login.Text;

  // Senha
  armazenaSenha := ControllerLogin.LoginModel.MD5(edit_senha.Text);

  // Autenticação
  ControllerLogin.LoginModel.Query.SQL.Text :=
  'SELECT * FROM LOGIN WHERE LOGIN = :LOGIN AND SENHA = :SENHA';
  ControllerLogin.LoginModel.Query.ParamByName('LOGIN').AsString :=
  armazenaLogin;
  ControllerLogin.LoginModel.Query.ParamByName('SENHA').AsString :=
  armazenaSenha;
  ControllerLogin.LoginModel.Query.Open;

  if not ControllerLogin.LoginModel.Query.IsEmpty then
  begin
    ShowMessage('Autenticado com sucesso!');
    ControlarPermissao;
    frmLogin.Close;
  end

  else if ControllerLogin.LoginModel.Query.IsEmpty = true then
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
  FecharConexao;
  FreeAndNil(ControllerLogin);
  Action := cafree;
end;

procedure TfrmLogin.FormCreate(Sender: TObject);
begin
  ControllerLogin := TControllerLogin.Create;
end;

procedure TfrmLogin.FormDestroy(Sender: TObject);
begin
  frmLogin := nil;
end;

end.
