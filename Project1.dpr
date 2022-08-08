program Project1;
uses
  Vcl.Forms,
  uDmUsuarios in 'uDmUsuarios.pas' {DmUsuarios: TDataModule},
  uDmConexao in 'uDmConexao.pas' {DmConexao: TDataModule},
  uCrud in 'uCrud.pas' {frmCrud},
  uControleUsuarios in 'uControleUsuarios.pas' {frmControleUsuarios},
  uDmParceiros in 'uDmParceiros.pas' {DmParceiros: TDataModule},
  uControleParceiros in 'uControleParceiros.pas' {frmControleParceiros};

{$R *.res}
begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDmConexao, DmConexao);
  Application.CreateForm(TDmUsuarios, DmUsuarios);
  Application.CreateForm(TfrmControleUsuarios, frmControleUsuarios);
  Application.Run;
end.
