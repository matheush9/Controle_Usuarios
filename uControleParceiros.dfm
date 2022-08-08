inherited frmControleParceiros: TfrmControleParceiros
  Caption = 'Controle de Parceiros'
  PixelsPerInch = 96
  TextHeight = 13
  inherited PageControl1: TPageControl
    ActivePage = TabSheet1
    inherited TabSheet1: TTabSheet
      inherited MainPanel: TPanel
        ExplicitTop = 56
        object Label1: TLabel
          Left = 15
          Top = 16
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
          Left = 65
          Top = 118
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
          Left = 15
          Top = 67
          Width = 47
          Height = 14
          Caption = 'CIDADE'
          FocusControl = DBEdit3
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label4: TLabel
          Left = 15
          Top = 118
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
          Left = 15
          Top = 169
          Width = 64
          Height = 14
          Caption = 'ENDERECO'
          FocusControl = DBEdit5
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label6: TLabel
          Left = 15
          Top = 220
          Width = 22
          Height = 14
          Caption = 'CPF'
          FocusControl = DBEdit6
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBEdit1: TDBEdit
          Left = 15
          Top = 36
          Width = 400
          Height = 25
          DataField = 'NOME'
          DataSource = DataSourceCRUD
          TabOrder = 0
        end
        object DBEdit2: TDBEdit
          Left = 65
          Top = 138
          Width = 100
          Height = 25
          DataField = 'TELEFONE'
          DataSource = DataSourceCRUD
          TabOrder = 1
        end
        object DBEdit3: TDBEdit
          Left = 15
          Top = 87
          Width = 150
          Height = 25
          DataField = 'CIDADE'
          DataSource = DataSourceCRUD
          TabOrder = 2
        end
        object DBEdit4: TDBEdit
          Left = 15
          Top = 138
          Width = 30
          Height = 25
          DataField = 'UF'
          DataSource = DataSourceCRUD
          TabOrder = 3
        end
        object DBEdit5: TDBEdit
          Left = 15
          Top = 189
          Width = 300
          Height = 25
          DataField = 'ENDERECO'
          DataSource = DataSourceCRUD
          TabOrder = 4
        end
        object DBEdit6: TDBEdit
          Left = 15
          Top = 240
          Width = 150
          Height = 25
          DataField = 'CPF'
          DataSource = DataSourceCRUD
          TabOrder = 5
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
            FieldName = 'CIDADE'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'UF'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ENDERECO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CPF'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PARCEIROS_ID'
            Visible = True
          end>
      end
    end
  end
  inherited DataSourceCRUD: TDataSource
    DataSet = DmParceiros.FDQuery1
    Top = 160
  end
end
