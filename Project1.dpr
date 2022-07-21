program Project1;

uses
  Vcl.Forms,
  uCadastro in 'uCadastro.pas' {frmCadastro},
  uPrincipal in 'uPrincipal.pas' {frmPrincipal},
  uListar in 'uListar.pas' {frmListar},
  uDmConnexao in 'uDmConnexao.pas' {DMConexao: TDataModule},
  uDmUsuarios in 'uDmUsuarios.pas' {DmUsuarios: TDataModule},
  uDmProdutos in 'uDmProdutos.pas' {DataModule3: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TDMConexao, DMConexao);
  Application.CreateForm(TDmUsuarios, DmUsuarios);
  Application.CreateForm(TDataModule3, DataModule3);
  Application.Run;
end.
