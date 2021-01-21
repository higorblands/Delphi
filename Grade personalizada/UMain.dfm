object FMain: TFMain
  Left = 0
  Top = 0
  Caption = 'Main'
  ClientHeight = 248
  ClientWidth = 696
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object lbWarning: TLabel
    Left = 393
    Top = 151
    Width = 111
    Height = 13
    Caption = 'Click ap'#243's ligar o banco'
  end
  object DBGrid1: TDBGrid
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 690
    Height = 137
    Align = alTop
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CodigoProduto'
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'digo do produto'
        Width = 108
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Descricao'
        Title.Alignment = taCenter
        Title.Caption = 'Descri'#231#227'o'
        Width = 131
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'AlteracaoDataHora'
        Title.Alignment = taCenter
        Title.Caption = 'Data da '#250'ltima altera'#231#227'o'
        Width = 133
        Visible = True
      end>
  end
  object Button1: TButton
    Left = 304
    Top = 146
    Width = 75
    Height = 25
    Caption = 'See'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 8
    Top = 184
    Width = 75
    Height = 25
    Caption = 'Ligar banco'
    TabOrder = 2
    OnClick = Button2Click
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=DbKairos_Aprovi'
      'User_Name=sa'
      'Password=admserver01'
      'Server=localhost'
      'DriverID=MSSQL')
    LoginPrompt = False
    Left = 128
    Top = 168
  end
  object FDQuery1: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      '')
    Left = 192
    Top = 168
  end
  object DataSource1: TDataSource
    DataSet = FDQuery1
    Left = 256
    Top = 168
  end
end
