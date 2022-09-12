unit uControleParceiros;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uCrud, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.Buttons, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.Menus, Datasnap.Provider, Datasnap.DBClient, uControllerParceiros, uControllerUsuarios,
  uController;

type
  TfrmControleParceiros = class(TfrmCrud)
    lb_nome: TLabel;
    dbEdit_nome: TDBEdit;
    lb_telefone: TLabel;
    dbEdit_telefone: TDBEdit;
    lb_endereco: TLabel;
    dbEdit_endereco: TDBEdit;
    lb_uf: TLabel;
    dbEdit_uf: TDBEdit;
    lb_cidade: TLabel;
    dbEdit_cidade: TDBEdit;
    lb_cpf: TLabel;
    dbEdit_cpf: TDBEdit;
    lb_idade: TLabel;
    dbEdit_idade: TDBEdit;
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
  ControllerParceiros: TControllerParceiros;
  frmControleParceiros: TfrmControleParceiros;

implementation

uses
  uCrud.Model;

{$R *.dfm}

procedure TfrmControleParceiros.AbrirConexao;
begin
  ControllerParceiros.AbrirConexao;
  DataSourceCRUD.DataSet := ControllerParceiros.ParceirosModel.Query;
end;

procedure TfrmControleParceiros.FecharConexao;
begin
  ControllerParceiros
  .FecharConexao;
end;

procedure TfrmControleParceiros.btn_avançarClick(Sender: TObject);
begin
  ControllerParceiros.Avançar;
  ControlarBTNeDEL;
end;

procedure TfrmControleParceiros.btn_cancelarClick(Sender: TObject);
begin
  AbrirConexao;

  Application.MessageBox
    ('Você realmente deseja cancelar a alteração esse registro?', 'Cancelar',
    MB_YESNO);

  ControllerParceiros
  .Cancelar;

  CrudBarEnabled_Read;
  ControlarBTNeDEL;
end;

procedure TfrmControleParceiros.btn_consultarClick(Sender: TObject);
begin
  AbrirConexao;

  ControllerParceiros
  .Consultar;

  ControlarBTNeDEL;
end;

procedure TfrmControleParceiros.btn_editarClick(Sender: TObject);
begin
  if (ControllerParceiros.ParceirosModel.Query = nil) or
  (ControllerParceiros.ParceirosModel.Query.IsEmpty = true) then
  begin
    Application.Title := 'Aviso!';
    ShowMessage('Não há registro para ser editado');
    abort;
  end;

  TabSheet1.Show;

  ControllerParceiros
  .Editar;

  CrudBarEnabled_Insert;
end;

procedure TfrmControleParceiros.btn_excluirClick(Sender: TObject);
begin
var
  Res: Integer;
begin
  AbrirConexao;

  Res := Application.MessageBox('Você realmente deseja excluir esse registro?',
    'Exclusão de registro', MB_YESNO);
  if Res = IDYES then
  begin
    ControllerParceiros
    .Excluir;
  end;
end;
end;

procedure TfrmControleParceiros.btn_gravarClick(Sender: TObject);
begin
  AbrirConexao;

  ControllerParceiros
  .Gravar;

  Application.Title := 'Aviso!';
  ShowMessage('Registro Gravado com sucesso!');

  CrudBarEnabled_Read;

  FecharConexao;
end;

procedure TfrmControleParceiros.btn_incluirClick(Sender: TObject);
begin
  TabSheet1.Show;

  AbrirConexao;

  ControllerParceiros
  .Incluir;

  CrudBarEnabled_Insert;
end;

procedure TfrmControleParceiros.btn_voltarClick(Sender: TObject);
begin
  ControllerParceiros.Voltar;
  ControlarBTNeDEL;
end;

procedure TfrmControleParceiros.ControlarBTNeDEL;
begin
  inherited;
end;

procedure TfrmControleParceiros.CrudBarEnabled_Insert;
begin
  inherited;
end;

procedure TfrmControleParceiros.CrudBarEnabled_Read;
begin
  inherited;
end;

procedure TfrmControleParceiros.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FecharConexao;
  FreeAndNil(ControllerParceiros);
  Action := cafree;
end;

procedure TfrmControleParceiros.FormCreate(Sender: TObject);
begin
  ControllerParceiros := TControllerParceiros.Create;
  inherited;
end;

procedure TfrmControleParceiros.FormDestroy(Sender: TObject);
begin
  frmControleParceiros := nil;
end;

end.
