unit uControllerLogin;

interface

uses uLogin.Model, FireDAC.Comp.Client,
System.Classes, System.SysUtils, uController;

type
TControllerLogin = class(TController)
  private
  public
    LoginModel: TLoginModel;

    constructor Create;
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
    destructor Destroy; override;
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

procedure TControllerLogin.AbrirConexao;
begin
  LoginModel.AbrirConexao;
end;

procedure TControllerLogin.Avançar;
begin
  LoginModel.Avançar;
end;

procedure TControllerLogin.Cancelar;
begin
  LoginModel.Cancelar;
end;

procedure TControllerLogin.Consultar;
begin
  LoginModel.Consultar;
end;

function TControllerLogin.Editar: Boolean;
begin
  result := LoginModel.Editar;
end;

procedure TControllerLogin.Excluir;
begin
  LoginModel.Excluir;
end;

procedure TControllerLogin.FecharConexao;
begin
  LoginModel.FecharConexao;
end;

procedure TControllerLogin.Gravar;
begin
  LoginModel.Gravar;
end;

procedure TControllerLogin.Incluir;
begin
  LoginModel.Incluir;
end;

procedure TControllerLogin.Voltar;
begin
  LoginModel.Voltar;
end;

end.
