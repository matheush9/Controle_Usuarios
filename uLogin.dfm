object frmLogin: TfrmLogin
  Left = 0
  Top = 0
  Caption = 'Login'
  ClientHeight = 237
  ClientWidth = 399
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lb_login: TLabel
    Left = 48
    Top = 29
    Width = 37
    Height = 14
    Alignment = taCenter
    Caption = 'LOGIN'
    FocusControl = dbEdit_login
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lb_senha: TLabel
    Left = 48
    Top = 93
    Width = 41
    Height = 14
    Caption = 'SENHA'
    FocusControl = dbEdit_senha
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object dbEdit_login: TDBEdit
    Left = 48
    Top = 48
    Width = 300
    Height = 21
    DataField = 'LOGIN'
    DataSource = DataSource1
    TabOrder = 0
  end
  object dbEdit_senha: TDBEdit
    Left = 48
    Top = 112
    Width = 300
    Height = 21
    DataField = 'SENHA'
    DataSource = DataSource1
    PasswordChar = '*'
    TabOrder = 1
  end
  object btn_confirmar: TButton
    Left = 88
    Top = 152
    Width = 80
    Height = 35
    Caption = 'Confirmar'
    TabOrder = 2
    OnClick = btn_confirmarClick
  end
  object btn_sair: TButton
    Left = 216
    Top = 152
    Width = 80
    Height = 35
    Caption = 'Sair'
    TabOrder = 3
    OnClick = btn_sairClick
  end
  object DataSource1: TDataSource
    DataSet = DmLogin.FDTable1
    Left = 344
    Top = 160
  end
end
