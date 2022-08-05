inherited frmCadastro: TfrmCadastro
  ClientHeight = 512
  ClientWidth = 566
  ExplicitWidth = 582
  ExplicitHeight = 551
  PixelsPerInch = 96
  TextHeight = 13
  inherited PageControl1: TPageControl
    Width = 566
    Height = 512
    ExplicitWidth = 566
    ExplicitHeight = 512
    inherited TabSheet1: TTabSheet
      ExplicitWidth = 558
      ExplicitHeight = 484
      inherited MainPanel: TPanel
        Top = 57
        Width = 558
        Height = 427
        ExplicitWidth = 558
        ExplicitHeight = 429
        object lb_nome: TLabel [0]
          Left = 8
          Top = 24
          Width = 35
          Height = 16
          Caption = 'NOME'
          FocusControl = dbEdit_nome
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lb_sobrenome: TLabel [1]
          Left = 8
          Top = 75
          Width = 76
          Height = 16
          Caption = 'SOBRENOME'
          FocusControl = dbEdit_sobrenome
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lb_idade: TLabel [2]
          Left = 8
          Top = 124
          Width = 40
          Height = 16
          Caption = 'IDADE'
          FocusControl = dbEdit_idade
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lb_permissao: TLabel [3]
          Left = 8
          Top = 173
          Width = 75
          Height = 16
          Caption = 'PERMISSAO'
          FocusControl = dbEdit_permissao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object dbEdit_nome: TDBEdit [4]
          Left = 8
          Top = 44
          Width = 350
          Height = 21
          DataField = 'NOME'
          DataSource = DataSource1
          TabOrder = 0
        end
        object dbEdit_sobrenome: TDBEdit [5]
          Left = 8
          Top = 93
          Width = 350
          Height = 21
          DataField = 'SOBRENOME'
          DataSource = DataSource1
          TabOrder = 1
        end
        object dbEdit_idade: TDBEdit [6]
          Left = 8
          Top = 142
          Width = 350
          Height = 21
          DataField = 'IDADE'
          DataSource = DataSource1
          TabOrder = 2
        end
        object dbEdit_permissao: TDBEdit [7]
          Left = 8
          Top = 191
          Width = 350
          Height = 21
          DataField = 'PERMISSAO'
          DataSource = DataSource1
          TabOrder = 3
        end
        inherited DBNavigator1: TDBNavigator
          Left = 8
          Top = 312
          Hints.Strings = ()
          TabOrder = 4
          ExplicitLeft = 8
          ExplicitTop = 312
        end
      end
      inherited CrudBarPanel: TPanel
        Width = 558
        Height = 57
        ExplicitWidth = 558
        ExplicitHeight = 57
        inherited btn_incluir: TSpeedButton
          Height = 49
        end
        inherited btn_gravar: TSpeedButton
          Height = 49
        end
        inherited btn_editar: TSpeedButton
          Height = 49
        end
        inherited btn_cancelar: TSpeedButton
          Height = 49
        end
        inherited btn_excluir: TSpeedButton
          Height = 49
        end
        inherited btn_voltar: TSpeedButton
          Height = 49
        end
        inherited btn_avançar: TSpeedButton
          Height = 49
          ExplicitLeft = 268
          ExplicitHeight = 49
        end
      end
    end
    inherited TabSheet2: TTabSheet
      ExplicitWidth = 558
      ExplicitHeight = 484
      inherited DBGrid1: TDBGrid
        Width = 558
        Height = 484
        Columns = <
          item
            Expanded = False
            FieldName = 'ID'
            Width = 30
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOME'
            Width = 150
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SOBRENOME'
            Width = 200
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'IDADE'
            Width = 45
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PERMISSAO'
            Width = 100
            Visible = True
          end>
      end
    end
  end
end
