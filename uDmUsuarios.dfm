object DmUsuarios: TDmUsuarios
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 150
  Width = 215
  object tb_usuarios: TFDTable
    Active = True
    IndexFieldNames = 'ID'
    Connection = DMConexao.FDConnection1
    UpdateOptions.AssignedValues = [uvUpdateChngFields, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    TableName = 'USUARIOS_2'
    Left = 88
    Top = 32
    object tb_usuariosID: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ID'
      Origin = 'ID'
    end
    object tb_usuariosNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 50
    end
    object tb_usuariosPERMISSAO: TStringField
      FieldName = 'PERMISSAO'
      Origin = 'PERMISSAO'
      Required = True
      Size = 50
    end
    object tb_usuariosSOBRENOME: TStringField
      FieldName = 'SOBRENOME'
      Origin = 'SOBRENOME'
      Required = True
      Size = 100
    end
    object tb_usuariosIDADE: TIntegerField
      FieldName = 'IDADE'
      Origin = 'IDADE'
      Required = True
    end
  end
end
