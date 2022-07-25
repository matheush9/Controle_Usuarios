program Project1;
uses
  Vcl.Forms,
  uCadastro in 'uCadastro.pas' {frmCadastro},
  uPrincipal in 'uPrincipal.pas' {frmPrincipal},
  uListar in 'uListar.pas' {frmListar},
<<<<<<< HEAD
  uDmConexao in 'uDmConexao.pas' {DMConexao: TDataModule},
  uDmUsuarios in 'uDmUsuarios.pas' {DmUsuarios: TDataModule};
=======
  uDmConnexao in 'uDmConnexao.pas' {DMConexao: TDataModule},
  uDmUsuarios in 'uDmUsuarios.pas' {DmUsuarios: TDataModule},
  uDmProdutos in 'uDmProdutos.pas' {DataModule3: TDataModule};
>>>>>>> parent of b5c0a71 (feat: use dataModules for better use of connection between db components)

{$R *.res}
begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TDMConexao, DMConexao);
  Application.CreateForm(TDmUsuarios, DmUsuarios);
<<<<<<< HEAD
=======
  Application.CreateForm(TDataModule3, DataModule3);
>>>>>>> parent of b5c0a71 (feat: use dataModules for better use of connection between db components)
  Application.Run;
end.
