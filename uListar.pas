unit uListar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids;

type
  TfrmListar = class(TForm)
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmListar: TfrmListar;

implementation

{$R *.dfm}

uses uDmUsuarios;


procedure TfrmListar.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  frmListar := nil;
end;

end.
