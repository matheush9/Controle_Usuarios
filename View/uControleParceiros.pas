unit uControleParceiros;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uCrud, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.Buttons, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.Menus, Datasnap.Provider, Datasnap.DBClient, uController;

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
    procedure FormDestroy(Sender: TObject);
    procedure btn_consultarClick(Sender: TObject);
    procedure btn_incluirClick(Sender: TObject);
  private
    { Private declarations }
    procedure AbrirConexao;
    procedure FecharConexao;
  public
    { Public declarations }

    procedure ControlarBTNeDEL;
    procedure CrudBarEnabled_Insert;
    procedure CrudBarEnabled_Read;
  end;

var
  frmControleParceiros: TfrmControleParceiros;

implementation

{$R *.dfm}

procedure TfrmControleParceiros.AbrirConexao;
begin
  inherited;
end;

procedure TfrmControleParceiros.FecharConexao;
begin
  inherited;
end;

procedure TfrmControleParceiros.btn_consultarClick(Sender: TObject);
begin
  SQLText := 'SELECT * FROM PARCEIROS';
  inherited;
end;

procedure TfrmControleParceiros.btn_incluirClick(Sender: TObject);
begin
  SQLText := 'SELECT * FROM PARCEIROS WHERE PARCEIROS_ID = 0';
  inherited;
end;

procedure TfrmControleParceiros.ControlarBTNeDEL;
begin
  inherited;
end;

procedure TfrmControleParceiros.CrudBarEnabled_Insert;
begin
  inherited;
end;

procedure TfrmControleParceiros.CrudBarEnabled_Read;
begin
  inherited;
end;

procedure TfrmControleParceiros.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := cafree;
end;

procedure TfrmControleParceiros.FormDestroy(Sender: TObject);
begin
  frmControleParceiros := nil;
end;

end.
