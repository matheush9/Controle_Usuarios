unit uCadastro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, Data.DB, FireDAC.Comp.Client,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  Data.Bind.EngExt, Vcl.Bind.DBEngExt, System.Rtti, System.Bindings.Outputs,
  Vcl.Bind.Editors, Data.Bind.Components, Vcl.StdCtrls, FireDAC.Comp.DataSet,
  Data.Bind.DBScope, Data.Bind.Controls, Vcl.ExtCtrls, Vcl.Buttons,
  Vcl.Bind.Navigator, Vcl.DBCtrls, Vcl.Mask;

type
  TfrmCadastro = class(TForm)
    btn_novo: TButton;
    btn_salvar: TButton;
    btn_limpar: TButton;
    lb_nome: TLabel;
    dbEdit_nome: TDBEdit;
    DataSource1: TDataSource;
    lb_permissao: TLabel;
    dbEdit_permissao: TDBEdit;
    lb_sobrenome: TLabel;
    dbEdit_sobrenome: TDBEdit;
    lb_idade: TLabel;
    dbEdit_idade: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn_novoClick(Sender: TObject);
    procedure btn_salvarClick(Sender: TObject);
    procedure btn_limparClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
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

uses uDmUsuarios;

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

procedure TfrmCadastro.btn_limparClick(Sender: TObject);
begin
  LimparCampos();
end;

procedure TfrmCadastro.btn_novoClick(Sender: TObject);
begin
  LiberarCampos();
  with DmUsuarios do
  begin
    tb_usuarios.insert;
  end;
end;

procedure TfrmCadastro.btn_salvarClick(Sender: TObject);
begin
  with DmUsuarios do
  begin
    tb_usuarios.post;
    LimparCampos();
  end;
end;

procedure TfrmCadastro.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  frmCadastro := nil;
end;

procedure TfrmCadastro.FormCreate(Sender: TObject);
begin
  BloquearCampos();
end;

end.
