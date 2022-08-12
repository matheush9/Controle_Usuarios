unit uControleUsuarios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uCrud, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.Buttons, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.Menus, Datasnap.Provider, Datasnap.DBClient;

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
    procedure btn_consultarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure AbrirConexaoDM;
    procedure FecharConexaoDM;
  public
    { Public declarations }
  end;

var
  frmControleUsuarios: TfrmControleUsuarios;

implementation

{$R *.dfm}

uses uDmUsuarios;

procedure TfrmControleUsuarios.AbrirConexaoDM;
begin
  DmUsuarios.FDTable1.Active := true;
  DmUsuarios.FDQuery1.Active := true;
  DmUsuarios.FDTable1.Open;
  DmUsuarios.FDQuery1.Open;
end;

procedure TfrmControleUsuarios.FecharConexaoDM;
begin
  DmUsuarios.FDTable1.Active := false;
  DmUsuarios.FDQuery1.Active := false;
  DmUsuarios.FDTable1.Close;
  DmUsuarios.FDQuery1.Close;
end;

procedure TfrmControleUsuarios.btn_consultarClick(Sender: TObject);
begin
  inherited;
  AbrirConexaoDM;
  DmUsuarios.FDQuery1.SQL.Text := 'SELECT * FROM USUARIOS';
  ClientDataSet1.refresh;
  ClientDataSet1.First;
end;

procedure TfrmControleUsuarios.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  FecharConexaoDM;
  FreeAndNil(DmUsuarios);
  FreeAndNil(frmControleUsuarios);
end;

procedure TfrmControleUsuarios.FormCreate(Sender: TObject);
begin
  if DmUsuarios = nil then
  begin
    DmUsuarios := TDmUsuarios.Create(Self);
    AbrirConexaoDM;
  end;
  inherited;
end;

end.
