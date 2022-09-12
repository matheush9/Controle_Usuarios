unit uControleLogin;

interface
uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uCrud, Data.DB, Datasnap.Provider,
  Datasnap.DBClient, Vcl.Menus, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids,
  Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Mask, uLogin,
  uControllerLogin;

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
    procedure FormCreate(Sender: TObject);
    procedure btn_consultarClick(Sender: TObject);
    procedure btn_avançarClick(Sender: TObject);
    procedure btn_voltarClick(Sender: TObject);
    procedure btn_editarClick(Sender: TObject);
    procedure btn_excluirClick(Sender: TObject);
    procedure btn_gravarClick(Sender: TObject);
    procedure btn_cancelarClick(Sender: TObject);
    procedure btn_incluirClick(Sender: TObject);
  private
    { Private declarations }
    procedure AbrirConexao;
    procedure FecharConexao;
  public
    { Public declarations }

    procedure ControlarBTNeDEL;
    procedure CrudBarEnabled_Insert;
    procedure CrudBarEnabled_Read;
  end;

var
  ControllerLogin: TControllerLogin;
  frmControleLogin: TfrmControleLogin;

implementation

{$R *.dfm}

procedure TfrmControleLogin.AbrirConexao;
begin
  ControllerLogin.AbrirConexao;
  DataSourceCRUD.DataSet := ControllerLogin.LoginModel.Query;
end;

procedure TfrmControleLogin.FecharConexao;
begin
  ControllerLogin.FecharConexao;
end;

procedure TfrmControleLogin.btn_avançarClick(Sender: TObject);
begin
  ControllerLogin.Avançar;
  ControlarBTNeDEL;
end;

procedure TfrmControleLogin.btn_cancelarClick(Sender: TObject);
begin
  AbrirConexao;

  Application.MessageBox
    ('Você realmente deseja cancelar a alteração esse registro?', 'Cancelar',
    MB_YESNO);

  ControllerLogin.Cancelar;

  edit_senha.visible := false;
  lb_senha.visible := false;
  CrudBarEnabled_Read;
  ControlarBTNeDEL;
end;

procedure TfrmControleLogin.btn_consultarClick(Sender: TObject);
begin
  AbrirConexao;

  ControllerLogin.Consultar;

  ControlarBTNeDEL;
end;

procedure TfrmControleLogin.btn_editarClick(Sender: TObject);
begin
  if (ControllerLogin.LoginModel.Query = nil) or
  (ControllerLogin.LoginModel.Query.IsEmpty = true) then
  begin
    Application.Title := 'Aviso!';
    ShowMessage('Não há registro para ser editado');
    abort;
  end;

  TabSheet1.Show;

  ControllerLogin.Editar;

  CrudBarEnabled_Insert;
end;

procedure TfrmControleLogin.btn_excluirClick(Sender: TObject);
begin
var
  Res: Integer;
begin
  AbrirConexao;

  Res := Application.MessageBox('Você realmente deseja excluir esse registro?',
    'Exclusão de registro', MB_YESNO);
  if Res = IDYES then
  begin
    ControllerLogin.Excluir;
  end;
end;
end;

procedure TfrmControleLogin.btn_gravarClick(Sender: TObject);
var SenhaCript: string;
begin
  AbrirConexao;

  SenhaCript := ControllerLogin.LoginModel.MD5(edit_senha.Text);
  ControllerLogin
  .LoginModel
  .Query
  .FieldByName('SENHA')
  .Value := SenhaCript;

  ControllerLogin.Gravar;

  Application.Title := 'Aviso!';
  ShowMessage('Registro Gravado com sucesso!');

  edit_senha.visible := false;
  lb_senha.visible := false;
  edit_senha.Text := EmptyStr;

  CrudBarEnabled_Read;

  FecharConexao;
end;

procedure TfrmControleLogin.btn_incluirClick(Sender: TObject);
begin
  TabSheet1.Show;

  AbrirConexao;

  ControllerLogin.Incluir;

  edit_senha.visible := true;
  lb_senha.visible := true;
  CrudBarEnabled_Insert;
end;

procedure TfrmControleLogin.btn_voltarClick(Sender: TObject);
begin
  ControllerLogin.Voltar;
  ControlarBTNeDEL;
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
  FecharConexao;
  FreeAndNil(ControllerLogin);
  Action := cafree;
end;

procedure TfrmControleLogin.FormCreate(Sender: TObject);
begin
  ControllerLogin := TControllerLogin.Create;
  inherited;
end;

procedure TfrmControleLogin.FormDestroy(Sender: TObject);
begin
  frmControleLogin := nil;
end;

end.
