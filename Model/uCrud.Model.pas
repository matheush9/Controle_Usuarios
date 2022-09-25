unit uCrud.Model;

interface

uses
  FireDAC.Comp.Client, uICrud, System.Classes, uDmConexao, System.SysUtils;
type
  TBtnsCrud = class(TDataModule, ICrud)
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
    procedure Consultar(SQLText: string);
    procedure Editar;
    procedure Excluir;
    procedure Gravar;
    procedure Incluir(SQLText: string);
    function GetQuery: TFDQuery;
  end;

implementation

{ TBtnsCrud }

constructor TBtnsCrud.Create;
begin
  Query := TFDQuery.Create(Self);
end;

procedure TBtnsCrud.StoreQry(pQuery: TFDQuery);
begin
  Query := pQuery;
end;

procedure TBtnsCrud.AbrirConexao;
begin
  if not Assigned(Query) then
  begin
    Query := TFDQuery.Create(Self);
  end;
  Query.Connection := DmConexao.FDConnection1;
  Query.CachedUpdates := true;
end;

procedure TBtnsCrud.FecharConexao;
begin
  FreeAndNil(Query);
end;

function TBtnsCrud.getQuery: TFDQuery;
begin
  Result := Query;
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

procedure TBtnsCrud.Consultar(SQLText: string);
begin
  Query.SQL.Text := SQLText;
  Query.Open;
  Query.First;
end;

procedure TBtnsCrud.Editar;
begin
  Query.Open;
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

procedure TBtnsCrud.Incluir(SQLText: string);
begin
  Query.SQL.Text := SQLText;
  Query.Open;
  Query.Append;
end;

end.
