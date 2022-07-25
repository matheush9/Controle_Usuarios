unit uListar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TfrmListar = class(TForm)
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    FDQuery1: TFDQuery;
    FDQuery1NOME: TStringField;
    FDQuery1SOBRENOME: TStringField;
    FDQuery1IDADE: TIntegerField;
    FDQuery1PERMISSAO: TStringField;
    FDQuery1ID: TIntegerField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmListar: TfrmListar;

implementation

{$R *.dfm}

uses uDmUsuarios, uDmConexao;


Procedure TfrmListar.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  frmListar := nil;
end;

end.
