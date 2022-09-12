unit uControleUsuarios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uCrud, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.Buttons, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.Menus, Datasnap.Provider, Datasnap.DBClient, uController, FireDAC.comp.Client,
  uControllerUsuarios;

type
  TfrmControleUsuarios = class(TfrmCrud)
    dbEdit_cargo: TDBEdit;
    dbEdit_cidade: TDBEdit;
    dbEdit_endereco: TDBEdit;
    dbEdit_nome: TDBEdit;
    dbEdit_permissao: TDBEdit;
    dbEdit_telefone: TDBEdit;
    dbEdit_uf: TDBEdit;
    lb_cargo: TLabel;
    lb_cidade: TLabel;
    lb_endereco: TLabel;
    lb_nome: TLabel;
    lb_permissao: TLabel;
    lb_telefone: TLabel;
    lb_uf: TLabel;
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
  ControllerUsuarios: TControllerUsuarios;
  frmControleUsuarios: TfrmControleUsuarios;

implementation

{$R *.dfm}

procedure TfrmControleUsuarios.AbrirConexao;
begin
  ControllerUsuarios.AbrirConexao;
  DataSourceCRUD.DataSet := ControllerUsuarios.UsuariosModel.Query;
end;

procedure TfrmControleUsuarios.FecharConexao;
begin
  ControllerUsuarios.FecharConexao;
end;

procedure TfrmControleUsuarios.btn_avançarClick(Sender: TObject);
begin
  ControllerUsuarios.Avançar;
  ControlarBTNeDEL;
end;

procedure TfrmControleUsuarios.btn_cancelarClick(Sender: TObject);
begin
  Application.MessageBox
    ('Você realmente deseja cancelar a alteração esse registro?', 'Cancelar',
    MB_YESNO);

  ControllerUsuarios.Cancelar;

  CrudBarEnabled_Read;
  ControlarBTNeDEL;
end;

procedure TfrmControleUsuarios.btn_consultarClick(Sender: TObject);
begin
  AbrirConexao;

  ControllerUsuarios.Consultar;

  ControlarBTNeDEL;
end;

procedure TfrmControleUsuarios.btn_editarClick(Sender: TObject);
begin
  if (ControllerUsuarios.UsuariosModel.Query = nil) or
  (ControllerUsuarios.UsuariosModel.Query.IsEmpty = true) then
  begin
    Application.Title := 'Aviso!';
    ShowMessage('Não há registro para ser editado');
    abort;
  end;

  TabSheet1.Show;

  ControllerUsuarios.Editar;

  CrudBarEnabled_Insert;
end;

procedure TfrmControleUsuarios.btn_excluirClick(Sender: TObject);
begin
var
  Res: Integer;
begin
  Res := Application.MessageBox('Você realmente deseja excluir esse registro?',
    'Exclusão de registro', MB_YESNO);
  if Res = IDYES then
  begin
    ControllerUsuarios.Excluir;
  end;
end;
end;

procedure TfrmControleUsuarios.btn_gravarClick(Sender: TObject);
begin
  ControllerUsuarios.Gravar;

  Application.Title := 'Aviso!';
  ShowMessage('Registro Gravado com sucesso!');

  CrudBarEnabled_Read;

  FecharConexao;
end;

procedure TfrmControleUsuarios.btn_incluirClick(Sender: TObject);
begin
  TabSheet1.Show;

  AbrirConexao;

  ControllerUsuarios.Incluir;

  CrudBarEnabled_Insert;
end;

procedure TfrmControleUsuarios.btn_voltarClick(Sender: TObject);
begin
  ControllerUsuarios.Voltar;
  ControlarBTNeDEL;
end;

procedure TfrmControleUsuarios.ControlarBTNeDEL;
begin
  inherited;
end;

procedure TfrmControleUsuarios.CrudBarEnabled_Insert;
begin
  inherited;
end;

procedure TfrmControleUsuarios.CrudBarEnabled_Read;
begin
  inherited;
end;

procedure TfrmControleUsuarios.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FecharConexao;
  FreeAndNil(ControllerUsuarios);
  Action := cafree;
end;

procedure TfrmControleUsuarios.FormCreate(Sender: TObject);
begin
  ControllerUsuarios := TControllerUsuarios.Create;
  inherited;
end;

procedure TfrmControleUsuarios.FormDestroy(Sender: TObject);
begin
  inherited;
  frmControleUsuarios := nil;
end;

end.
