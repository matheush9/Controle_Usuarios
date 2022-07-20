object frmCadastro: TfrmCadastro
  Left = 0
  Top = 0
  Caption = 'Cadastro de Clientes'
  ClientHeight = 266
  ClientWidth = 407
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  DesignSize = (
    407
    266)
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
    Width = 238
    Height = 21
    Enabled = False
    TabOrder = 0
  end
  object edit_sobrenome: TEdit
    Left = 112
    Top = 72
    Width = 238
    Height = 21
    Enabled = False
    TabOrder = 1
  end
  object edit_permissao: TEdit
    Left = 112
    Top = 113
    Width = 238
    Height = 21
    Enabled = False
    TabOrder = 2
  end
  object edit_idade: TEdit
    Left = 112
    Top = 156
    Width = 238
    Height = 21
    Enabled = False
    TabOrder = 3
  end
  object btn_novo: TButton
    Left = 28
    Top = 208
    Width = 89
    Height = 33
    Caption = 'Novo Usu'#225'rio'
    TabOrder = 4
    OnClick = btn_novoClick
  end
  object btn_salvar: TButton
    Left = 144
    Top = 208
    Width = 89
    Height = 33
    Caption = 'Salvar'
    TabOrder = 5
    OnClick = btn_salvarClick
  end
  object btn_limpar: TButton
    Left = 261
    Top = 208
    Width = 89
    Height = 33
    Caption = 'Limpar'
    TabOrder = 6
    OnClick = btn_limparClick
  end
end
