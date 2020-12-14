object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 201
  ClientWidth = 445
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Idade: TLabel
    Left = 296
    Top = 152
    Width = 28
    Height = 13
    Caption = 'Idade'
  end
  object Peso: TLabel
    Left = 384
    Top = 152
    Width = 23
    Height = 13
    Caption = 'Peso'
  end
  object Label3: TLabel
    Left = 304
    Top = 24
    Width = 81
    Height = 13
    Caption = 'Nome do arquivo'
  end
  object ListBox1: TListBox
    Left = 0
    Top = 0
    Width = 249
    Height = 201
    ItemHeight = 13
    TabOrder = 0
  end
  object age: TEdit
    Left = 279
    Top = 171
    Width = 69
    Height = 21
    TabOrder = 1
  end
  object weight: TEdit
    Left = 368
    Top = 171
    Width = 69
    Height = 21
    TabOrder = 2
  end
  object nameFile: TEdit
    Left = 286
    Top = 43
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object Button1: TButton
    Left = 310
    Top = 70
    Width = 75
    Height = 25
    Caption = 'Verificar'
    TabOrder = 4
  end
end
