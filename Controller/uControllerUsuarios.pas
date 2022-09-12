unit uControllerUsuarios;

interface

uses uUsuarios.Model, FireDAC.Comp.Client,
System.Classes, System.SysUtils, uController;

type
TControllerUsuarios = class(TController)
  private
  public
    UsuariosModel: TUsuariosModel;

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


constructor TControllerUsuarios.Create;
begin
  UsuariosModel := TUsuariosModel.Create;
end;

destructor TControllerUsuarios.Destroy;
begin
  inherited;
end;

procedure TControllerUsuarios.AbrirConexao;
begin
  UsuariosModel.AbrirConexao;
end;

procedure TControllerUsuarios.Avançar;
begin
  UsuariosModel.Avançar;
end;

procedure TControllerUsuarios.Cancelar;
begin
  UsuariosModel.Cancelar;
end;

procedure TControllerUsuarios.Consultar;
begin
  UsuariosModel.Consultar;
end;

function TControllerUsuarios.Editar: Boolean;
begin
  result := UsuariosModel.Editar;
end;

procedure TControllerUsuarios.Excluir;
begin
  UsuariosModel.Excluir;
end;

procedure TControllerUsuarios.FecharConexao;
begin
  UsuariosModel.FecharConexao;
end;

procedure TControllerUsuarios.Gravar;
begin
  UsuariosModel.Gravar;
end;

procedure TControllerUsuarios.Incluir;
begin
  UsuariosModel.Incluir;
end;

procedure TControllerUsuarios.Voltar;
begin
  UsuariosModel.Voltar;
end;

end.
