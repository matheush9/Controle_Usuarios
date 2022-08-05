program Project1;
uses
  Vcl.Forms,
  uCadastro in 'uCadastro.pas' {frmCadastro},
  uDmUsuarios in 'uDmUsuarios.pas' {DmUsuarios: TDataModule},
  uDmConexao in 'uDmConexao.pas' {DmConexao: TDataModule};

{$R *.res}
begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDmConexao, DmConexao);
  Application.CreateForm(TDmUsuarios, DmUsuarios);
  Application.CreateForm(TfrmCadastro, frmCadastro);
  Application.Run;
end.
