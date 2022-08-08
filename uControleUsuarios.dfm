inherited frmControleUsuarios: TfrmControleUsuarios
  Caption = 'Controle de Usu'#225'rios'
  PixelsPerInch = 96
  TextHeight = 13
  inherited PageControl1: TPageControl
    ActivePage = TabSheet1
    inherited TabSheet1: TTabSheet
      inherited MainPanel: TPanel
        object Label1: TLabel
          Left = 9
          Top = 12
          Width = 35
          Height = 16
          Caption = 'NOME'
          FocusControl = DBEdit1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label2: TLabel
          Left = 9
          Top = 65
          Width = 58
          Height = 16
          Caption = 'TELEFONE'
          FocusControl = DBEdit2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label3: TLabel
          Left = 9
          Top = 118
          Width = 64
          Height = 16
          Caption = 'ENDERECO'
          FocusControl = DBEdit3
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label4: TLabel
          Left = 164
          Top = 65
          Width = 14
          Height = 16
          Caption = 'UF'
          FocusControl = DBEdit4
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label5: TLabel
          Left = 9
          Top = 171
          Width = 48
          Height = 16
          Caption = 'CIDADE'
          FocusControl = DBEdit5
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label6: TLabel
          Left = 9
          Top = 224
          Width = 44
          Height = 16
          Caption = 'CARGO'
          FocusControl = DBEdit6
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label7: TLabel
          Left = 9
          Top = 277
          Width = 75
          Height = 16
          Caption = 'PERMISSAO'
          FocusControl = DBEdit7
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBEdit1: TDBEdit
          Left = 9
          Top = 34
          Width = 400
          Height = 25
          DataField = 'NOME'
          DataSource = DataSourceCRUD
          TabOrder = 0
        end
        object DBEdit2: TDBEdit
          Left = 9
          Top = 87
          Width = 134
          Height = 25
          DataField = 'TELEFONE'
          DataSource = DataSourceCRUD
          TabOrder = 1
        end
        object DBEdit3: TDBEdit
          Left = 9
          Top = 140
          Width = 400
          Height = 25
          DataField = 'ENDERECO'
          DataSource = DataSourceCRUD
          TabOrder = 2
        end
        object DBEdit4: TDBEdit
          Left = 164
          Top = 87
          Width = 30
          Height = 25
          DataField = 'UF'
          DataSource = DataSourceCRUD
          TabOrder = 3
        end
        object DBEdit5: TDBEdit
          Left = 9
          Top = 193
          Width = 200
          Height = 25
          DataField = 'CIDADE'
          DataSource = DataSourceCRUD
          TabOrder = 4
        end
        object DBEdit6: TDBEdit
          Left = 9
          Top = 246
          Width = 200
          Height = 25
          DataField = 'CARGO'
          DataSource = DataSourceCRUD
          TabOrder = 5
        end
        object DBEdit7: TDBEdit
          Left = 9
          Top = 299
          Width = 150
          Height = 25
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
