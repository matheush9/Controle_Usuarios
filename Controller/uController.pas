unit uController;

interface

uses
  System.Classes, uCrud.Model, uUsuarios.Model, uParceiros.Model;

type
TController = class
  private
  public
    ModelCrud: TBtnsCrud;

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

{ TConexaoController }

{ TController }

constructor TController.Create;
begin
  ModelCrud := TBtnsCrud.Create;
end;

destructor TController.Destroy;
begin
  inherited;
end;

procedure TController.AbrirConexao;
begin
  ModelCrud.AbrirConexao;
end;

procedure TController.Avançar;
begin
  ModelCrud.Avançar;
end;

procedure TController.Cancelar;
begin
  ModelCrud.Avançar;
end;

procedure TController.Consultar;
begin
  ModelCrud.Consultar;
end;

function TController.Editar: Boolean;
begin
  ModelCrud.Editar;
end;

procedure TController.Excluir;
begin
  ModelCrud.Excluir;
end;

procedure TController.FecharConexao;
begin
ModelCrud.FecharConexao;
end;

procedure TController.Gravar;
begin
ModelCrud.Gravar;
end;

procedure TController.Incluir;
begin
ModelCrud.Incluir;
end;

procedure TController.Voltar;
begin
ModelCrud.Voltar;
end;

end.
