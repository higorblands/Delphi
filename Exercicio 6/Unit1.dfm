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
  object Memo1: TMemo
    Left = 24
    Top = 88
    Width = 185
    Height = 89
    TabOrder = 0
  end
  object Memo2: TMemo
    Left = 240
    Top = 88
    Width = 185
    Height = 89
    TabOrder = 1
  end
  object Button1: TButton
    Left = 199
    Top = 43
    Width = 98
    Height = 25
    Caption = 'Ler arquivo'
    TabOrder = 2
  end
  object Edit1: TEdit
    Left = 39
    Top = 8
    Width = 338
    Height = 21
    TabOrder = 3
    TextHint = 'Nome do arquivo'
  end
  object Button2: TButton
    Left = 39
    Top = 43
    Width = 98
    Height = 25
    Caption = 'Escolher arquivo'
    TabOrder = 4
    OnClick = Button2Click
  end
  object OpenDialog1: TOpenDialog
    DefaultExt = 'txt'
    Filter = 'Texto|*txt'
    Title = 'Abrir arquivo txt'
    Left = 400
    Top = 8
  end
end
