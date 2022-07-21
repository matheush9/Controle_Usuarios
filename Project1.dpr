program Project1;

uses
  Vcl.Forms,
  uCadastro in 'uCadastro.pas' {frmCadastro},
  uPrincipal in 'uPrincipal.pas' {frmPrincipal},
  uListar in 'uListar.pas' {frmListar},
  uDmConexao in 'uDmConexao.pas' {DMConexao: TDataModule},
  uDmUsuarios in 'uDmUsuarios.pas' {DmUsuarios: TDataModule},
  uDmProdutos in 'uDmProdutos.pas' {DmProdutos: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TDMConexao, DMConexao);
  Application.CreateForm(TDmUsuarios, DmUsuarios);
  Application.CreateForm(TDmProdutos, DmProdutos);
  Application.Run;
end.
