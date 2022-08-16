object frmLogin: TfrmLogin
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Login'
  ClientHeight = 222
  ClientWidth = 409
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
  DesignSize = (
    409
    222)
  PixelsPerInch = 96
  TextHeight = 13
  object lb_login: TLabel
    Left = 48
    Top = 31
    Width = 37
    Height = 14
    Anchors = [akLeft, akRight]
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
    Top = 83
    Width = 41
    Height = 14
    Anchors = [akLeft, akRight]
    Caption = 'SENHA'
    FocusControl = dbEdit_senha
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object btn_confirmar: TButton
    Left = 88
    Top = 152
    Width = 80
    Height = 40
    Caption = 'Confirmar'
    TabOrder = 0
    OnClick = btn_confirmarClick
  end
  object btn_sair: TButton
    Left = 216
    Top = 152
    Width = 80
    Height = 40
    Caption = 'Sair'
    TabOrder = 1
    OnClick = btn_sairClick
  end
  object dbEdit_login: TDBEdit
    Left = 48
    Top = 51
    Width = 300
    Height = 21
    Anchors = [akLeft, akRight]
    BevelEdges = [beLeft, beTop]
    DataField = 'LOGIN'
    DataSource = DataSource1
    TabOrder = 2
  end
  object dbEdit_senha: TDBEdit
    Left = 48
    Top = 103
    Width = 300
    Height = 21
    Anchors = [akLeft, akRight]
    DataField = 'SENHA'
    DataSource = DataSource1
    PasswordChar = '*'
    TabOrder = 3
  end
  object DataSource1: TDataSource
    DataSet = DmLogin.FDQuery1
    Left = 344
    Top = 152
  end
end
