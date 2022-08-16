unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uCrud, Data.DB, Vcl.Menus, Vcl.Buttons,
  Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.StdCtrls,
  Datasnap.Provider, Datasnap.DBClient;

type
  TfrmPrincipal = class(TfrmCrud)
    Panel1: TPanel;
    Label1: TLabel;
    StatusBar1: TStatusBar;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    armazenaPermissao: string;
    armazenaLogin: string;
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

uses uLogin, uDmLogin;

procedure TfrmPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  //inherited;

end;

procedure TfrmPrincipal.FormCreate(Sender: TObject);
begin
  //inherited;
  frmLogin := TfrmLogin.Create(Self);
  frmLogin.ShowModal;

  if DmLogin.FDQuery1.IsEmpty = false then
  begin
    armazenaPermissao := DmLogin.FDQuery1.FieldByName('PERMISSAO').Value;
    armazenaLogin := DmLogin.FDQuery1.FieldByName('LOGIN').Value;
  end;

  FreeAndNil(DmLogin);
end;

procedure TfrmPrincipal.FormShow(Sender: TObject);
var Permissao: integer;
begin
  inherited;

  // Controle de Permissões dos Usuários

  StatusBar1.Panels[0].Text := StatusBar1.Panels[0].Text + ' ' + armazenaLogin;

  if armazenaPermissao = 'ADM' then
  begin
    Permissao := 0
  end

  else if armazenaPermissao = 'NIVEL1' then
  begin
    Permissao := 1;
  end

  else if armazenaPermissao = 'NIVEL2' then
  begin
    Permissao := 2;
  end;


  case Permissao of

  0: {Permissão completa} ;

  1:
  begin
    MainMenu1.Items[0].Items[0].Enabled := false;
  end;

  2:
  begin
    MainMenu1.Items[2].Enabled := false;
    MainMenu1.Items[0].Items[1].Enabled := false;
  end;

  end;

end;

end.
