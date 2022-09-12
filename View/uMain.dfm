object FrmMain: TFrmMain
  Left = 0
  Top = 0
  Caption = 'UNL Inteligente'
  ClientHeight = 327
  ClientWidth = 558
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIForm
  Menu = MainMenu1
  OldCreateOrder = False
  WindowState = wsMaximized
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object StatusBar1: TStatusBar
    Left = 0
    Top = 296
    Width = 558
    Height = 31
    Panels = <
      item
        Text = 'USU'#193'RIO:'
        Width = 50
      end>
    ExplicitTop = 273
    ExplicitWidth = 527
  end
  object MainMenu1: TMainMenu
    Left = 36
    Top = 25
    object Cadastro1: TMenuItem
      Caption = 'Pessoas'
      object CadastrodeParceiros: TMenuItem
        Caption = 'Cadastro de Parceiros'
        OnClick = CadastrodeParceirosClick
      end
      object CadastrodeUsuarios: TMenuItem
        Caption = 'Cadastro de Usu'#225'rios'
        OnClick = CadastrodeUsuariosClick
      end
    end
    object Sistema1: TMenuItem
      Caption = 'Sistema'
      object ContasUsuarios: TMenuItem
        Caption = 'Contas de Usu'#225'rios'
        OnClick = ContasUsuariosClick
      end
    end
    object Ajuda1: TMenuItem
      Caption = 'Ajuda'
      object Sobre1: TMenuItem
        Caption = 'Sobre'
      end
    end
  end
end
