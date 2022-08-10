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
  Vcl.ActnCtrls, Vcl.ActnMenus, Vcl.ComCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Menus;

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
    CrudBarPanel_Dados: TPanel;
    btn_incluir: TSpeedButton;
    btn_gravar: TSpeedButton;
    btn_editar: TSpeedButton;
    btn_cancelar: TSpeedButton;
    btn_excluir: TSpeedButton;
    btn_voltar: TSpeedButton;
    btn_consultar: TSpeedButton;
    btn_avançar: TSpeedButton;
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

  private
    { Private declarations }
    procedure BloquearCampos;
    procedure LiberarCampos;
  public
    { Public declarations }
  end;

var
  frmCrud: TfrmCrud;

implementation

{$R *.dfm}

uses uControleParceiros, uControleUsuarios;


// Procedures Auxiliares

procedure TfrmCrud.BloquearCampos;
begin
  btn_editar.Enabled := false;
  btn_incluir.Enabled := false;
  btn_avançar.Enabled := false;
  btn_voltar.Enabled := false;
  btn_excluir.Enabled := false;
end;

procedure TfrmCrud.LiberarCampos;
begin
  btn_editar.Enabled := true;
  btn_incluir.Enabled := true;
  btn_avançar.Enabled := true;
  btn_voltar.Enabled := true;
  btn_excluir.Enabled := true;
end;

//

procedure TfrmCrud.btn_avançarClick(Sender: TObject);
begin
  DataSourceCRUD.DataSet.Next;
end;

procedure TfrmCrud.btn_cancelarClick(Sender: TObject);
begin
  DataSourceCRUD.DataSet.Cancel;
  LiberarCampos;
end;

procedure TfrmCrud.btn_consultarClick(Sender: TObject);
begin
//
end;

procedure TfrmCrud.btn_editarClick(Sender: TObject);
begin
  DataSourceCRUD.DataSet.Edit;
  BloquearCampos;
end;

procedure TfrmCrud.btn_excluirClick(Sender: TObject);
begin
  Application.MessageBox('Você realmente deseja excluir esse registro?', 'Exclusão de registro', MB_YESNO);
  DataSourceCRUD.DataSet.Delete;
end;

procedure TfrmCrud.btn_gravarClick(Sender: TObject);
begin
  DataSourceCRUD.DataSet.post;
  Showmessage('Registro Gravado com sucesso!');
  LiberarCampos;
end;

procedure TfrmCrud.btn_incluirClick(Sender: TObject);
begin
  DataSourceCRUD.DataSet.Open;
  DataSourceCRUD.DataSet.Append;
  BloquearCampos;
end;

procedure TfrmCrud.btn_voltarClick(Sender: TObject);
begin
  DataSourceCRUD.DataSet.prior;
end;

//

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

end.
