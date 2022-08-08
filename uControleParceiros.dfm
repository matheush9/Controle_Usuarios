inherited frmControleParceiros: TfrmControleParceiros
  Caption = 'Controle de Parceiros'
  PixelsPerInch = 96
  TextHeight = 13
  inherited PageControl1: TPageControl
    inherited TabSheet1: TTabSheet
      inherited MainPanel: TPanel
        ExplicitTop = 56
        object lb_nome: TLabel
          Left = 9
          Top = 16
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
          Top = 212
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
          Top = 65
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
          Left = 9
          Top = 163
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
          Top = 114
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
        object lb_cpf: TLabel
          Left = 70
          Top = 163
          Width = 22
          Height = 16
          Caption = 'CPF'
          FocusControl = dbEdit_cpf
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lb_idade: TLabel
          Left = 172
          Top = 212
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
        object dbEdit_nome: TDBEdit
          Left = 9
          Top = 38
          Width = 400
          Height = 21
          DataField = 'NOME'
          DataSource = DataSource1
          TabOrder = 0
        end
        object dbEdit_telefone: TDBEdit
          Left = 9
          Top = 234
          Width = 134
          Height = 21
          DataField = 'TELEFONE'
          DataSource = DataSource1
          TabOrder = 1
        end
        object dbEdit_endereco: TDBEdit
          Left = 9
          Top = 87
          Width = 400
          Height = 21
          DataField = 'ENDERECO'
          DataSource = DataSource1
          TabOrder = 2
        end
        object dbEdit_uf: TDBEdit
          Left = 9
          Top = 185
          Width = 30
          Height = 21
          DataField = 'UF'
          DataSource = DataSource1
          TabOrder = 3
        end
        object dbEdit_cidade: TDBEdit
          Left = 9
          Top = 136
          Width = 250
          Height = 21
          DataField = 'CIDADE'
          DataSource = DataSource1
          TabOrder = 4
        end
        object dbEdit_cpf: TDBEdit
          Left = 70
          Top = 185
          Width = 150
          Height = 21
          DataField = 'CPF'
          DataSource = DataSource1
          TabOrder = 5
        end
        object dbEdit_idade: TDBEdit
          Left = 172
          Top = 234
          Width = 40
          Height = 21
          DataField = 'IDADE'
          DataSource = DataSource1
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
            Width = 400
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
            FieldName = 'CPF'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'IDADE'
            Width = 35
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
  inherited DataSource1: TDataSource
    DataSet = DmParceiros.FDQuery1
    Top = 248
  end
end
