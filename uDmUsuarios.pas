unit uDmUsuarios;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TDmUsuarios = class(TDataModule)
    tb_usuarios: TFDTable;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DmUsuarios: TDmUsuarios;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses uDmConnexao;

{$R *.dfm}

procedure TDmUsuarios.DataModuleCreate(Sender: TObject);
begin
  tb_usuarios.active := true;
end;

end.
