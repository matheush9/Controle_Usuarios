unit uCadastro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
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
    edit_nome: TEdit;
    edit_sobrenome: TEdit;
    edit_permissao: TEdit;
    edit_idade: TEdit;
    label_nome: TLabel;
    label_sobrenome: TLabel;
    label_permissao: TLabel;
    label_idade: TLabel;
    btn_novo: TButton;
    btn_salvar: TButton;
    btn_limpar: TButton;
    procedure btn_novoClick(Sender: TObject);
    procedure btn_salvarClick(Sender: TObject);
    procedure tb_usuariosBeforePost(DataSet: TDataSet);
    procedure btn_limparClick(Sender: TObject);
    procedure btn_cancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
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

// procedures funcionais

procedure TfrmCadastro.LimparCampos;
begin
  edit_nome.Text := EmptyStr;
  edit_sobrenome.Text := EmptyStr;
  edit_idade.Text := EmptyStr;
  edit_permissao.Text := EmptyStr;
end;

procedure TfrmCadastro.BloquearCampos;
begin
  edit_nome.Enabled := false;
  edit_sobrenome.Enabled := false;
  edit_permissao.Enabled := false;
  edit_idade.Enabled := false;
end;

procedure TfrmCadastro.LiberarCampos;
begin
  edit_nome.Enabled := true;
  edit_sobrenome.Enabled := true;
  edit_permissao.Enabled := true;
  edit_idade.Enabled := true;
end;

// botões
procedure TfrmCadastro.btn_cancelarClick(Sender: TObject);
begin
  abort();
end;

procedure TfrmCadastro.btn_limparClick(Sender: TObject);
begin
  LimparCampos;
end;

procedure TfrmCadastro.btn_novoClick(Sender: TObject);
begin
  LiberarCampos;
  with DmUsuarios do
  begin
   tb_usuarios.Insert;
  end;
end;

procedure TfrmCadastro.btn_salvarClick(Sender: TObject);
begin
  with DmUsuarios do
  begin
  tb_usuarios.Post;
  end;
  LimparCampos;
  BloquearCampos;
  ShowMessage('Usuário Cadastrado com sucesso!');
end;

//

procedure TfrmCadastro.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  frmCadastro := nil;
end;

procedure TfrmCadastro.tb_usuariosBeforePost(DataSet: TDataSet);
begin
  with DmUsuarios do
  begin
  tb_usuarios.FieldByName('NOME').Value := edit_nome.Text;
  tb_usuarios.FieldByName('SOBRENOME').Value := edit_sobrenome.Text;
  tb_usuarios.FieldByName('IDADE').Value := edit_idade.Text;
  tb_usuarios.FieldByName('PERMISSAO').Value := edit_permissao.Text;
  end;
end;

end.
