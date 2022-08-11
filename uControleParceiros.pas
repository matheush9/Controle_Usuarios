unit uControleParceiros;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uCrud, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.Buttons, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.Menus, Datasnap.Provider, Datasnap.DBClient;

type
  TfrmControleParceiros = class(TfrmCrud)
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
  frmControleParceiros: TfrmControleParceiros;

implementation

{$R *.dfm}

uses uDmParceiros;

procedure TfrmControleParceiros.AbrirConexao;
begin
  DmParceiros.FDTable1.Active := true;
  DmParceiros.FDQuery1.Active := true;
  showmessage('abriu')
end;

procedure TfrmControleParceiros.FecharConexao;
begin
  DmParceiros.FDTable1.active := false;
  DmParceiros.FDQuery1.active := false;
end;


procedure TfrmControleParceiros.btn_consultarClick(Sender: TObject);
begin
  AbrirConexao;
  DmParceiros.FDQuery1.SQL.Text := 'SELECT * FROM USUARIOS';
  ClientDataSet1.refresh;
  ClientDataSet1.First;
end;

procedure TfrmControleParceiros.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  //inherited;
  FecharConexao;
  Freeandnil(DmParceiros);
  FreeAndNil(frmControleParceiros);
end;

procedure TfrmControleParceiros.FormCreate(Sender: TObject);
begin
  inherited;

  if DmParceiros = nil then
  begin
    DmParceiros := TDmParceiros.Create(Self);
    AbrirConexao;
  end;
end;

end.
