inherited frmControleUsuarios: TfrmControleUsuarios
  Caption = 'Controle de Usu'#225'rios'
  FormStyle = fsMDIChild
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  inherited PageControl1: TPageControl
    inherited TabSheet1: TTabSheet
      inherited MainPanel: TPanel
        object lb_cargo: TLabel
          Left = 5
          Top = 255
          Width = 43
          Height = 14
          Caption = 'CARGO'
          FocusControl = dbEdit_cargo
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lb_cidade: TLabel
          Left = 5
          Top = 161
          Width = 47
          Height = 14
          Caption = 'CIDADE'
          FocusControl = dbEdit_cidade
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lb_endereco: TLabel
          Left = 5
          Top = 114
          Width = 64
          Height = 14
          Caption = 'ENDERECO'
          FocusControl = dbEdit_endereco
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lb_nome: TLabel
          Left = 5
          Top = 19
          Width = 35
          Height = 14
          Caption = 'NOME'
          FocusControl = dbEdit_nome
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lb_permissao: TLabel
          Left = 5
          Top = 208
          Width = 74
          Height = 14
          Caption = 'PERMISSAO'
          FocusControl = dbEdit_permissao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lb_telefone: TLabel
          Left = 5
          Top = 66
          Width = 58
          Height = 14
          Caption = 'TELEFONE'
          FocusControl = dbEdit_telefone
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lb_uf: TLabel
          Left = 277
          Top = 161
          Width = 14
          Height = 14
          Caption = 'UF'
          FocusControl = dbEdit_uf
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object dbEdit_cargo: TDBEdit
          Left = 5
          Top = 275
          Width = 200
          Height = 21
          DataField = 'CARGO'
          DataSource = DataSourceCRUD
          TabOrder = 0
        end
        object dbEdit_cidade: TDBEdit
          Left = 5
          Top = 181
          Width = 250
          Height = 21
          DataField = 'CIDADE'
          DataSource = DataSourceCRUD
          TabOrder = 1
        end
        object dbEdit_endereco: TDBEdit
          Left = 5
          Top = 134
          Width = 450
          Height = 21
          DataField = 'ENDERECO'
          DataSource = DataSourceCRUD
          TabOrder = 2
        end
        object dbEdit_nome: TDBEdit
          AlignWithMargins = True
          Left = 5
          Top = 39
          Width = 450
          Height = 21
          DataField = 'NOME'
          DataSource = DataSourceCRUD
          TabOrder = 3
        end
        object dbEdit_permissao: TDBEdit
          Left = 5
          Top = 228
          Width = 150
          Height = 21
          DataField = 'PERMISSAO'
          DataSource = DataSourceCRUD
          TabOrder = 4
        end
        object dbEdit_telefone: TDBEdit
          Left = 5
          Top = 86
          Width = 200
          Height = 21
          DataField = 'TELEFONE'
          DataSource = DataSourceCRUD
          TabOrder = 5
        end
        object dbEdit_uf: TDBEdit
          Left = 277
          Top = 181
          Width = 50
          Height = 21
          DataField = 'UF'
          DataSource = DataSourceCRUD
          TabOrder = 6
        end
      end
    end
    inherited TabSheet2: TTabSheet
      inherited DBGrid1: TDBGrid
        Columns = <
          item
            Expanded = False
            FieldName = 'NOME'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TELEFONE'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ENDERECO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'UF'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CIDADE'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CARGO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PERMISSAO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'USUARIOS_ID'
            Visible = True
          end>
      end
    end
  end
  inherited CrudBarPanel: TPanel
    inherited btn_editar: TSpeedButton
      ExplicitLeft = 48
      ExplicitTop = 8
      ExplicitHeight = 45
    end
  end
end
