program Project1;
uses
  Vcl.Forms,
  uDmUsuarios in 'uDmUsuarios.pas' {DmUsuarios: TDataModule},
  uDmConexao in 'uDmConexao.pas' {DmConexao: TDataModule},
  uCrud in 'uCrud.pas' {frmCrud},
  uControleUsuarios in 'uControleUsuarios.pas' {frmControleUsuarios},
  uDmParceiros in 'uDmParceiros.pas' {DmParceiros: TDataModule},
  uControleParceiros in 'uControleParceiros.pas' {frmControleParceiros},
  uPrincipal in 'uPrincipal.pas' {frmPrincipal},
  Vcl.Themes,
  Vcl.Styles,
  uLogin in 'uLogin.pas' {frmLogin},
  uDmLogin in 'uDmLogin.pas' {DmLogin: TDataModule};

{$R *.res}
begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Iceberg Classico');
  Application.CreateForm(TDmConexao, DmConexao);
  Application.CreateForm(TDmLogin, DmLogin);
  Application.CreateForm(TfrmLogin, frmLogin);
  Application.Run;
end.
