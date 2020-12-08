object Form3: TForm3
  Left = 0
  Top = 0
  Caption = 'Form3'
  ClientHeight = 287
  ClientWidth = 539
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
    Left = 16
    Top = 16
    Width = 33
    Height = 17
    Caption = 'Nome'
  end
  object Label2: TLabel
    Left = 16
    Top = 240
    Width = 53
    Height = 13
    Caption = 'Caracteres'
  end
  object Edit1: TEdit
    Left = 64
    Top = 13
    Width = 345
    Height = 21
    TabOrder = 0
    TextHint = 'Local do arquivo'
  end
  object Button1: TButton
    Left = 432
    Top = 11
    Width = 75
    Height = 25
    Caption = 'Abrir'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Memo1: TMemo
    Left = 16
    Top = 40
    Width = 491
    Height = 169
    TabOrder = 2
  end
  object Edit2: TEdit
    Left = 75
    Top = 237
    Width = 121
    Height = 21
    TabOrder = 3
    TextHint = 'Quantidade caracter'
  end
  object OpenDialog1: TOpenDialog
    DefaultExt = 'txt'
    Filter = 'Arquivos Textos|*.txt'
    Title = 'Abrir arquivos de texto'
    Left = 304
    Top = 224
  end
end
