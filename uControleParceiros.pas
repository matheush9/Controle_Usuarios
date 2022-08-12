unit uControleParceiros;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uCrud, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.Buttons, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.Menus, Datasnap.Provider, Datasnap.DBClient;

type
  TfrmControleParceiros = class(TfrmCrud)
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
    lb_cpf: TLabel;
    dbEdit_cpf: TDBEdit;
    lb_idade: TLabel;
    dbEdit_idade: TDBEdit;
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
  frmControleParceiros: TfrmControleParceiros;

implementation

{$R *.dfm}

uses uDmParceiros;

procedure TfrmControleParceiros.AbrirConexaoDM;
begin
  DmParceiros.FDTable1.Active := true;
  DmParceiros.FDQuery1.Active := true;
  DmParceiros.FDTable1.Open;
  DmParceiros.FDQuery1.Open;
end;

procedure TfrmControleParceiros.FecharConexaoDM;
begin
  DmParceiros.FDTable1.active := false;
  DmParceiros.FDQuery1.active := false;
  DmParceiros.FDTable1.Close;
  DmParceiros.FDQuery1.Close;
end;


procedure TfrmControleParceiros.btn_consultarClick(Sender: TObject);
begin
  inherited;
  AbrirConexaoDM;
  DmParceiros.FDQuery1.SQL.Text := 'SELECT * FROM PARCEIROS';
  ClientDataSet1.refresh;
  ClientDataSet1.First;
end;

procedure TfrmControleParceiros.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  //inherited;
  FecharConexaoDM;
  Freeandnil(DmParceiros);
  FreeAndNil(frmControleParceiros);
end;

procedure TfrmControleParceiros.FormCreate(Sender: TObject);
begin
  if DmParceiros = nil then
  begin
    DmParceiros := TDmParceiros.Create(Self);
    AbrirConexaoDM;
  end;
  inherited;
end;

end.
