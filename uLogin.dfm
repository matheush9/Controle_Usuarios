object frmLogin: TfrmLogin
  Left = 0
  Top = 0
  Anchors = []
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Login'
  ClientHeight = 264
  ClientWidth = 400
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
    400
    264)
  PixelsPerInch = 96
  TextHeight = 13
  object lb_login: TLabel
    Left = 47
    Top = 46
    Width = 37
    Height = 14
    Anchors = []
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
    Left = 47
    Top = 108
    Width = 41
    Height = 14
    Anchors = []
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
    Left = 85
    Top = 180
    Width = 80
    Height = 40
    Anchors = []
    Caption = 'Confirmar'
    TabOrder = 2
    OnClick = btn_confirmarClick
  end
  object btn_sair: TButton
    Left = 210
    Top = 180
    Width = 80
    Height = 40
    Anchors = []
    Caption = 'Sair'
    TabOrder = 3
    OnClick = btn_sairClick
  end
  object dbEdit_login: TDBEdit
    Left = 44
    Top = 71
    Width = 300
    Height = 21
    Anchors = []
    BevelEdges = [beLeft, beTop]
    DataField = 'LOGIN'
    DataSource = DataSource1
    TabOrder = 0
  end
  object dbEdit_senha: TDBEdit
    Left = 44
    Top = 132
    Width = 300
    Height = 21
    Anchors = []
    DataField = 'SENHA'
    DataSource = DataSource1
    PasswordChar = '*'
    TabOrder = 1
  end
  object DataSource1: TDataSource
    DataSet = DmLogin.FDQuery1
    Left = 336
    Top = 184
  end
end
