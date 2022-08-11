object DmParceiros: TDmParceiros
  OldCreateOrder = False
  Height = 212
  Width = 279
  object FDQuery1: TFDQuery
    Connection = DmConexao.FDConnection1
    SQL.Strings = (
      'SELECT * FROM PARCEIROS WHERE PARCEIROS_ID = 0;')
    Left = 88
    Top = 72
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
    end
    object FDQuery1IDADE: TIntegerField
      FieldName = 'IDADE'
      Origin = 'IDADE'
    end
    object FDQuery1PARCEIROS_ID: TIntegerField
      FieldName = 'PARCEIROS_ID'
      Origin = 'PARCEIROS_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
  end
  object FDTable1: TFDTable
    IndexFieldNames = 'PARCEIROS_ID'
    Connection = DmConexao.FDConnection1
    TableName = 'PARCEIROS'
    Left = 152
    Top = 72
  end
end
