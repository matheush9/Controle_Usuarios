unit uControleUsuarios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uCrud, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.Buttons, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.Menus, Datasnap.Provider, Datasnap.DBClient, uController, FireDAC.comp.Client;

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
    procedure btn_consultarClick(Sender: TObject);
    procedure btn_incluirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
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
  frmControleUsuarios: TfrmControleUsuarios;

implementation

{$R *.dfm}

procedure TfrmControleUsuarios.AbrirConexao;
begin
  inherited;
end;

procedure TfrmControleUsuarios.FecharConexao;
begin
  inherited;
end;

procedure TfrmControleUsuarios.btn_consultarClick(Sender: TObject);
begin
  SQLText := 'SELECT * FROM USUARIOS';
  inherited;
  DataSourceCRUD.DataSet := TController(Controller).GetQuery;
end;

procedure TfrmControleUsuarios.btn_incluirClick(Sender: TObject);
begin
  SQLText := 'SELECT * FROM USUARIOS WHERE USUARIOS_ID = 0';
  inherited;
  DataSourceCRUD.DataSet := TController(Controller).GetQuery;
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
  Action := cafree;
end;

procedure TfrmControleUsuarios.FormCreate(Sender: TObject);
begin
  inherited;
  DataSourceCRUD.DataSet := TController(Controller).GetQuery;
end;

procedure TfrmControleUsuarios.FormDestroy(Sender: TObject);
begin
  inherited;
  frmControleUsuarios := nil;
end;

end.
