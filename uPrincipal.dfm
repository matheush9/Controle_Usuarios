object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Sistema Controle de Usu'#225'rios'
  ClientHeight = 168
  ClientWidth = 552
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  DesignSize = (
    552
    168)
  PixelsPerInch = 96
  TextHeight = 13
  object btn_listar: TButton
    Left = 216
    Top = 50
    Width = 113
    Height = 49
    Anchors = []
    Caption = 'Listar Usu'#225'rios'
    TabOrder = 0
    ExplicitTop = 65
  end
  object btn_gerir: TButton
    Left = 392
    Top = 50
    Width = 113
    Height = 49
    Anchors = []
    Caption = 'Gerir Usu'#225'rios'
    TabOrder = 1
  end
  object btn_cadastrar: TButton
    Left = 40
    Top = 50
    Width = 113
    Height = 49
    Anchors = []
    Caption = 'Cadastrar Usu'#225'rios'
    TabOrder = 2
    OnClick = btn_cadastrarClick
    ExplicitTop = 65
  end
end
