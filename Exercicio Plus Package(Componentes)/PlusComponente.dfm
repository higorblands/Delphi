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
  object edtProductName: TEdit
    Left = 56
    Top = 48
    Width = 137
    Height = 21
    Alignment = taCenter
    TabOrder = 0
    TextHint = 'Enter the product name'
  end
  object btnSave: TButton
    Left = 80
    Top = 112
    Width = 75
    Height = 25
    Caption = 'Salvar'
    TabOrder = 2
    OnClick = btnSaveClick
  end
  object edtProductCode: TEdit
    Left = 56
    Top = 79
    Width = 137
    Height = 21
    Alignment = taCenter
    TabOrder = 1
    TextHint = 'Enter the product code'
  end
  object ComboBox131: TComboBox13
    Left = 232
    Top = 48
    Width = 145
    Height = 21
    TabOrder = 3
    Text = 'ComboBox131'
    OnSelect = ComboBox131Select
  end
end
