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
    procedure btn_excluirClick(Sender: TObject);
    procedure btn_voltarClick(Sender: TObject);
    procedure btn_avançarClick(Sender: TObject);
    procedure btn_cancelarClick(Sender: TObject);
    procedure btn_editarClick(Sender: TObject);

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

procedure TfrmCrud.btn_avançarClick(Sender: TObject);
begin
  with DmUsuarios do
  begin
    FDQuery1.Next;
  end;
end;

procedure TfrmCrud.btn_cancelarClick(Sender: TObject);
begin
  with DmUsuarios do
  begin
    FDQuery1.Cancel;
  end;
end;

procedure TfrmCrud.btn_editarClick(Sender: TObject);
begin
  with DmUsuarios do
  begin
    FDQuery1.Insert;
  end;
end;

procedure TfrmCrud.btn_excluirClick(Sender: TObject);
begin
  with DmUsuarios do
  begin
    Application.MessageBox('Você realmente deseja excluir esse registro?',
      'Exclusão de registro', MB_YESNO);
    begin
      FDQuery1.Delete;
    end;
  end;
end;

procedure TfrmCrud.btn_gravarClick(Sender: TObject);
begin
  with DmUsuarios do
  begin
    FDQuery1.post;
    Showmessage('Registro Gravado com sucesso!');
  end;
end;

procedure TfrmCrud.btn_incluirClick(Sender: TObject);
begin
  with DmUsuarios do
  begin
    FDQuery1.Append;
  end;
end;

procedure TfrmCrud.btn_voltarClick(Sender: TObject);
begin
  with DmUsuarios do
  begin
    FDQuery1.Prior;
  end;
end;

procedure TfrmCrud.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  frmCrud := nil;
end;

end.
