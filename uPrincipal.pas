unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmPrincipal = class(TForm)
    btn_listar: TButton;
    btn_gerir: TButton;
    btn_cadastrar: TButton;
    procedure btn_cadastrarClick(Sender: TObject);
    procedure btn_listarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

uses uCadastro, uListar;

procedure TfrmPrincipal.btn_cadastrarClick(Sender: TObject);
begin
  if frmCadastro = nil then
  begin
    frmCadastro := TfrmCadastro.Create(Self);
    frmCadastro.ShowModal;
  end;

end;

procedure TfrmPrincipal.btn_listarClick(Sender: TObject);
begin
  if frmListar = nil then
  begin
    frmListar := TfrmListar.Create(Self);
    frmListar.ShowModal;
  end;

end;

end.
