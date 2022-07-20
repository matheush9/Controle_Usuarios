unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TfrmPrincipal = class(TForm)
    btn_listar: TButton;
    btn_gerir: TButton;
    btn_cadastrar: TButton;
    FDConnection1: TFDConnection;
    tb_usuarios: TFDTable;
    DataSource1: TDataSource;
    procedure btn_cadastrarClick(Sender: TObject);
    procedure btn_listarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

uses uCadastro, uListar;

procedure TfrmPrincipal.btn_cadastrarClick(Sender: TObject);
begin
  if frmCadastro = nil then
  begin
    frmCadastro := TfrmCadastro.Create(Self);
    frmCadastro.ShowModal;
  end;

end;

procedure TfrmPrincipal.btn_listarClick(Sender: TObject);
begin
  if frmListar = nil then
  begin
    frmListar := TfrmListar.Create(Self);
    frmListar.ShowModal;
  end;

end;

procedure TfrmPrincipal.FormCreate(Sender: TObject);
begin
  FDConnection1.params.database := getcurrentdir+'/Assets/DBs/PRIMEIRODB.FDB';
  FDConnection1.DriverName := 'FB';
  FDConnection1.Params.UserName := 'SYSDBA';
  FDConnection1.Params.password := 'masterkey';
  FDConnection1.Connected := true;
  tb_usuarios.TableName := 'USUARIOS_2';
  tb_usuarios.active := true;
  DataSource1.DataSet := tb_usuarios;
end;



end.
