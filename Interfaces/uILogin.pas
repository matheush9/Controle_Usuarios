unit uILogin;

interface

type
  ILogin = interface
  ['{953DAABB-5FE3-4133-8A44-9972E889D82B}']
    function ToMD5(const value: string): string;
    function IsQueryEmpty: boolean;
    procedure AutenticarLogin(Login, senha: string);
    procedure ReceberSenhaCript(Senha: string);
    function RetornaPermissao: string;
    function RetornaLogin: string;
  end;

implementation

end.
