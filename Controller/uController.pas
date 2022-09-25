unit uController;

interface

uses
  System.Classes, uCrud.Model,
  FireDAC.comp.Client, uICrud;

type
  TController = class(TInterfacedObject, ICrud)
  private
    ModelCrud: TBtnsCrud;

  public
    constructor Create;
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
    function GetQuery: TFDQuery;
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
  if not Assigned(ModelCrud) then
    ModelCrud := TBtnsCrud.Create;
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

procedure TController.Consultar(SQLText: string);
begin
  ModelCrud.Consultar(SQLText);
end;

procedure TController.Editar;
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

function TController.GetQuery : TFDQuery;
begin
  result := ModelCrud.GetQuery;
end;

procedure TController.Gravar;
begin
  ModelCrud.Gravar;
end;

procedure TController.Incluir(SQLText: string);
begin
  ModelCrud.Incluir(SQLText);
end;

procedure TController.Voltar;
begin
ModelCrud.Voltar;
end;

end.
