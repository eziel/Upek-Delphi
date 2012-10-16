object Form1: TForm1
  Left = 864
  Top = 491
  BorderStyle = bsToolWindow
  Caption = 'ok'
  ClientHeight = 145
  ClientWidth = 177
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object Button4: TButton
    Left = 43
    Top = 60
    Width = 95
    Height = 33
    Caption = 'Enroll'
    TabOrder = 0
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 38
    Top = 14
    Width = 101
    Height = 34
    Caption = 'Test Verfiy'
    TabOrder = 1
    OnClick = Button5Click
  end
  object MSTable1: TMSTable
    TableName = 'Templates'
    Connection = MSConnection1
    Left = 1
    Top = 116
  end
  object MSConnection1: TMSConnection
    Database = 'Toys4You'
    Options.PersistSecurityInfo = True
    Options.Provider = prSQL
    Username = 'sa'
    Password = 'ds36'
    Server = '192.168.1.100,1533'
    Left = 38
    Top = 114
  end
  object MSDataSource1: TDataSource
    DataSet = MSTable1
    Left = 79
    Top = 117
  end
end
