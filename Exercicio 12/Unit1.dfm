object FormMenu: TFormMenu
  Left = 0
  Top = 0
  Caption = 'FormMenu'
  ClientHeight = 232
  ClientWidth = 461
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object btnInSale: TButton
    Left = 176
    Top = 81
    Width = 91
    Height = 33
    Caption = 'Internal Sale'
    TabOrder = 0
    OnClick = btnInSaleClick
  end
  object btnExSale: TButton
    Left = 176
    Top = 25
    Width = 91
    Height = 33
    Caption = 'External Sale'
    TabOrder = 1
    OnClick = btnExSaleClick
  end
  object btnMOIPSale: TButton
    Left = 176
    Top = 137
    Width = 91
    Height = 33
    Caption = 'MOIP Sale'
    TabOrder = 2
    OnClick = btnMOIPSaleClick
  end
  object btnOrderSale: TButton
    Left = 176
    Top = 191
    Width = 91
    Height = 33
    Caption = 'Order Sale'
    TabOrder = 3
    OnClick = btnOrderSaleClick
  end
end
