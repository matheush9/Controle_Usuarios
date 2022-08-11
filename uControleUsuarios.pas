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
    lb_cargo: TLabel;
    dbEdit_cargo: TDBEdit;
    lb_permissao: TLabel;
    dbEdit_permissao: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn_consultarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure AbrirConexao;
    procedure FecharConexao;
  public
    { Public declarations }
  end;

var
  frmControleUsuarios: TfrmControleUsuarios;

implementation

{$R *.dfm}

uses uDmUsuarios;

procedure TfrmControleUsuarios.AbrirConexao;
begin
  DmUsuarios.FDTable1.Active := true;
  DmUsuarios.FDQuery1.Active := true;
  DmUsuarios.FDQuery1.Open;
  Showmessage('abriu');
end;

procedure TfrmControleUsuarios.FecharConexao;
begin
  DmUsuarios.FDTable1.Active := false;
  DmUsuarios.FDQuery1.Active := false;
end;

procedure TfrmControleUsuarios.btn_consultarClick(Sender: TObject);
begin
  inherited;
  AbrirConexao;
  DmUsuarios.FDQuery1.SQL.Text := 'SELECT * FROM USUARIOS';
  ClientDataSet1.refresh;
  ClientDataSet1.First;
end;

procedure TfrmControleUsuarios.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  // inherited;
  FecharConexao;
  FreeAndNil(DmUsuarios);
  FreeAndNil(frmControleUsuarios);
end;

procedure TfrmControleUsuarios.FormCreate(Sender: TObject);
begin
  inherited;

  if DmUsuarios = nil then
  begin
    DmUsuarios := TDmUsuarios.Create(Self);
    AbrirConexao;
  end;
end;

end.
