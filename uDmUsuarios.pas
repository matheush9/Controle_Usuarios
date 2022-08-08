unit uDmUsuarios;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TDmUsuarios = class(TDataModule)
    FDTable1: TFDTable;
    FDQuery1: TFDQuery;
    FDQuery1NOME: TStringField;
    FDQuery1TELEFONE: TIntegerField;
    FDQuery1ENDERECO: TStringField;
    FDQuery1UF: TStringField;
    FDQuery1CIDADE: TStringField;
    FDQuery1CARGO: TStringField;
    FDQuery1PERMISSAO: TStringField;
    FDQuery1USUARIOS_ID: TIntegerField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DmUsuarios: TDmUsuarios;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses uDmConexao;

{$R *.dfm}

end.
