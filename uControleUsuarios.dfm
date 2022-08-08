inherited frmControleUsuarios: TfrmControleUsuarios
  Caption = 'Controle de Usu'#225'rios'
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
        ExplicitLeft = 4
        ExplicitTop = 58
        ExplicitWidth = 558
        ExplicitHeight = 427
        object lb_nome: TLabel
          Left = 10
          Top = 32
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
        object lb_telefone: TLabel
          Left = 10
          Top = 228
          Width = 58
          Height = 16
          Caption = 'TELEFONE'
          FocusControl = dbEdit_telefone
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lb_endereco: TLabel
          Left = 10
          Top = 81
          Width = 64
          Height = 16
          Caption = 'ENDERECO'
          FocusControl = dbEdit_endereco
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lb_uf: TLabel
          Left = 10
          Top = 130
          Width = 14
          Height = 16
          Caption = 'UF'
          FocusControl = dbEdit_uf
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lb_cidade: TLabel
          Left = 62
          Top = 130
          Width = 48
          Height = 16
          Caption = 'CIDADE'
          FocusControl = dbEdit_cidade
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lb_cargo: TLabel
          Left = 10
          Top = 179
          Width = 44
          Height = 16
          Caption = 'CARGO'
          FocusControl = dbEdit_cargo
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lb_permissao: TLabel
          Left = 10
          Top = 277
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
        object dbEdit_nome: TDBEdit
          Left = 10
          Top = 54
          Width = 450
          Height = 21
          DataField = 'NOME'
          DataSource = DataSource1
          TabOrder = 0
        end
        object dbEdit_telefone: TDBEdit
          Left = 10
          Top = 250
          Width = 134
          Height = 21
          DataField = 'TELEFONE'
          DataSource = DataSource1
          TabOrder = 1
        end
        object dbEdit_endereco: TDBEdit
          Left = 10
          Top = 103
          Width = 450
          Height = 21
          DataField = 'ENDERECO'
          DataSource = DataSource1
          TabOrder = 2
        end
        object dbEdit_uf: TDBEdit
          Left = 10
          Top = 152
          Width = 30
          Height = 21
          DataField = 'UF'
          DataSource = DataSource1
          TabOrder = 3
        end
        object dbEdit_cidade: TDBEdit
          Left = 60
          Top = 152
          Width = 150
          Height = 21
          DataField = 'CIDADE'
          DataSource = DataSource1
          TabOrder = 4
        end
        object dbEdit_cargo: TDBEdit
          Left = 10
          Top = 201
          Width = 150
          Height = 21
          DataField = 'CARGO'
          DataSource = DataSource1
          TabOrder = 5
        end
        object dbEdit_permissao: TDBEdit
          Left = 10
          Top = 299
          Width = 100
          Height = 21
          DataField = 'PERMISSAO'
          DataSource = DataSource1
          TabOrder = 6
        end
      end
      inherited CrudBarPanel: TPanel
        Width = 558
        Height = 57
        ExplicitWidth = 558
        ExplicitHeight = 57
        inherited btn_incluir: TSpeedButton
          Height = 49
          ExplicitHeight = 49
        end
        inherited btn_gravar: TSpeedButton
          Height = 49
          ExplicitHeight = 49
        end
        inherited btn_editar: TSpeedButton
          Height = 49
          ExplicitHeight = 49
        end
        inherited btn_cancelar: TSpeedButton
          Height = 49
          ExplicitHeight = 49
        end
        inherited btn_excluir: TSpeedButton
          Height = 49
          ExplicitHeight = 49
        end
        inherited btn_voltar: TSpeedButton
          Height = 49
          ExplicitHeight = 49
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
            FieldName = 'NOME'
            Width = 400
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TELEFONE'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ENDERECO'
            Width = 350
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'UF'
            Width = 30
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CIDADE'
            Width = 150
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CARGO'
            Width = 200
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PERMISSAO'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'USUARIOS_ID'
            Width = 74
            Visible = True
          end>
      end
    end
  end
  inherited DataSource1: TDataSource
    Left = 512
    Top = 264
  end
end
