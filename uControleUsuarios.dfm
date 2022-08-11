inherited frmControleUsuarios: TfrmControleUsuarios
  Caption = 'Controle de Usu'#225'rios'
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  inherited PageControl1: TPageControl
    inherited TabSheet1: TTabSheet
      inherited MainPanel: TPanel
        object Label1: TLabel
          Left = 5
          Top = 20
          Width = 35
          Height = 14
          Caption = 'NOME'
          FocusControl = DBEdit1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label2: TLabel
          Left = 5
          Top = 71
          Width = 58
          Height = 14
          Caption = 'TELEFONE'
          FocusControl = DBEdit2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label3: TLabel
          Left = 5
          Top = 122
          Width = 64
          Height = 14
          Caption = 'ENDERECO'
          FocusControl = DBEdit3
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label4: TLabel
          Left = 5
          Top = 173
          Width = 14
          Height = 14
          Caption = 'UF'
          FocusControl = DBEdit4
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label5: TLabel
          Left = 71
          Top = 173
          Width = 47
          Height = 14
          Caption = 'CIDADE'
          FocusControl = DBEdit5
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label6: TLabel
          Left = 5
          Top = 224
          Width = 43
          Height = 14
          Caption = 'CARGO'
          FocusControl = DBEdit6
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label7: TLabel
          Left = 5
          Top = 275
          Width = 74
          Height = 14
          Caption = 'PERMISSAO'
          FocusControl = DBEdit7
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBEdit1: TDBEdit
          Left = 5
          Top = 40
          Width = 350
          Height = 25
          DataField = 'NOME'
          DataSource = DataSourceCRUD
          TabOrder = 0
        end
        object DBEdit2: TDBEdit
          Left = 5
          Top = 91
          Width = 150
          Height = 25
          DataField = 'TELEFONE'
          DataSource = DataSourceCRUD
          TabOrder = 1
        end
        object DBEdit3: TDBEdit
          Left = 5
          Top = 142
          Width = 350
          Height = 25
          DataField = 'ENDERECO'
          DataSource = DataSourceCRUD
          TabOrder = 2
        end
        object DBEdit4: TDBEdit
          Left = 5
          Top = 193
          Width = 45
          Height = 25
          DataField = 'UF'
          DataSource = DataSourceCRUD
          TabOrder = 3
        end
        object DBEdit5: TDBEdit
          Left = 71
          Top = 193
          Width = 200
          Height = 25
          DataField = 'CIDADE'
          DataSource = DataSourceCRUD
          TabOrder = 4
        end
        object DBEdit6: TDBEdit
          Left = 5
          Top = 244
          Width = 150
          Height = 25
          DataField = 'CARGO'
          DataSource = DataSourceCRUD
          TabOrder = 5
        end
        object DBEdit7: TDBEdit
          Left = 5
          Top = 295
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
