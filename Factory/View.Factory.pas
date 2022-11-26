unit View.Factory;

interface

uses
  uCrud, Vcl.Forms;

type
  TViewFactory = class
    private
    public
    class function CriaFrmCadastro(Frm: String): TfrmCrud;
    class function CriaFrmLogin: Tform;
  end;

implementation

uses
  uController, uControleParceiros, uControleUsuarios, uControleLogin, uLogin;


{ TViewFactory }

class function TViewFactory.CriaFrmCadastro(Frm: String): TfrmCrud;
begin
  if Frm = 'Parceiros' then
    Result := TfrmControleParceiros.Create(nil)
  else if Frm = 'Usuarios' then
    Result := TfrmControleUsuarios.Create(nil)
  else if Frm = 'Login' then
    Result := TfrmControleLogin.Create(nil);
end;

class function TViewFactory.CriaFrmLogin: Tform;
begin
  Result := TfrmLogin.Create(nil);
end;

end.
