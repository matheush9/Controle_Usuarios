unit uCrud.Model;

interface

uses
  FireDAC.Comp.Client, System.Classes, uDmConexao;
type
  TBtnsCrud = class(TDataModule)
  private
  public
    Query: TFDQuery;

    constructor Create;

    procedure StoreQry(pQuery: TFDQuery);
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

implementation

{ TBtnsCrud }

constructor TBtnsCrud.Create;
begin
end;

procedure TBtnsCrud.StoreQry(pQuery: TFDQuery);
begin
  Query := pQuery;
end;

procedure TBtnsCrud.AbrirConexao;
begin
  Query.Connection := DmConexao.FDConnection1;
  Query.CachedUpdates := true;
end;

procedure TBtnsCrud.FecharConexao;
begin
end;

procedure TBtnsCrud.Avançar;
begin
  Query.Next;
end;

procedure TBtnsCrud.Voltar;
begin
  Query.Prior;
end;

procedure TBtnsCrud.Cancelar;
begin
  Query.Cancel;
end;

procedure TBtnsCrud.Consultar;
begin

end;

function TBtnsCrud.Editar: Boolean;
begin
  if Query.RecordCount < 1 then
    Result := true
  else
    Query.Edit;
end;

procedure TBtnsCrud.Excluir;
begin
  Query.Delete;
  Query.ApplyUpdates(-1);
end;

procedure TBtnsCrud.Gravar;
begin
  Query.Post;
  Query.ApplyUpdates(-1);
end;

procedure TBtnsCrud.Incluir;
begin

end;

end.
