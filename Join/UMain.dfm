object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Main Form'
  ClientHeight = 544
  ClientWidth = 767
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
    Width = 767
    Height = 544
    Align = alClient
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=DbKairos_Aprovi'
      'User_Name=sa'
      'Password=admserver01'
      'Server=LOCALHOST'
      'DriverID=MSSQL')
    Connected = True
    LoginPrompt = False
    Left = 384
    Top = 16
  end
  object FDQuery1: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      'select '
      #9'Produto.CodigoProduto,'
      #9'Produto.Descricao,'
      #9'LoteProduto.NumeroLote,'
      #9'LoteProduto.DataValidade'
      ' from '
      ''
      'Produto'
      ''
      
        'inner join LoteProduto ON produto.CodigoProduto = LoteProduto.Co' +
        'digoProduto')
    Left = 384
    Top = 72
  end
  object DataSource1: TDataSource
    DataSet = FDQuery1
    Left = 384
    Top = 136
  end
end
