object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 428
  ClientWidth = 366
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object edtName: TEdit
    Left = 40
    Top = 93
    Width = 121
    Height = 21
    TabOrder = 0
    TextHint = 'Nome'
  end
  object edtAge: TEdit
    Left = 200
    Top = 93
    Width = 125
    Height = 21
    TabOrder = 1
    TextHint = 'Idade'
  end
  object PageControl1: TPageControl
    Left = 40
    Top = 136
    Width = 289
    Height = 193
    ActivePage = TabClient
    TabOrder = 2
    object TabClient: TTabSheet
      Caption = 'Cliente'
      object edtPaymentDay: TEdit
        Left = 72
        Top = 53
        Width = 121
        Height = 21
        TabOrder = 0
        TextHint = 'Dia de vencimento'
      end
      object edtAdress: TEdit
        Left = 72
        Top = 88
        Width = 121
        Height = 21
        TabOrder = 1
        TextHint = 'Endere'#231'o'
      end
      object btSaveClient: TButton
        Left = 96
        Top = 124
        Width = 75
        Height = 25
        Caption = 'Cadastrar'
        TabOrder = 2
        OnClick = btSaveClientClick
      end
    end
    object TabSaler: TTabSheet
      Caption = 'Vendedor'
      ImageIndex = 1
      object edtType: TEdit
        Left = 72
        Top = 91
        Width = 121
        Height = 21
        TabOrder = 0
        TextHint = 'Tipo de Vendedor'
      end
      object edtCommission: TEdit
        Left = 72
        Top = 56
        Width = 121
        Height = 21
        TabOrder = 1
        TextHint = 'Comiss'#227'o'
      end
      object btSaveSaler: TButton
        Left = 96
        Top = 118
        Width = 75
        Height = 25
        Caption = 'Cadastrar'
        TabOrder = 2
        OnClick = btSaveSalerClick
      end
    end
  end
  object btSee: TButton
    Left = 140
    Top = 347
    Width = 75
    Height = 25
    Caption = 'Ver'
    TabOrder = 3
    OnClick = btSeeClick
  end
end
