unit uControllerParceiros;

interface

uses uParceiros.Model, FireDAC.Comp.Client,
System.Classes, System.SysUtils, uController;

type
TControllerParceiros = class(TController)
  private
  public
    ParceirosModel: TParceirosModel;

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


constructor TControllerParceiros.Create;
begin
  ParceirosModel := TParceirosModel.Create;
end;

destructor TControllerParceiros.Destroy;
begin
  inherited;
end;

procedure TControllerParceiros.AbrirConexao;
begin
  ParceirosModel.AbrirConexao;
end;

procedure TControllerParceiros.Avançar;
begin
  ParceirosModel.Avançar;
end;

procedure TControllerParceiros.Cancelar;
begin
  ParceirosModel.Cancelar;
end;

procedure TControllerParceiros.Consultar;
begin
  ParceirosModel.Consultar;
end;

function TControllerParceiros.Editar: Boolean;
begin
  result := ParceirosModel.Editar;
end;

procedure TControllerParceiros.Excluir;
begin
  ParceirosModel.Excluir;
end;

procedure TControllerParceiros.FecharConexao;
begin
  ParceirosModel.FecharConexao;
end;

procedure TControllerParceiros.Gravar;
begin
  ParceirosModel.Gravar;
end;

procedure TControllerParceiros.Incluir;
begin
  ParceirosModel.Incluir;
end;

procedure TControllerParceiros.Voltar;
begin
  ParceirosModel.Voltar;
end;

end.
