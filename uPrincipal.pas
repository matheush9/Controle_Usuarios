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
    Image1: TImage;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

uses uLogin;

procedure TfrmPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  //inherited;

end;

procedure TfrmPrincipal.FormCreate(Sender: TObject);
begin
  //inherited;
  frmLogin := TfrmLogin.Create(Self);
  frmLogin.ShowModal;

end;

end.
