unit uParceiros.Model;

interface

uses
  uCrud.Model, System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TParceirosModel = class(TBtnsCrud)
    private
    public

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
  end;

  var Query: TFDQuery;

implementation

{ TUsuariosModel }

uses uDmConexao;

constructor TParceirosModel.Create;
begin
  Query := TFDQuery.Create(Self);
end;

procedure TParceirosModel.AbrirConexao;
begin
  if not Assigned(Query) then
  begin
    Query := TFDQuery.Create(Self);
  end;
  StoreQry(Query);
  inherited;
end;

procedure TParceirosModel.Avançar;
begin
  inherited;
end;

procedure TParceirosModel.Cancelar;
begin
  inherited;
end;

procedure TParceirosModel.Consultar;
begin
  Query.SQL.Text := 'SELECT * FROM PARCEIROS';
  Query.Open;
  Query.First;
end;

function TParceirosModel.Editar: Boolean;
begin
  inherited;
end;

procedure TParceirosModel.Excluir;
begin
  inherited;
end;

procedure TParceirosModel.FecharConexao;
begin
  FreeAndNil(Query);
end;

procedure TParceirosModel.Gravar;
begin
  inherited;
end;

procedure TParceirosModel.Incluir;
begin
  Query.SQL.Text := 'SELECT * FROM PARCEIROS WHERE PARCEIROS_ID = 0';
  Query.Open;
  Query.Append;
end;

procedure TParceirosModel.Voltar;
begin
  inherited;
end;

end.
