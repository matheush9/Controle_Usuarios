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
    btn_editar: TButton;
    btn_salvar: TButton;
    btn_excluir: TButton;
    btn_cancelar: TButton;
    procedure FormCreate(Sender: TObject);
    procedure btn_novoClick(Sender: TObject);
    procedure btn_salvarClick(Sender: TObject);
    procedure tb_usuariosBeforePost(DataSet: TDataSet);
    procedure tb_usuariosBeforeInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btn_novoClick(Sender: TObject);
begin
  tb_usuarios.Insert;
end;

procedure TForm1.btn_salvarClick(Sender: TObject);
begin
  tb_usuarios.Post;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  FDConnection1.params.database := getcurrentdir+'/Assets/DBs/SEXTODB.FDB';
  FDConnection1.Connected := true;
  tb_usuarios.TableName := 'USUARIOS';
  tb_usuarios.active := true;
end;

procedure TForm1.tb_usuariosBeforeInsert(DataSet: TDataSet);
begin
  edit_nome.Enabled := true;
  edit_sobrenome.Enabled := true;
  edit_permissao.Enabled := true;
  edit_idade.Enabled := true;
end;

procedure TForm1.tb_usuariosBeforePost(DataSet: TDataSet);
begin
  tb_usuarios.FieldByName('NOME').Value := edit_nome.Text;
  SHOWMESSAGE(tb_usuarios.FieldByName('NOME').Value);
  tb_usuarios.FieldByName('SOBRENOME').Value := edit_sobrenome.Text;
  tb_usuarios.FieldByName('IDADE').Value := edit_idade.Text;
  tb_usuarios.FieldByName('PERMISSAO').Value := edit_permissao.Text;
end;

end.
