unit uControleLogin;

interface
uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uCrud, Data.DB, Datasnap.Provider,
  Datasnap.DBClient, Vcl.Menus, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids,
  Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Mask, uLogin,
  uControllerLogin, uController;

type
  TfrmControleLogin = class(TfrmCrud)
    lb_login: TLabel;
    dbEdit_login: TDBEdit;
    lb_senha: TLabel;
    lb_permissao: TLabel;
    DBCBPermissao: TDBComboBox;
    edit_senha: TEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure btn_gravarClick(Sender: TObject);
    procedure btn_incluirClick(Sender: TObject);
    procedure btn_consultarClick(Sender: TObject);
    procedure btn_cancelarClick(Sender: TObject);
  private
    { Private declarations }
    ControllerLogin: TControllerLogin;
    procedure AbrirConexao;
    procedure FecharConexao;
  public
    { Public declarations }
    procedure ControlarBTNeDEL;
    procedure CrudBarEnabled_Insert;
    procedure CrudBarEnabled_Read;
  end;

var
  frmControleLogin: TfrmControleLogin;

implementation

{$R *.dfm}

procedure TfrmControleLogin.AbrirConexao;
begin
  inherited;
end;

procedure TfrmControleLogin.FecharConexao;
begin
  inherited;
end;

procedure TfrmControleLogin.btn_cancelarClick(Sender: TObject);
begin
  inherited;
  edit_senha.visible := false;
  lb_senha.visible := false;
end;

procedure TfrmControleLogin.btn_consultarClick(Sender: TObject);
begin
  SQLText := 'SELECT * FROM LOGIN';
  inherited;
end;

procedure TfrmControleLogin.btn_gravarClick(Sender: TObject);
var SenhaCript: string;
begin
  inherited;

  ControllerLogin := TControllerLogin.Create;
  try
    SenhaCript := ControllerLogin.ToMD5(edit_senha.Text);
    ControllerLogin.ReceberSenhaCript(SenhaCript);
  finally
    FreeAndNil(ControllerLogin);
  end;

  edit_senha.visible := false;
  lb_senha.visible := false;
  edit_senha.Text := EmptyStr;
end;

procedure TfrmControleLogin.btn_incluirClick(Sender: TObject);
begin
  SQLText := 'SELECT * FROM LOGIN WHERE LOGIN_ID = 0';
  inherited;
  edit_senha.visible := true;
  lb_senha.visible := true;
end;

procedure TfrmControleLogin.ControlarBTNeDEL;
begin
  inherited;
end;

procedure TfrmControleLogin.CrudBarEnabled_Insert;
begin
  inherited;
end;

procedure TfrmControleLogin.CrudBarEnabled_Read;
begin
  inherited;
end;

procedure TfrmControleLogin.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := cafree;
end;

procedure TfrmControleLogin.FormDestroy(Sender: TObject);
begin
  frmControleLogin := nil;
end;

end.
