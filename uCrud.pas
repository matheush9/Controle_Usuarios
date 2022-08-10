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
  Datasnap.Provider, Datasnap.DBClient;

type
  TfrmCrud = class(TForm)
    MainPanel: TPanel;
    DataSourceCRUD: TDataSource;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    DBGrid1: TDBGrid;
    MainMenu1: TMainMenu;
    Cadastro1: TMenuItem;
    CadastrodeParceiros: TMenuItem;
    CadastrodeUsuarios: TMenuItem;
    Sistema1: TMenuItem;
    Ajuda1: TMenuItem;
    Sobre1: TMenuItem;
    CrudBarPanel: TPanel;
    btn_avançar: TSpeedButton;
    btn_cancelar: TSpeedButton;
    btn_consultar: TSpeedButton;
    btn_editar: TSpeedButton;
    btn_excluir: TSpeedButton;
    btn_gravar: TSpeedButton;
    btn_incluir: TSpeedButton;
    btn_voltar: TSpeedButton;
    ClientDataSet1: TClientDataSet;
    DataSetProvider1: TDataSetProvider;
    DataSource1: TDataSource;
    procedure btn_incluirClick(Sender: TObject);
    procedure btn_gravarClick(Sender: TObject);
    procedure btn_excluirClick(Sender: TObject);
    procedure btn_voltarClick(Sender: TObject);
    procedure btn_avançarClick(Sender: TObject);
    procedure btn_cancelarClick(Sender: TObject);
    procedure btn_editarClick(Sender: TObject);
    procedure CadastrodeParceirosClick(Sender: TObject);
    procedure CadastrodeUsuariosClick(Sender: TObject);
    procedure btn_consultarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DataSourceCRUDUpdateData(Sender: TObject);
    procedure DataSourceCRUDStateChange(Sender: TObject);
    procedure ClientDataSet1AfterScroll(DataSet: TDataSet);

  private
    { Private declarations }
    procedure VarrerCampos;
    procedure CrudBarEnabled_Insert;
    procedure CrudBarEnabled_Read;
    procedure LiberarCampos;
  public
    { Public declarations }
  end;

var
  frmCrud: TfrmCrud;
  MainCaption: string = 'UNL Inteligente - ';

implementation

{$R *.dfm}

uses uControleParceiros, uControleUsuarios, uDmUsuarios;


// Procedures Auxiliares

procedure TfrmCrud.CrudBarEnabled_Read;
var
  I: Integer;
begin
  for I := 0 to ComponentCount -1  do
    begin
      if Components[i] is TSpeedButton then
      (Components[i] as TSpeedButton).enabled := false;
    end;
  btn_incluir.Enabled := true;
  btn_editar.Enabled := true;
  btn_consultar.Enabled := true;

  VarrerCampos;

//  if DataSourceCRUD.DataSet.RecordCount > 1 then
//  begin
//    btn_avançar.Enabled := true;
//    btn_voltar.Enabled := true;
//    btn_excluir.enabled := true;
//  end;
end;

procedure TfrmCrud.CrudBarEnabled_Insert;
var
  I: Integer;
begin
  for I := 0 to ComponentCount -1  do
    begin
      if Components[i] is TSpeedButton then
      (Components[i] as TSpeedButton).enabled := false;
    end;
  btn_gravar.Enabled := true;
  btn_cancelar.Enabled := true;
end;

procedure TfrmCrud.VarrerCampos;
var
  I: Integer;
begin
  for I := 0 to ComponentCount -1  do
    begin
      if Components[i] is TDBEdit then
      (Components[i] as TDBEdit).enabled := false;
    end;
end;

procedure TfrmCrud.LiberarCampos;
var
  I: Integer;
begin
  for I := 0 to ComponentCount -1  do
    begin
      if Components[i] is TDBEdit then
      (Components[i] as TDBEdit).enabled := true;
    end;
end;

//

// Botões da TopBar

procedure TfrmCrud.btn_avançarClick(Sender: TObject);
begin
  DataSourceCRUD.DataSet.Next;
end;

procedure TfrmCrud.btn_voltarClick(Sender: TObject);
begin
  DataSourceCRUD.DataSet.prior;
end;

procedure TfrmCrud.btn_cancelarClick(Sender: TObject);
begin
  DataSourceCRUD.DataSet.Cancel;
end;

procedure TfrmCrud.btn_consultarClick(Sender: TObject);
begin
//
end;

procedure TfrmCrud.btn_editarClick(Sender: TObject);
begin
  TabSheet1.Show;
  DataSourceCRUD.DataSet.Edit;
  //CrudBarEnabled_Insert;
  //LiberarCampos;
end;

procedure TfrmCrud.btn_excluirClick(Sender: TObject);
begin
  Application.MessageBox('Você realmente deseja excluir esse registro?', 'Exclusão de registro', MB_YESNO);
  DataSourceCRUD.DataSet.Delete;
  DataSourceCRUD.DataSet.Refresh;
end;

procedure TfrmCrud.btn_gravarClick(Sender: TObject);
begin
  DataSourceCRUD.DataSet.post;
  Showmessage('Registro Gravado com sucesso!');
end;

procedure TfrmCrud.btn_incluirClick(Sender: TObject);
begin
  TabSheet1.Show;
  DataSourceCRUD.DataSet.Open;
  DataSourceCRUD.DataSet.Append;
  //LiberarCampos;
  //CrudBarEnabled_Insert;

end;

//

// Controle de Form

procedure TfrmCrud.CadastrodeParceirosClick(Sender: TObject);
begin
  if frmControleParceiros = nil then
  begin
    frmControleParceiros := TfrmControleParceiros.Create(Self);
    frmcontroleparceiros.Show;
  end;
end;

procedure TfrmCrud.CadastrodeUsuariosClick(Sender: TObject);
begin
  if frmControleUsuarios = nil then
  begin
    frmControleUsuarios := TfrmControleUsuarios.Create(Self);
    frmControleUsuarios.Show;
  end;
end;

procedure TfrmCrud.ClientDataSet1AfterScroll(DataSet: TDataSet);
begin
  if ClientDataSet1.Eof = true then
  begin
    btn_avançar.Enabled := false;
    btn_voltar.Enabled := true;
  end

  else
  begin
    btn_avançar.Enabled := true;
    btn_voltar.Enabled := false;
  end;
end;

//

// Ao inicializar
procedure TfrmCrud.FormCreate(Sender: TObject);
begin
  Caption := MainCaption + Caption;
  //CrudBarEnabled_Read;
  //VarrerCampos;
end;
//

procedure TfrmCrud.DataSourceCRUDStateChange(Sender: TObject);
begin
  //CrudBarEnabled_Read;
end;

procedure TfrmCrud.DataSourceCRUDUpdateData(Sender: TObject);
begin
  //CrudBarEnabled_Read;
end;

end.
