unit uControleParceiros;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uCrud, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.Buttons, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.Menus;

type
  TfrmControleParceiros = class(TfrmCrud)
    lb_nome: TLabel;
    dbEdit_nome: TDBEdit;
    lb_telefone: TLabel;
    dbEdit_telefone: TDBEdit;
    lb_cidade: TLabel;
    dbEdit_cidade: TDBEdit;
    lb_uf: TLabel;
    dbEdit_uf: TDBEdit;
    lb_endereco: TLabel;
    dbEdit_endereco: TDBEdit;
    lb_cpf: TLabel;
    dbEdit_cpf: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmControleParceiros: TfrmControleParceiros;

implementation

{$R *.dfm}

uses uDmParceiros;


procedure TfrmControleParceiros.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  //inherited;
  frmControleParceiros := nil;
end;

end.
