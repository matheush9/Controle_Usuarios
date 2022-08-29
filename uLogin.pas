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
  end;

var
  frmLogin: TfrmLogin;

implementation

{$R *.dfm}

uses uDmLogin, uMain;

procedure TfrmLogin.ControlarPermissao;
var
  Permissao: integer;
begin
  // Controle de Permissões dos Usuários

  armazenaPermissao := DmLogin.FDQuery1.FieldByName('PERMISSAO').Value;
  armazenaLogin := DmLogin.FDQuery1.FieldByName('LOGIN').Value;

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
        { Permissão completa };
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
  // Login
  armazenaLogin := edit_login.Text;

  // Senha
  armazenaSenha := DmLogin.MD5(edit_senha.Text);

  // Autenticação
  DmLogin.FDQuery1.SQL.Text := 'SELECT * FROM LOGIN WHERE LOGIN = :LOGIN AND SENHA = :SENHA';
  DmLogin.FDQuery1.ParamByName('LOGIN').AsString := armazenaLogin;
  DmLogin.FDQuery1.ParamByName('SENHA').AsString := armazenaSenha;
  DmLogin.FDQuery1.Open;

  if not DmLogin.FDQuery1.IsEmpty then
  begin
    ShowMessage('Autenticado com sucesso!');
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
  FreeAndNil(DmLogin);
  Action := cafree;
end;

procedure TfrmLogin.FormCreate(Sender: TObject);
begin
  DmLogin := TDmLogin.Create(Self);
  DmLogin.FDQuery1.Active := true;
end;

procedure TfrmLogin.FormDestroy(Sender: TObject);
begin
  frmLogin := nil;
end;

end.
