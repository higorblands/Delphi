object FormMain: TFormMain
  Left = 0
  Top = 0
  Caption = 'Principal'
  ClientHeight = 193
  ClientWidth = 444
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object btnExternalSale: TButton
    Left = 176
    Top = 110
    Width = 75
    Height = 25
    Caption = 'External Sale'
    TabOrder = 0
    OnClick = btnExternalSaleClick
  end
  object btnInternalSale: TButton
    Left = 176
    Top = 71
    Width = 75
    Height = 25
    Caption = 'Internal Sale'
    TabOrder = 1
    OnClick = btnInternalSaleClick
  end
  object btnMOIPSale: TButton
    Left = 176
    Top = 149
    Width = 75
    Height = 25
    Caption = 'MOIP Sale'
    TabOrder = 2
  end
  object btnOrderSale: TButton
    Left = 176
    Top = 24
    Width = 75
    Height = 25
    Caption = 'Order Sale'
    TabOrder = 3
    OnClick = btnOrderSaleClick
  end
end
