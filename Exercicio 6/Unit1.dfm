object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 398
  ClientWidth = 712
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
    Left = 8
    Top = 56
    Width = 329
    Height = 89
    TabOrder = 0
  end
  object Memo2: TMemo
    Left = 368
    Top = 56
    Width = 321
    Height = 89
    TabOrder = 1
  end
  object Button1: TButton
    Left = 8
    Top = 163
    Width = 98
    Height = 25
    Caption = 'Ler arquivo'
    TabOrder = 2
  end
  object Edit1: TEdit
    Left = 128
    Top = 10
    Width = 249
    Height = 21
    TabOrder = 3
    TextHint = 'Nome do arquivo .txt'
  end
  object Button2: TButton
    Left = 8
    Top = 8
    Width = 114
    Height = 25
    Caption = 'Digite o nome e click'
    TabOrder = 4
    OnClick = Button2Click
  end
end
