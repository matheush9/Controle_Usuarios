unit uControllerLogin;

interface

uses uLogin.Model, FireDAC.Comp.Client,
System.Classes, System.SysUtils, uController, uICrud, uILogin;

type
TControllerLogin = class(TController, ICrud, ILogin)
  private
  LoginModel: TLoginModel;
  public

    constructor Create;
    procedure AbrirConexao;
    procedure FecharConexao;
    procedure Cancelar;
    procedure Avançar;
    procedure Voltar;
    procedure Consultar(SQLText: string);
    function Editar: Boolean;
    procedure Excluir;
    procedure Gravar;
    procedure Incluir(SQLText: string);
    procedure AutenticarLogin(Login, senha: string);
    destructor Destroy; override;
    function ToMD5(const value: string): string;
    function IsQueryEmpty: boolean;
    procedure ReceberSenhaCript(Senha: string);
    function RetornaPermissao: string;
    function RetornaLogin: string;
end;

implementation


constructor TControllerLogin.Create;
begin
  LoginModel := TLoginModel.Create;
end;

destructor TControllerLogin.Destroy;
begin
  inherited;
end;

procedure TControllerLogin.AutenticarLogin(Login, senha: string);
begin
  LoginModel.AutenticarLogin(Login, senha);
end;

procedure TControllerLogin.AbrirConexao;
begin
  inherited;
end;

procedure TControllerLogin.Avançar;
begin
  inherited;
end;

procedure TControllerLogin.Cancelar;
begin
  inherited;
end;

procedure TControllerLogin.Consultar(SQLText: string);
begin
  inherited;
end;

function TControllerLogin.Editar: Boolean;
begin
  result := LoginModel.Editar;
end;

procedure TControllerLogin.Excluir;
begin
  inherited;
end;

procedure TControllerLogin.FecharConexao;
begin
  inherited;
end;

procedure TControllerLogin.Gravar;
begin
  inherited;
end;

procedure TControllerLogin.Incluir(SQLText : string);
begin
  LoginModel.Incluir(SQLText);
end;

function TControllerLogin.IsQueryEmpty: boolean;
begin
  result := LoginModel.IsQueryEmpty;
end;

function TControllerLogin.RetornaLogin: string;
begin
  result := LoginModel.RetornaLogin;
end;

function TControllerLogin.RetornaPermissao: string;
begin
  result := LoginModel.RetornaPermissao;
end;

procedure TControllerLogin.ReceberSenhaCript(Senha: string);
begin
  LoginModel.ReceberSenhaCript(senha);
end;

function TControllerLogin.ToMD5(const value: string): string;
begin
  Result := LoginModel.ToMD5(Value);
end;

procedure TControllerLogin.Voltar;
begin
  inherited;
end;

end.
