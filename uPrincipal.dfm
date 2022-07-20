object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Sistema Controle de Usu'#225'rios'
  ClientHeight = 187
  ClientWidth = 552
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
    552
    187)
  PixelsPerInch = 96
  TextHeight = 13
  object btn_listar: TButton
    Left = 216
    Top = 57
    Width = 113
    Height = 58
    Anchors = [akLeft, akRight]
    Caption = 'Listar Usu'#225'rios'
    TabOrder = 0
    OnClick = btn_listarClick
  end
  object btn_gerir: TButton
    Left = 392
    Top = 57
    Width = 113
    Height = 58
    Anchors = [akLeft, akRight]
    Caption = 'Gerir Usu'#225'rios'
    TabOrder = 1
  end
  object btn_cadastrar: TButton
    Left = 40
    Top = 57
    Width = 113
    Height = 58
    Anchors = [akLeft, akRight]
    Caption = 'Cadastrar Usu'#225'rios'
    TabOrder = 2
    OnClick = btn_cadastrarClick
  end
  object FDConnection1: TFDConnection
    Left = 32
    Top = 8
  end
  object tb_usuarios: TFDTable
    Connection = FDConnection1
    Left = 104
    Top = 8
  end
  object DataSource1: TDataSource
    Left = 168
    Top = 8
  end
end
