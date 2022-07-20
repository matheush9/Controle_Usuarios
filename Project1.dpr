program Project1;

uses
  Vcl.Forms,
  uCadastro in 'uCadastro.pas' {frmCadastro},
  uPrincipal in 'uPrincipal.pas' {frmPrincipal},
  uListar in 'uListar.pas' {frmListar};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
