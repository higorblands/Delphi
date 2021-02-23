object FormMOIPOrder: TFormMOIPOrder
  Left = 0
  Top = 0
  Caption = 'MOIP Order'
  ClientHeight = 242
  ClientWidth = 527
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object LMoipOrder: TLabel
    Left = 398
    Top = 13
    Width = 97
    Height = 13
    Caption = 'MOIP Order Number'
  end
  object edtMoipOrder: TEdit
    Left = 382
    Top = 32
    Width = 137
    Height = 21
    Alignment = taCenter
    BiDiMode = bdLeftToRight
    ParentBiDiMode = False
    TabOrder = 0
    TextHint = 'Enter MOIP order number'
  end
end
