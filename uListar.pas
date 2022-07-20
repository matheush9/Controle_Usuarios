unit uListar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmListar = class(TForm)
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmListar: TfrmListar;

implementation

{$R *.dfm}

procedure TfrmListar.FormActivate(Sender: TObject);
begin
  frmListar := nil;
end;

end.
