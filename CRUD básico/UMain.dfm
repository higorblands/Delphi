object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Main'
  ClientHeight = 369
  ClientWidth = 767
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
  object ID: TLabel
    Left = 16
    Top = 227
    Width = 17
    Height = 13
    Caption = 'ID*'
  end
  object Nome: TLabel
    Left = 80
    Top = 227
    Width = 33
    Height = 13
    Caption = 'Nome*'
  end
  object Label1: TLabel
    Left = 567
    Top = 227
    Width = 28
    Height = 13
    Caption = 'Turno'
  end
  object label4: TLabel
    Left = 120
    Top = 279
    Width = 102
    Height = 13
    Caption = 'Data de Nascimento*'
  end
  object Label2: TLabel
    Left = 322
    Top = 279
    Width = 83
    Height = 13
    Caption = 'Data de Ingresso'
  end
  object Label3: TLabel
    Left = 16
    Top = 279
    Width = 63
    Height = 13
    Caption = 'ID do Curso*'
  end
  object Período: TLabel
    Left = 481
    Top = 227
    Width = 36
    Height = 13
    Caption = 'Per'#237'odo'
  end
  object btONBD: TButton
    Left = 8
    Top = 182
    Width = 75
    Height = 33
    Caption = 'Ligar banco'
    TabOrder = 0
    OnClick = btONBDClick
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 767
    Height = 176
    Align = alTop
    DataSource = DataSource1
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object btnList: TButton
    Left = 120
    Top = 182
    Width = 75
    Height = 33
    Caption = 'List'
    TabOrder = 2
    OnClick = btnListClick
  end
  object btnInsert: TButton
    Left = 8
    Top = 336
    Width = 75
    Height = 25
    Caption = 'Insert'
    TabOrder = 3
    OnClick = btnInsertClick
  end
  object btnUpdate: TButton
    Left = 144
    Top = 336
    Width = 75
    Height = 25
    Caption = 'Update'
    TabOrder = 4
  end
  object btnDelete: TButton
    Left = 632
    Top = 296
    Width = 75
    Height = 25
    Caption = 'Delete'
    TabOrder = 5
    OnClick = btnDeleteClick
  end
  object edtID: TEdit
    Left = 16
    Top = 246
    Width = 33
    Height = 21
    NumbersOnly = True
    TabOrder = 6
  end
  object edtNome: TEdit
    Left = 80
    Top = 246
    Width = 361
    Height = 21
    TabOrder = 7
  end
  object edtTurno: TEdit
    Left = 567
    Top = 246
    Width = 121
    Height = 21
    TabOrder = 9
  end
  object edtIDCurso: TEdit
    Left = 16
    Top = 298
    Width = 71
    Height = 21
    TabOrder = 10
  end
  object DateTimePicker1: TDateTimePicker
    Left = 120
    Top = 298
    Width = 169
    Height = 21
    Date = 44187.678418564810000000
    Time = 44187.678418564810000000
    TabOrder = 11
  end
  object DateTimePicker2: TDateTimePicker
    Left = 322
    Top = 298
    Width = 169
    Height = 21
    Date = 44187.678557037020000000
    Time = 44187.678557037020000000
    TabOrder = 12
  end
  object edtPeriodo: TEdit
    Left = 481
    Top = 246
    Width = 57
    Height = 21
    NumbersOnly = True
    TabOrder = 8
  end
  object edtDel: TEdit
    Left = 424
    Top = 340
    Width = 195
    Height = 21
    TabOrder = 13
    TextHint = 'Digite o c'#243'digo do aluno para deletar'
    Visible = False
  end
  object btnConfirmDelete: TButton
    Left = 632
    Top = 336
    Width = 89
    Height = 25
    Caption = 'Confirm Delete'
    TabOrder = 14
    Visible = False
    OnClick = btnConfirmDeleteClick
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'User_Name=sa'
      'Password=admserver01'
      'Server=localhost'
      'Database=DbKairos_Aprovi'
      'DriverID=MSSQL')
    LoginPrompt = False
    Left = 296
  end
  object FDQuery1: TFDQuery
    Connection = FDConnection1
    Left = 344
  end
  object DataSource1: TDataSource
    DataSet = FDQuery1
    Left = 424
  end
  object FDQuery2: TFDQuery
    Connection = FDConnection1
    Left = 384
  end
end
