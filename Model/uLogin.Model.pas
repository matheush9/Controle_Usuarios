unit uLogin.Model;

interface

uses
  uCrud.Model, System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, uICrud, uILogin, FireDAC.Comp.Client, IdHashMessageDigest;

type
  TLoginModel = class(TBtnsCrud, ICrud)
    private
    public
    constructor Create;

    function ToMD5(const value: string): string;
    procedure AbrirConexao;
    procedure FecharConexao;
    procedure Cancelar;
    procedure Avançar;
    procedure Voltar;
    procedure Consultar(SQLText: string);
    procedure Editar;
    procedure Excluir;
    procedure Gravar;
    procedure Incluir(SQLText: string);
    procedure AutenticarLogin(Login, senha: string);
    function IsQueryEmpty: boolean;
    procedure ReceberSenhaCript(Senha: string);
    function RetornaPermissao: string;
    function RetornaLogin: string;
  end;

implementation

{ TUsuariosModel }

uses uDmConexao;

constructor TLoginModel.Create;
begin
  inherited;
end;

procedure TLoginModel.AbrirConexao;
begin
  inherited;
end;

procedure TLoginModel.AutenticarLogin(Login, senha: string);
begin
  AbrirConexao;
  Query.SQL.Text :=
  'SELECT * FROM LOGIN WHERE LOGIN = :LOGIN AND SENHA = :SENHA';
  Query.ParamByName('LOGIN').AsString := Login;
  Query.ParamByName('SENHA').AsString := senha;
  Query.Open;
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

procedure TLoginModel.Consultar(SQLText: string);
begin
  inherited;
end;

procedure TLoginModel.Editar;
begin
  inherited;
end;

procedure TLoginModel.Excluir;
begin
  inherited;
end;

procedure TLoginModel.FecharConexao;
begin
  inherited;
end;

procedure TLoginModel.Gravar;
begin
  inherited;
end;

procedure TLoginModel.Incluir(SQLText: string);
begin
  inherited;
end;

function TLoginModel.IsQueryEmpty: boolean;
begin
  Result := Query.IsEmpty;
end;

function TLoginModel.RetornaLogin: string;
begin
  Result := Query.FieldByName('LOGIN').Value;
end;

function TLoginModel.RetornaPermissao: string;
begin
  Result := Query.FieldByName('PERMISSAO').Value;
end;

procedure TLoginModel.ReceberSenhaCript(Senha: string);
begin
  Query.FieldByName('SENHA').Value := Senha;
end;

function TLoginModel.ToMD5(const value: string): string;
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
