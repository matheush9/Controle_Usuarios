unit uICrud;

interface

type
  ICrud = interface
    ['{F56B5D93-4002-4D2C-A3B1-DDB0BCE7B697}']
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
  end;

implementation

end.
