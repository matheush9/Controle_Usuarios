unit View.Factory;

interface

type
  IViewFactory = class(TInterfacedObject);
  ['{7EADEE8F-8DC6-41A2-8DFF-592B905DD3CF}']

  TViewFactory = class
    private
    public
    constructor Create;
    destructor Destroy;
  end;

implementation

uses
  uController, uControleParceiros, uControleUsuarios, uControleLogin, uLogin;


end.
