unit uLogin.Model;

interface

uses
  uCrud.Model, System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, IdHashMessageDigest;

type
  TLoginModel = class(TBtnsCrud)
    private
    public

    constructor Create;

    function MD5(const value: string): string;
    procedure AbrirConexao;
    procedure FecharConexao;
    procedure Cancelar;
    procedure Avançar;
    procedure Voltar;
    procedure Consultar;
    function Editar: Boolean;
    procedure Excluir;
    procedure Gravar;
    procedure Incluir;
  end;

  var Query: TFDQuery;

implementation

{ TUsuariosModel }

uses uDmConexao;

constructor TLoginModel.Create;
begin
  Query := TFDQuery.Create(Self);
end;

procedure TLoginModel.AbrirConexao;
begin
  if not Assigned(Query) then
  begin
    Query := TFDQuery.Create(Self);
  end;

  StoreQry(Query);
  inherited;
end;

procedure TLoginModel.Avançar;
begin
  inherited;
end;

procedure TLoginModel.Voltar;
begin
  inherited;
end;

procedure TLoginModel.Cancelar;
begin
  inherited;
end;

procedure TLoginModel.Consultar;
begin
  Query.SQL.Text := 'SELECT * FROM LOGIN';
  Query.Open;
  Query.First;
end;

function TLoginModel.Editar: Boolean;
begin
  inherited;
end;

procedure TLoginModel.Excluir;
begin
  inherited;
end;

procedure TLoginModel.FecharConexao;
begin
  FreeAndNil(Query);
end;

procedure TLoginModel.Gravar;
begin
  inherited;
end;

procedure TLoginModel.Incluir;
begin
  Query.SQL.Text := 'SELECT * FROM LOGIN WHERE LOGIN_ID = 0';
  Query.Open;
  Query.Append;
end;

function TLoginModel.MD5(const value: string): string;
begin
var xMD5: TIdHashMessageDigest5;

begin
  xMD5 := TIdHashMessageDigest5.Create();

  try
    Result := LowerCase(xMD5.HashStringAsHex(Value));
  finally
    XMD5.Free;
  end;
end;

end;

end.
