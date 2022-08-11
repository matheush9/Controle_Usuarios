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
    procedure ClientDataSet1AfterScroll(DataSet: TDataSet);

  private
    { Private declarations }
    procedure VarrerBtns;
    procedure VarrerCampos;
    procedure CrudBarEnabled_Insert;
    procedure CrudBarEnabled_Read;
    procedure LiberarCampos;
    procedure ControlarBTNeDEL;
  protected
    { Protected declarations }
    procedure AbrirConexao;
    procedure FecharConexao;
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

procedure TfrmCrud.ControlarBTNeDEL;
begin
  if ClientDataSet1.Eof = true then
  begin
    btn_avançar.Enabled := false;
    btn_voltar.Enabled := true;
  end

  else if ClientDataSet1.Bof = true then
  begin
    btn_avançar.Enabled := true;
    btn_voltar.Enabled := false;
  end

  else
  begin
    btn_avançar.Enabled := true;
    btn_voltar.Enabled := True;
  end;

  //

  if ClientDataSet1.RecordCount > 1 then
  begin
    btn_excluir.Enabled := true;
  end

  else
  begin
    btn_excluir.Enabled := false;
  end;
end;

procedure TfrmCrud.AbrirConexao;
begin
  ClientDataSet1.Active := true;
  ClientDataSet1.Open;
  DataSetProvider1.DataSet.Open;
end;

procedure TfrmCrud.FecharConexao;
begin
  ClientDataSet1.Active := false;
  ClientDataSet1.Close;
  DataSetProvider1.DataSet.Close;
end;

procedure tfrmcrud.VarrerBtns;
var
  I: Integer;
begin
  for I := 0 to ComponentCount -1  do
    begin
      if (Components[i] is TSpeedButton) then
      (Components[i] as TSpeedButton).enabled := false;
    end;
end;

procedure TfrmCrud.CrudBarEnabled_Read;
begin
  VarrerBtns;
  btn_incluir.Enabled := true;
  btn_editar.Enabled := true;
  btn_consultar.Enabled := true;
  VarrerCampos;
end;

procedure TfrmCrud.CrudBarEnabled_Insert;
begin
  VarrerBtns;
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
  CrudBarEnabled_Read;
  ControlarBTNeDEL;
end;

procedure TfrmCrud.btn_consultarClick(Sender: TObject);
begin
  AbrirConexao;
end;

procedure TfrmCrud.btn_editarClick(Sender: TObject);
begin
  TabSheet1.Show;
  AbrirConexao;
  DataSourceCRUD.DataSet.Edit;
  LiberarCampos;
  CrudBarEnabled_Insert;
end;

procedure TfrmCrud.btn_excluirClick(Sender: TObject);
begin
  Application.MessageBox('Você realmente deseja excluir esse registro?', 'Exclusão de registro', MB_YESNO);
  DataSourceCRUD.DataSet.Delete;
  ClientDataSet1.ApplyUpdates(-1);
  FecharConexao;
end;

procedure TfrmCrud.btn_gravarClick(Sender: TObject);
begin
  ClientDataSet1.Post;
  Showmessage('Registro Gravado com sucesso!');
  ClientDataSet1.ApplyUpdates(-1);
  CrudBarEnabled_Read;
  FecharConexao;
end;

procedure TfrmCrud.btn_incluirClick(Sender: TObject);
begin
  TabSheet1.Show;
  AbrirConexao;
  DataSourceCRUD.DataSet.Append;
  LiberarCampos;
  CrudBarEnabled_Insert;
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

// Ao inicializar
procedure TfrmCrud.FormCreate(Sender: TObject);
begin
  Caption := MainCaption + Caption;
  CrudBarEnabled_Read;
  VarrerCampos;
  CrudBarEnabled_Read;
end;
//

//

procedure TfrmCrud.ClientDataSet1AfterScroll(DataSet: TDataSet);
begin
  ControlarBTNeDEL;
end;

end.
