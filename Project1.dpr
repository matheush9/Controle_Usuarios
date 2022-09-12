program Project1;
uses
  Vcl.Forms,
  Vcl.Themes,
  Vcl.Styles,
  uControleLogin in 'View\uControleLogin.pas' {frmControleLogin},
  uControleParceiros in 'View\uControleParceiros.pas' {frmControleParceiros},
  uControleUsuarios in 'View\uControleUsuarios.pas' {frmControleUsuarios},
  uLogin in 'View\uLogin.pas' {frmLogin},
  uMain in 'View\uMain.pas' {FrmMain},
  uCrud.Model in 'Model\uCrud.Model.pas',
  uControleComponentes in 'Utils\uControleComponentes.pas',
  uControllerParceiros in 'Controller\uControllerParceiros.pas',
  uDmConexao in 'Model\uDmConexao.pas' {DmConexao: TDataModule},
  uCrud in 'View\uCrud.pas' {frmCrud},
  uControllerUsuarios in 'Controller\uControllerUsuarios.pas',
  uControllerLogin in 'Controller\uControllerLogin.pas',
  uController in 'Controller\uController.pas',
  uLogin.Model in 'Model\uLogin.Model.pas',
  uParceiros.Model in 'Model\uParceiros.Model.pas',
  uUsuarios.Model in 'Model\uUsuarios.Model.pas';

{$R *.res}
begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Iceberg Classico');
  Application.CreateForm(TDmConexao, DmConexao);
  Application.CreateForm(TFrmMain, FrmMain);
  Application.Run;
end.
