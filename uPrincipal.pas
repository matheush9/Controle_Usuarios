unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm2 = class(TForm)
    btn_listar: TButton;
    btn_gerir: TButton;
    btn_cadastrar: TButton;
    procedure btn_cadastrarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

uses Unit1;

procedure TForm2.btn_cadastrarClick(Sender: TObject);
begin
  if Form1 = nil then
  begin
    Form1 := TForm1.Create(Self);
    Form1.ShowModal;
  end;

end;

end.
