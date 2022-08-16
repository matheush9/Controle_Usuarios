inherited frmControleLogin: TfrmControleLogin
  Caption = 'Controle Logins'
  PixelsPerInch = 96
  TextHeight = 13
  inherited PageControl1: TPageControl
    inherited TabSheet1: TTabSheet
      inherited MainPanel: TPanel
        object lb_login: TLabel
          Left = 32
          Top = 56
          Width = 37
          Height = 14
          Caption = 'LOGIN'
          FocusControl = dbEdit_login
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lb_senha: TLabel
          Left = 32
          Top = 145
          Width = 41
          Height = 14
          Caption = 'SENHA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Visible = False
        end
        object lb_permissao: TLabel
          Left = 32
          Top = 99
          Width = 74
          Height = 14
          Caption = 'PERMISSAO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object dbEdit_login: TDBEdit
          Left = 32
          Top = 72
          Width = 394
          Height = 21
          DataField = 'LOGIN'
          DataSource = DataSourceCRUD
          TabOrder = 0
        end
        object DBCBPermissao: TDBComboBox
          Left = 32
          Top = 118
          Width = 145
          Height = 21
          DataField = 'PERMISSAO'
          DataSource = DataSourceCRUD
          Items.Strings = (
            'ADM'
            'NIVEL2'
            'NIVEL1')
          TabOrder = 1
        end
        object edit_senha: TEdit
          Left = 32
          Top = 164
          Width = 250
          Height = 21
          PasswordChar = '*'
          TabOrder = 2
          Visible = False
        end
      end
    end
    inherited TabSheet2: TTabSheet
      inherited DBGrid1: TDBGrid
        Columns = <
          item
            Expanded = False
            FieldName = 'LOGIN_ID'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LOGIN'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PERMISSAO'
            Visible = True
          end>
      end
    end
  end
  inherited CrudBarPanel: TPanel
    inherited btn_consultar: TSpeedButton
      ExplicitLeft = 224
      ExplicitTop = 3
      ExplicitHeight = 45
    end
    inherited btn_excluir: TSpeedButton
      Enabled = False
    end
  end
  inherited DataSetProvider1: TDataSetProvider
    DataSet = DmLogin.FDQuery1
  end
end
