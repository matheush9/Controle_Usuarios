unit uDmLogin;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB, IdHashMessageDigest,
  FireDAC.Comp.Client, FireDAC.Comp.DataSet, FireDAC.Stan.Def,
  FireDAC.VCLUI.Wait, FireDAC.Phys.IBWrapper, FireDAC.Phys, FireDAC.Phys.IBBase;

type
  TDmLogin = class(TDataModule)
    FDTransaction1: TFDTransaction;
    FDQuery1: TFDQuery;
    FDQuery1LOGIN: TStringField;
    FDQuery1SENHA: TStringField;
    FDQuery1LOGIN_ID: TIntegerField;
    FDQuery1PERMISSAO: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
    function MD5(const value: string): string;
  end;

var
  DmLogin: TDmLogin;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses uDmConexao;

{$R *.dfm}

function TDmLogin.MD5(const value: string): string ;
var xMD5: TIdHashMessageDigest5;

begin
  xMD5 := TIdHashMessageDigest5.Create();

  try
    Result := LowerCase(xMD5.HashStringAsHex(Value));
  finally
    XMD5.Free;
  end;

end;

end.
