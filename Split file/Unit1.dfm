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
  object Label1: TLabel
    Left = 40
    Top = 5
    Width = 81
    Height = 13
    Caption = 'Nome do arquivo'
  end
  object Edit1: TEdit
    Left = 29
    Top = 24
    Width = 121
    Height = 21
    TabOrder = 0
    TextHint = 'Nome do arquivo'
  end
  object Button1: TButton
    Left = 180
    Top = 20
    Width = 75
    Height = 25
    Caption = 'Ler'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Memo1: TMemo
    Left = 16
    Top = 51
    Width = 185
    Height = 89
    TabOrder = 2
  end
  object Memo2: TMemo
    Left = 240
    Top = 51
    Width = 185
    Height = 89
    TabOrder = 3
  end
end
