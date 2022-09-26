unit uCrud;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, Data.DB, FireDAC.Comp.Client,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  Data.Bind.EngExt, Vcl.Bind.DBEngExt, System.Rtti, System.Bindings.Outputs,
  Vcl.Bind.Editors, Data.Bind.Components, Vcl.StdCtrls, FireDAC.Comp.DataSet,
  Data.Bind.DBScope, Data.Bind.Controls, Vcl.ExtCtrls, Vcl.Buttons,
  Vcl.Bind.Navigator, Vcl.DBCtrls, Vcl.Mask, Vcl.ToolWin, Vcl.ActnMan,
  Vcl.ActnCtrls, Vcl.ActnMenus, Vcl.ComCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Menus,
  Datasnap.Provider, Datasnap.DBClient, uController, uICrud;

type
  TfrmCrud = class(TForm)
    MainPanel: TPanel;
    DataSourceCRUD: TDataSource;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    DBGrid1: TDBGrid;
    CrudBarPanel: TPanel;
    btn_avançar: TSpeedButton;
    btn_cancelar: TSpeedButton;
    btn_consultar: TSpeedButton;
    btn_editar: TSpeedButton;
    btn_excluir: TSpeedButton;
    btn_gravar: TSpeedButton;
    btn_incluir: TSpeedButton;
    btn_voltar: TSpeedButton;
    procedure btn_incluirClick(Sender: TObject);
    procedure btn_gravarClick(Sender: TObject);
    procedure btn_excluirClick(Sender: TObject);
    procedure btn_voltarClick(Sender: TObject);
    procedure btn_cancelarClick(Sender: TObject);
    procedure btn_editarClick(Sender: TObject);
    procedure btn_consultarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn_avançarClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }

    Controller: ICrud;
    SQLText: string;

    procedure CrudBarEnabled_Insert;
    procedure CrudBarEnabled_Read;
    procedure ControlarBTNeDEL;
    procedure AbrirConexao;
    procedure FecharConexao;

  end;

var
  frmCrud: TfrmCrud;

implementation

{$R *.dfm}

uses uControleComponentes;

procedure TfrmCrud.AbrirConexao;
begin
  Controller := TController.Create;
  Controller.AbrirConexao;
  DataSourceCRUD.DataSet := TController(Controller).GetQuery;
end;

procedure TfrmCrud.FecharConexao;
begin
  Controller.FecharConexao;
end;

procedure TfrmCrud.btn_voltarClick(Sender: TObject);
begin
  Controller.Voltar;
  ControlarBTNeDEL;
end;

procedure TfrmCrud.btn_avançarClick(Sender: TObject);
begin
  Controller.Avançar;
  ControlarBTNeDEL;
end;

procedure TfrmCrud.btn_cancelarClick(Sender: TObject);
begin
  Application.MessageBox
    ('Você realmente deseja cancelar a alteração esse registro?', 'Cancelar',
    MB_YESNO);

  Controller.Cancelar;

  CrudBarEnabled_Read;
  ControlarBTNeDEL;
end;

procedure TfrmCrud.btn_consultarClick(Sender: TObject);
begin
  AbrirConexao;
  Controller.Consultar(SQLText);
  ControlarBTNeDEL;
end;

procedure TfrmCrud.btn_editarClick(Sender: TObject);
begin
  if DataSourceCRUD.DataSet.RecordCount < 1 then
  begin
    Application.Title := 'Aviso!';
    ShowMessage('Não há registro para ser editado');
    abort;
  end;

  //AbrirConexao;
  TabSheet1.Show;
  Controller.Editar;
  CrudBarEnabled_Insert;
end;

procedure TfrmCrud.btn_excluirClick(Sender: TObject);
var
  Res: Integer;
begin
  Res := Application.MessageBox('Você realmente deseja excluir esse registro?',
    'Exclusão de registro', MB_YESNO);
  if Res = IDYES then
  begin
    Controller.Excluir;
  end;
end;

procedure TfrmCrud.btn_gravarClick(Sender: TObject);
begin
  Controller.Gravar;
  Application.Title := 'Aviso!';
  ShowMessage('Registro Gravado com sucesso!');
  CrudBarEnabled_Read;
  FecharConexao;
end;

procedure TfrmCrud.btn_incluirClick(Sender: TObject);
begin
  TabSheet1.Show;
  AbrirConexao;
  Controller.Incluir(SQLText);
  CrudBarEnabled_Insert;
end;

procedure TfrmCrud.CrudBarEnabled_Read;
begin
  TControles.EnableComponents(Self, [TSpeedButton, TDBEdit], false);
  TControles.CrudInRead(btn_incluir, btn_consultar, btn_editar);
end;

procedure TfrmCrud.CrudBarEnabled_Insert;
begin
  TControles.EnableComponents(Self, [TDBEdit], true);
  TControles.EnableComponents(Self, [TSpeedButton], false);
  TControles.CrudInInsert(btn_cancelar, btn_gravar);
end;

procedure TfrmCrud.ControlarBTNeDEL;
begin
  TControles.ControlarSetas(btn_avançar, btn_voltar, DataSourceCRUD);
  TControles.ControlarDel(btn_excluir, DataSourceCRUD);
end;

procedure TfrmCrud.FormCreate(Sender: TObject);
begin
  AbrirConexao;
  CrudBarEnabled_Read;
  TControles.EnableComponents(Self, [TDBEdit], false);
end;

procedure TfrmCrud.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FecharConexao;
end;

end.
