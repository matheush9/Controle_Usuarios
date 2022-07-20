unit uListar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids;

type
  TfrmListar = class(TForm)
    DBGrid1: TDBGrid;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmListar: TfrmListar;

implementation

{$R *.dfm}

uses uPrincipal;


procedure TfrmListar.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  frmListar := nil;
end;

procedure TfrmListar.FormCreate(Sender: TObject);
begin
  with frmPrincipal do
  begin
    DBGrid1.DataSource := DataSource1;
  end;
end;

end.
