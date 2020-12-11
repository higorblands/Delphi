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
  object Edit1: TEdit
    Left = 104
    Top = 88
    Width = 129
    Height = 21
    TabOrder = 0
    TextHint = 'Digite o nome do arquivo'
  end
  object Button1: TButton
    Left = 247
    Top = 86
    Width = 75
    Height = 25
    Caption = 'Ler arquivo'
    TabOrder = 1
    OnClick = Button1Click
  end
end
