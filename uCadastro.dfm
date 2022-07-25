object frmCadastro: TfrmCadastro
  Left = 0
  Top = 0
  Caption = 'Cadastro de Clientes'
  ClientHeight = 303
  ClientWidth = 385
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object lb_nome: TLabel
    Left = 28
    Top = 20
    Width = 35
    Height = 14
    Caption = 'NOME'
    FocusControl = dbEdit_nome
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lb_permissao: TLabel
    Left = 28
    Top = 114
    Width = 74
    Height = 14
    Caption = 'PERMISSAO'
    FocusControl = dbEdit_permissao
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lb_sobrenome: TLabel
    Left = 28
    Top = 67
    Width = 76
    Height = 14
    Caption = 'SOBRENOME'
    FocusControl = dbEdit_sobrenome
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lb_idade: TLabel
    Left = 28
    Top = 161
    Width = 39
    Height = 14
    Caption = 'IDADE'
    FocusControl = dbEdit_idade
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object btn_novo: TButton
    Left = 28
    Top = 224
    Width = 89
    Height = 33
    Caption = 'Novo Usu'#225'rio'
    TabOrder = 4
    OnClick = btn_novoClick
  end
  object btn_salvar: TButton
    Left = 144
    Top = 224
    Width = 89
    Height = 33
    Caption = 'Salvar'
    TabOrder = 5
    OnClick = btn_salvarClick
  end
  object btn_limpar: TButton
    Left = 261
    Top = 224
    Width = 89
    Height = 33
    Caption = 'Limpar'
    TabOrder = 6
    OnClick = btn_limparClick
  end
  object dbEdit_nome: TDBEdit
    Left = 28
    Top = 40
    Width = 322
    Height = 21
    DataField = 'NOME'
    DataSource = DataSource1
    TabOrder = 0
  end
  object dbEdit_permissao: TDBEdit
    Left = 28
    Top = 134
    Width = 322
    Height = 21
    DataField = 'PERMISSAO'
    DataSource = DataSource1
    TabOrder = 2
  end
  object dbEdit_sobrenome: TDBEdit
    Left = 28
    Top = 87
    Width = 322
    Height = 21
    DataField = 'SOBRENOME'
    DataSource = DataSource1
    TabOrder = 1
  end
  object dbEdit_idade: TDBEdit
    Left = 28
    Top = 181
    Width = 322
    Height = 21
    DataField = 'IDADE'
    DataSource = DataSource1
    TabOrder = 3
  end
  object DataSource1: TDataSource
    DataSet = DmUsuarios.tb_usuarios
    Left = 24
    Top = 256
  end
end
