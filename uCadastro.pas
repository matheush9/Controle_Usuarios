unit uCadastro;

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
  TfrmCadastro = class(TForm)
    Panel1: TPanel;
    DataSource1: TDataSource;
    dbEdit_idade: TDBEdit;
    dbEdit_nome: TDBEdit;
    dbEdit_permissao: TDBEdit;
    dbEdit_sobrenome: TDBEdit;
    lb_idade: TLabel;
    lb_nome: TLabel;
    lb_permissao: TLabel;
    lb_sobrenome: TLabel;
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
    ToolBar1: TToolBar;
    btn_avançar: TSpeedButton;
    btn_cancelar: TSpeedButton;
    btn_editar: TSpeedButton;
    btn_excluir: TSpeedButton;
    btn_gravar: TSpeedButton;
    btn_incluir: TSpeedButton;
    btn_voltar: TSpeedButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btn_incluirClick(Sender: TObject);
    procedure btn_gravarClick(Sender: TObject);

  private
    { Private declarations }
    procedure LimparCampos;
    procedure BloquearCampos;
    procedure LiberarCampos;
  public
    { Public declarations }
  end;

var
  frmCadastro: TfrmCadastro;

implementation

{$R *.dfm}

uses uDmUsuarios, uDmConexao;

// Procedures funcionais

procedure TfrmCadastro.LimparCampos;
begin
  dbEdit_nome.Text := EmptyStr;
  dbEdit_sobrenome.Text := EmptyStr;
  dbEdit_permissao.Text := EmptyStr;
  dbEdit_idade.Text := EmptyStr;
end;

procedure TfrmCadastro.BloquearCampos;
begin
  dbEdit_nome.enabled := false;
  dbEdit_sobrenome.enabled := false;
  dbEdit_permissao.enabled := false;
  dbEdit_idade.enabled := false;
end;

procedure TfrmCadastro.LiberarCampos;
begin
  dbEdit_nome.enabled := true;
  dbEdit_sobrenome.enabled := true;
  dbEdit_permissao.enabled := true;
  dbEdit_idade.enabled := true;
end;

//
procedure TfrmCadastro.btn_gravarClick(Sender: TObject);
begin
  with DmUsuarios do
  begin
    FDTable1.post;
    LimparCampos();
  end;
end;

procedure TfrmCadastro.btn_incluirClick(Sender: TObject);
begin
  LiberarCampos();
  with DmUsuarios do
  begin
    FDTable1.insert;
  end;
end;

procedure TfrmCadastro.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  frmCadastro := nil;
end;

procedure TfrmCadastro.FormCreate(Sender: TObject);
begin
  BloquearCampos();
end;

end.
