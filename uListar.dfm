object frmListar: TfrmListar
  Left = 0
  Top = 0
  Caption = 'Listar Usu'#225'rios'
  ClientHeight = 491
  ClientWidth = 752
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 752
    Height = 491
    Align = alClient
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'ID'
        Width = 25
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SOBRENOME'
        Width = 250
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
        FieldName = 'PERMISSAO'
        Width = 150
        Visible = True
      end>
  end
  object DataSource1: TDataSource
    DataSet = FDQuery1
    Left = 192
    Top = 96
  end
  object FDQuery1: TFDQuery
    Active = True
    Connection = DmConexao.FDConnection1
    SQL.Strings = (
      'SELECT * FROM USUARIOS_2;')
    Left = 248
    Top = 96
    object FDQuery1ID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQuery1NOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 50
    end
    object FDQuery1SOBRENOME: TStringField
      FieldName = 'SOBRENOME'
      Origin = 'SOBRENOME'
      Size = 100
    end
    object FDQuery1IDADE: TIntegerField
      FieldName = 'IDADE'
      Origin = 'IDADE'
    end
    object FDQuery1PERMISSAO: TStringField
      FieldName = 'PERMISSAO'
      Origin = 'PERMISSAO'
      Size = 50
    end
  end
end
