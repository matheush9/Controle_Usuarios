unit uUsuarios.Model;

interface

uses
  uCrud.Model, System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TUsuariosModel = class(TBtnsCrud)
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

  var
    Query : TFDQuery;

implementation

{ TUsuariosModel }

uses uDmConexao, uControleUsuarios;

constructor TUsuariosModel.Create;
begin
  Query := TFDQuery.Create(Self);
end;

procedure TUsuariosModel.AbrirConexao;
begin
  if not Assigned(Query) then
  begin
    Query := TFDQuery.Create(Self);
  end;
  StoreQry(Query);
  inherited;
end;

procedure TUsuariosModel.Avançar;
begin
  inherited;
end;

procedure TUsuariosModel.Cancelar;
begin
  inherited;
end;

procedure TUsuariosModel.Consultar;
begin
  Query.SQL.Text := 'SELECT * FROM USUARIOS';
  Query.Open;
  Query.First;
end;

function TUsuariosModel.Editar: Boolean;
begin
  inherited;
end;

procedure TUsuariosModel.Excluir;
begin
  inherited;
end;

procedure TUsuariosModel.FecharConexao;
begin
  FreeAndNil(Query);
end;

procedure TUsuariosModel.Gravar;
begin
  inherited;
end;

procedure TUsuariosModel.Incluir;
begin
  Query.SQL.Text := 'SELECT * FROM USUARIOS WHERE USUARIOS_ID = 0';
  Query.Open;
  Query.Append;
end;

procedure TUsuariosModel.Voltar;
begin
  inherited;
end;

end.
