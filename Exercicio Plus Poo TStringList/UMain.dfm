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
  object edtName: TEdit
    Left = 16
    Top = 40
    Width = 121
    Height = 21
    TabOrder = 0
    TextHint = 'Name'
  end
  object edtAge: TEdit
    Left = 168
    Top = 40
    Width = 121
    Height = 21
    TabOrder = 1
    TextHint = 'Age'
  end
  object edtType: TEdit
    Left = 316
    Top = 40
    Width = 121
    Height = 21
    TabOrder = 2
    TextHint = 'Type'
  end
  object btSave: TButton
    Left = 31
    Top = 128
    Width = 75
    Height = 25
    Caption = 'Save'
    TabOrder = 3
    OnClick = btSaveClick
  end
  object btShow: TButton
    Left = 362
    Top = 128
    Width = 75
    Height = 25
    Caption = 'Show'
    TabOrder = 4
    OnClick = btShowClick
  end
  object ListBox1: TListBox
    Left = 112
    Top = 80
    Width = 244
    Height = 113
    ItemHeight = 13
    TabOrder = 5
  end
end
