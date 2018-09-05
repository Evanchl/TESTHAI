object DM: TDM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 412
  Width = 732
  object conHAIMIS: TADOConnection
    LoginPrompt = False
    Left = 112
    Top = 40
  end
  object qryStaff: TADOQuery
    Connection = conHAIMIS
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'select * from T_STAFF where ENABLE_FLAG = '#39'Y'#39)
    Left = 112
    Top = 96
  end
end
