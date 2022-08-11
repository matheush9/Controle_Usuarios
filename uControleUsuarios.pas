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
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
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
  DmUsuarios.FDTable1.Open;
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
