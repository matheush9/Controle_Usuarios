object DmParceiros: TDmParceiros
  OldCreateOrder = False
  Height = 182
  Width = 350
  object FDTable1: TFDTable
    Active = True
    IndexFieldNames = 'PARCEIROS_ID'
    Connection = DmConexao.FDConnection1
    TableName = 'PARCEIROS'
    Left = 72
    Top = 40
    object FDTable1NOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 150
    end
    object FDTable1TELEFONE: TIntegerField
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
    end
    object FDTable1ENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 100
    end
    object FDTable1UF: TStringField
      FieldName = 'UF'
      Origin = 'UF'
      Size = 2
    end
    object FDTable1CIDADE: TStringField
      FieldName = 'CIDADE'
      Origin = 'CIDADE'
    end
    object FDTable1CPF: TIntegerField
      FieldName = 'CPF'
      Origin = 'CPF'
      Required = True
    end
    object FDTable1IDADE: TIntegerField
      FieldName = 'IDADE'
      Origin = 'IDADE'
    end
    object FDTable1PARCEIROS_ID: TIntegerField
      FieldName = 'PARCEIROS_ID'
      Origin = 'PARCEIROS_ID'
      Required = True
    end
  end
  object FDQuery1: TFDQuery
    Active = True
    Connection = DmConexao.FDConnection1
    SQL.Strings = (
      'select * from PARCEIROS;')
    Left = 144
    Top = 40
    object FDQuery1NOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 150
    end
    object FDQuery1TELEFONE: TIntegerField
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
    end
    object FDQuery1ENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 100
    end
    object FDQuery1UF: TStringField
      FieldName = 'UF'
      Origin = 'UF'
      Size = 2
    end
    object FDQuery1CIDADE: TStringField
      FieldName = 'CIDADE'
      Origin = 'CIDADE'
    end
    object FDQuery1CPF: TIntegerField
      FieldName = 'CPF'
      Origin = 'CPF'
      Required = True
    end
    object FDQuery1IDADE: TIntegerField
      FieldName = 'IDADE'
      Origin = 'IDADE'
    end
    object FDQuery1PARCEIROS_ID: TIntegerField
      FieldName = 'PARCEIROS_ID'
      Origin = 'PARCEIROS_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
end
