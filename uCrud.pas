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
  Vcl.ActnCtrls, Vcl.ActnMenus, Vcl.ComCtrls, Vcl.Grids, Vcl.DBGrids;

type
  TfrmCrud = class(TForm)
    MainPanel: TPanel;
    DataSource1: TDataSource;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    DBGrid1: TDBGrid;
    FDQuery1: TFDQuery;
    FDQuery1NOME: TStringField;
    FDQuery1SOBRENOME: TStringField;
    FDQuery1IDADE: TIntegerField;
    FDQuery1PERMISSAO: TStringField;
    FDQuery1ID: TIntegerField;
    CrudBarPanel: TPanel;
    btn_incluir: TSpeedButton;
    btn_gravar: TSpeedButton;
    btn_editar: TSpeedButton;
    btn_cancelar: TSpeedButton;
    btn_excluir: TSpeedButton;
    btn_voltar: TSpeedButton;
    btn_avançar: TSpeedButton;
    procedure btn_incluirClick(Sender: TObject);
    procedure btn_gravarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCrud: TfrmCrud;

implementation

{$R *.dfm}

uses uDmConexao, uDmUsuarios;

//


procedure TfrmCrud.btn_gravarClick(Sender: TObject);
begin
  with DmUsuarios do
  begin
    FDTable1.post;
  end;
end;

procedure TfrmCrud.btn_incluirClick(Sender: TObject);
begin
  with DmUsuarios do
  begin
    FDTable1.insert;
  end;
end;

procedure TfrmCrud.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   frmCrud := nil;
end;

end.
