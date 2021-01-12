object FMain: TFMain
  Left = 0
  Top = 0
  Caption = 'Main'
  ClientHeight = 388
  ClientWidth = 724
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 724
    Height = 388
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
        FieldName = 'Nome'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Idade'
        Width = 35
        Visible = True
      end>
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Server=localhost'
      'User_Name=sa'
      'Password=admserver01'
      'Database=DbSTU'
      'DriverID=MSSQL')
    Connected = True
    LoginPrompt = False
    Left = 392
    Top = 8
  end
  object FDQuery1: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      'select * from Pessoa')
    Left = 392
    Top = 64
  end
  object DataSource1: TDataSource
    DataSet = FDQuery1
    Left = 392
    Top = 128
  end
end
