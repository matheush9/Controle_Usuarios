unit Unit1;

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
  Vcl.Bind.Navigator, Vcl.DBCtrls;

type
  TForm1 = class(TForm)
    edit_nome: TEdit;
    edit_sobrenome: TEdit;
    edit_permissao: TEdit;
    edit_idade: TEdit;
    label_nome: TLabel;
    label_sobrenome: TLabel;
    label_permissao: TLabel;
    label_idade: TLabel;
    FDConnection1: TFDConnection;
    tb_usuarios: TFDTable;
    btn_novo: TButton;
    btn_salvar: TButton;
    btn_limpar: TButton;
    btn_cancelar: TButton;
    procedure FormCreate(Sender: TObject);
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
  Form1: TForm1;

implementation

{$R *.dfm}

// procedures funcionais

procedure TForm1.LimparCampos;
begin
  edit_nome.Text := EmptyStr;
  edit_sobrenome.Text := EmptyStr;
  edit_idade.Text := EmptyStr;
  edit_permissao.Text := EmptyStr;
end;

procedure TForm1.BloquearCampos;
begin
  edit_nome.Enabled := false;
  edit_sobrenome.Enabled := false;
  edit_permissao.Enabled := false;
  edit_idade.Enabled := false;
end;

procedure TForm1.LiberarCampos;
begin
  edit_nome.Enabled := true;
  edit_sobrenome.Enabled := true;
  edit_permissao.Enabled := true;
  edit_idade.Enabled := true;
end;

// botões
procedure TForm1.btn_cancelarClick(Sender: TObject);
begin
  abort();
end;

procedure TForm1.btn_limparClick(Sender: TObject);
begin
  LimparCampos;
end;

procedure TForm1.btn_novoClick(Sender: TObject);
begin
  LiberarCampos;
  tb_usuarios.Insert;
end;

procedure TForm1.btn_salvarClick(Sender: TObject);
begin
  tb_usuarios.Post;
  LimparCampos;
  BloquearCampos;
  ShowMessage('Usuário Cadastrado com sucesso!');
end;

//

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Form1 := nil;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  FDConnection1.params.database := getcurrentdir+'/Assets/DBs/PRIMEIRODB.FDB';
  FDConnection1.Connected := true;
  tb_usuarios.TableName := 'USUARIOS_2';
  tb_usuarios.active := true;
end;

procedure TForm1.tb_usuariosBeforePost(DataSet: TDataSet);
begin
  tb_usuarios.FieldByName('NOME').Value := edit_nome.Text;
  tb_usuarios.FieldByName('SOBRENOME').Value := edit_sobrenome.Text;
  tb_usuarios.FieldByName('IDADE').Value := edit_idade.Text;
  tb_usuarios.FieldByName('PERMISSAO').Value := edit_permissao.Text;
end;

end.
