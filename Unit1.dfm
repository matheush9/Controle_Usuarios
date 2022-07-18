object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Cadastro de Clientes'
  ClientHeight = 278
  ClientWidth = 450
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  DesignSize = (
    450
    278)
  PixelsPerInch = 96
  TextHeight = 13
  object label_nome: TLabel
    Left = 28
    Top = 30
    Width = 40
    Height = 16
    Caption = 'Nome:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object label_sobrenome: TLabel
    Left = 28
    Top = 73
    Width = 78
    Height = 16
    Caption = 'Sobrenome:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object label_permissao: TLabel
    Left = 28
    Top = 114
    Width = 71
    Height = 16
    Anchors = []
    Caption = 'Permiss'#227'o:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object label_idade: TLabel
    Left = 28
    Top = 157
    Width = 42
    Height = 16
    Caption = 'Idade:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object edit_nome: TEdit
    Left = 112
    Top = 29
    Width = 184
    Height = 21
    Enabled = False
    TabOrder = 0
  end
  object edit_sobrenome: TEdit
    Left = 112
    Top = 72
    Width = 184
    Height = 21
    Enabled = False
    TabOrder = 1
  end
  object edit_permissao: TEdit
    Left = 112
    Top = 113
    Width = 184
    Height = 21
    Enabled = False
    TabOrder = 2
  end
  object edit_idade: TEdit
    Left = 112
    Top = 156
    Width = 184
    Height = 21
    Enabled = False
    TabOrder = 3
  end
  object btn_novo: TButton
    Left = 24
    Top = 216
    Width = 75
    Height = 25
    Caption = 'Novo Usu'#225'rio'
    TabOrder = 4
    OnClick = btn_novoClick
  end
  object btn_editar: TButton
    Left = 105
    Top = 216
    Width = 75
    Height = 25
    Caption = 'Editar'
    TabOrder = 5
  end
  object btn_salvar: TButton
    Left = 186
    Top = 216
    Width = 75
    Height = 25
    Caption = 'Salvar'
    TabOrder = 6
    OnClick = btn_salvarClick
  end
  object btn_excluir: TButton
    Left = 267
    Top = 216
    Width = 75
    Height = 25
    Caption = 'Excluir'
    TabOrder = 7
  end
  object btn_cancelar: TButton
    Left = 348
    Top = 216
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 8
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      
        'Database=C:\Users\Conceito\Documents\Embarcadero\Studio\Projects' +
        '\Nova pasta\Win32\Debug\Assets\DBs\SEXTODB.FDB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'DriverID=FB')
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    Left = 400
    Top = 72
  end
  object tb_usuarios: TFDTable
    BeforeInsert = tb_usuariosBeforeInsert
    Connection = FDConnection1
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    Left = 400
    Top = 16
  end
end
