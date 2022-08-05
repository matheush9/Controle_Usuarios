unit uCadastro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uCrud, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids,
  Vcl.Buttons, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  TfrmCadastro = class(TfrmCrud)
    lb_nome: TLabel;
    dbEdit_nome: TDBEdit;
    lb_sobrenome: TLabel;
    dbEdit_sobrenome: TDBEdit;
    lb_idade: TLabel;
    dbEdit_idade: TDBEdit;
    lb_permissao: TLabel;
    dbEdit_permissao: TDBEdit;
  private
    { Private declarations }
    procedure LimparCampos;
    procedure BloquearCampos;
    procedure LiberarCampos;
  public
    { Public declarations }
  end;

var
  frmCadastro: TfrmCadastro;

implementation

{$R *.dfm}

uses uDmUsuarios, uDmConexao;

// Procedures funcionais

procedure TfrmCadastro.LimparCampos;
begin
  dbEdit_nome.Text := EmptyStr;
  dbEdit_sobrenome.Text := EmptyStr;
  dbEdit_permissao.Text := EmptyStr;
  dbEdit_idade.Text := EmptyStr;
end;

procedure TfrmCadastro.BloquearCampos;
begin
  dbEdit_nome.enabled := false;
  dbEdit_sobrenome.enabled := false;
  dbEdit_permissao.enabled := false;
  dbEdit_idade.enabled := false;
end;

procedure TfrmCadastro.LiberarCampos;
begin
  dbEdit_nome.enabled := true;
  dbEdit_sobrenome.enabled := true;
  dbEdit_permissao.enabled := true;
  dbEdit_idade.enabled := true;
end;

//

end.
