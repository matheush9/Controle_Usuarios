object frmLogin: TfrmLogin
  Left = 0
  Top = 0
  Anchors = []
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Login'
  ClientHeight = 215
  ClientWidth = 334
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
  OnDestroy = FormDestroy
  DesignSize = (
    334
    215)
  PixelsPerInch = 96
  TextHeight = 13
  object lb_login: TLabel
    Left = 17
    Top = 19
    Width = 37
    Height = 14
    Anchors = []
    Caption = 'LOGIN'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    ExplicitLeft = 20
    ExplicitTop = 20
  end
  object lb_senha: TLabel
    Left = 16
    Top = 79
    Width = 41
    Height = 14
    Anchors = []
    Caption = 'SENHA'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    ExplicitLeft = 17
    ExplicitTop = 81
  end
  object btn_confirmar: TButton
    Left = 17
    Top = 142
    Width = 167
    Height = 40
    Anchors = []
    Caption = 'Confirmar'
    TabOrder = 0
    OnClick = btn_confirmarClick
  end
  object btn_sair: TButton
    Left = 208
    Top = 142
    Width = 106
    Height = 40
    Anchors = []
    Caption = 'Sair'
    TabOrder = 1
    OnClick = btn_sairClick
  end
  object edit_login: TEdit
    Left = 17
    Top = 39
    Width = 297
    Height = 25
    Anchors = []
    AutoSize = False
    TabOrder = 2
  end
  object edit_senha: TEdit
    Left = 17
    Top = 99
    Width = 297
    Height = 25
    Anchors = []
    AutoSize = False
    PasswordChar = '*'
    TabOrder = 3
  end
end
