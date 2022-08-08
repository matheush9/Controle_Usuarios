unit uDmParceiros;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client,
  Data.DB, FireDAC.Comp.DataSet;

type
  TDmParceiros = class(TDataModule)
    FDQuery1: TFDQuery;
    FDTable1: TFDTable;
    FDQuery1NOME: TStringField;
    FDQuery1TELEFONE: TIntegerField;
    FDQuery1CIDADE: TStringField;
    FDQuery1UF: TStringField;
    FDQuery1ENDERECO: TStringField;
    FDQuery1CPF: TIntegerField;
    FDQuery1PARCEIROS_ID: TIntegerField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DmParceiros: TDmParceiros;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses uDmConexao;

{$R *.dfm}

end.