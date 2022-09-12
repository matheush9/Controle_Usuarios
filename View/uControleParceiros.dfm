inherited frmControleParceiros: TfrmControleParceiros
  Caption = 'Controle de Parceiros'
  FormStyle = fsMDIChild
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  inherited PageControl1: TPageControl
    inherited TabSheet1: TTabSheet
      inherited MainPanel: TPanel
        object lb_nome: TLabel
          Left = 5
          Top = 20
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
        object lb_telefone: TLabel
          Left = 5
          Top = 71
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
        object lb_endereco: TLabel
          Left = 5
          Top = 122
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
        object lb_uf: TLabel
          Left = 5
          Top = 173
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
        object lb_cidade: TLabel
          Left = 65
          Top = 173
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
        object lb_cpf: TLabel
          Left = 67
          Top = 224
          Width = 22
          Height = 14
          Caption = 'CPF'
          FocusControl = dbEdit_cpf
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lb_idade: TLabel
          Left = 5
          Top = 224
          Width = 39
          Height = 14
          Caption = 'IDADE'
          FocusControl = dbEdit_idade
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object dbEdit_nome: TDBEdit
          Left = 5
          Top = 40
          Width = 450
          Height = 21
          DataField = 'NOME'
          DataSource = DataSourceCRUD
          TabOrder = 0
        end
        object dbEdit_telefone: TDBEdit
          Left = 5
          Top = 91
          Width = 200
          Height = 21
          DataField = 'TELEFONE'
          DataSource = DataSourceCRUD
          TabOrder = 1
        end
        object dbEdit_endereco: TDBEdit
          Left = 5
          Top = 142
          Width = 450
          Height = 21
          DataField = 'ENDERECO'
          DataSource = DataSourceCRUD
          TabOrder = 2
        end
        object dbEdit_uf: TDBEdit
          Left = 5
          Top = 193
          Width = 50
          Height = 21
          DataField = 'UF'
          DataSource = DataSourceCRUD
          TabOrder = 3
        end
        object dbEdit_cidade: TDBEdit
          Left = 65
          Top = 193
          Width = 250
          Height = 21
          DataField = 'CIDADE'
          DataSource = DataSourceCRUD
          TabOrder = 4
        end
        object dbEdit_cpf: TDBEdit
          Left = 67
          Top = 244
          Width = 250
          Height = 21
          DataField = 'CPF'
          DataSource = DataSourceCRUD
          TabOrder = 5
        end
        object dbEdit_idade: TDBEdit
          Left = 5
          Top = 244
          Width = 50
          Height = 21
          DataField = 'IDADE'
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
end
