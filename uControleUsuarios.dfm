inherited frmControleUsuarios: TfrmControleUsuarios
  Caption = 'Controle de Usu'#225'rios'
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  inherited PageControl1: TPageControl
    ActivePage = TabSheet2
    inherited TabSheet1: TTabSheet
      inherited MainPanel: TPanel
        object lb_nome: TLabel
          Left = 9
          Top = 12
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
          Left = 9
          Top = 65
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
          Left = 9
          Top = 118
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
          Left = 164
          Top = 65
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
          Left = 9
          Top = 171
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
          Left = 9
          Top = 224
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
          Left = 9
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
          Left = 9
          Top = 34
          Width = 400
          Height = 21
          DataField = 'NOME'
          DataSource = DataSourceCRUD
          TabOrder = 0
        end
        object dbEdit_telefone: TDBEdit
          Left = 9
          Top = 87
          Width = 134
          Height = 21
          DataField = 'TELEFONE'
          DataSource = DataSourceCRUD
          TabOrder = 1
        end
        object dbEdit_endereco: TDBEdit
          Left = 9
          Top = 140
          Width = 400
          Height = 21
          DataField = 'ENDERECO'
          DataSource = DataSourceCRUD
          TabOrder = 2
        end
        object dbEdit_uf: TDBEdit
          Left = 164
          Top = 87
          Width = 30
          Height = 21
          DataField = 'UF'
          DataSource = DataSourceCRUD
          TabOrder = 3
        end
        object dbEdit_cidade: TDBEdit
          Left = 9
          Top = 193
          Width = 200
          Height = 21
          DataField = 'CIDADE'
          DataSource = DataSourceCRUD
          TabOrder = 4
        end
        object dbEdit_cargo: TDBEdit
          Left = 9
          Top = 246
          Width = 200
          Height = 21
          DataField = 'CARGO'
          DataSource = DataSourceCRUD
          TabOrder = 5
        end
        object dbEdit_permissao: TDBEdit
          Left = 9
          Top = 299
          Width = 150
          Height = 21
          DataField = 'PERMISSAO'
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
end
