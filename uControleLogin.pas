unit uControleLogin;

interface
uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uCrud, Data.DB, Datasnap.Provider,
  Datasnap.DBClient, Vcl.Menus, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids,
  Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Mask;

type
  TfrmControleLogin = class(TfrmCrud)
    lb_login: TLabel;
    dbEdit_login: TDBEdit;
    lb_senha: TLabel;
    lb_permissao: TLabel;
    DBCBPermissao: TDBComboBox;
    edit_senha: TEdit;
    procedure btn_consultarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn_gravarClick(Sender: TObject);
    procedure btn_incluirClick(Sender: TObject);
    procedure btn_cancelarClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    procedure AbrirConexaoDM;
    procedure FecharConexaoDM;
  public
    { Public declarations }
  end;

var
  frmControleLogin: TfrmControleLogin;

implementation

{$R *.dfm}

uses uDmLogin;

procedure TfrmControleLogin.AbrirConexaoDM;
begin
  DmLogin.FDQuery1.Active := true;
  DmLogin.FDQuery1.Open;
end;

procedure TfrmControleLogin.FecharConexaoDM;
begin
  DmLogin.FDQuery1.Active := false;
  DmLogin.FDQuery1.Close;
end;

procedure TfrmControleLogin.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  FecharConexaoDM;
  FreeAndNil(DmLogin);
  Action := CaFree;
end;

procedure TfrmControleLogin.FormCreate(Sender: TObject);
begin
  if Dmlogin = nil then
  begin
    Dmlogin := TDmlogin.Create(Self);
    AbrirConexaoDM;
  end;
  inherited;
end;

procedure TfrmControleLogin.FormDestroy(Sender: TObject);
begin
  inherited;
  frmControleLogin := nil;
end;

procedure TfrmControleLogin.btn_cancelarClick(Sender: TObject);
begin
  inherited;
  edit_senha.visible := false;
  lb_senha.visible := false;
end;

procedure TfrmControleLogin.btn_consultarClick(Sender: TObject);
begin
  inherited;
  AbrirConexaoDM;
  DmLogin.FDQuery1.SQL.Text := 'SELECT * FROM LOGIN';
  ClientDataSet1.refresh;
  ClientDataSet1.First;
end;

procedure TfrmControleLogin.btn_gravarClick(Sender: TObject);
var SenhaCript: string;
begin
  SenhaCript := DmLogin.MD5(edit_senha.Text);
  ClientDataSet1.FieldByName('SENHA').Value := SenhaCript;
  edit_senha.visible := false;
  lb_senha.visible := false;
  edit_senha.Text := EmptyStr;
  inherited;
end;

procedure TfrmControleLogin.btn_incluirClick(Sender: TObject);
begin
  inherited;
  edit_senha.visible := true;
  lb_senha.visible := true;
end;

end.
