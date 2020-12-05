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
    Left = 23
    Top = 8
    Width = 406
    Height = 13
    Caption = 
      'Tipo de triangulos : Para usar o programa digite um '#250'nico n'#250'mero' +
      ' nos campos abaixo'
  end
  object edtValor1: TEdit
    Left = 80
    Top = 40
    Width = 49
    Height = 21
    TabOrder = 0
    TextHint = 'Lado A'
  end
  object edtValor2: TEdit
    Left = 202
    Top = 40
    Width = 49
    Height = 21
    TabOrder = 1
    TextHint = 'Lado B'
  end
  object edtValor3: TEdit
    Left = 318
    Top = 40
    Width = 49
    Height = 21
    TabOrder = 2
    TextHint = 'Lado C'
  end
  object edtResultado: TEdit
    Left = 80
    Top = 144
    Width = 287
    Height = 21
    TabOrder = 3
    TextHint = 'O tipo de triangulo ir'#225' ser apresentado aqui'
  end
  object btVerificar: TButton
    Left = 192
    Top = 99
    Width = 75
    Height = 25
    Caption = 'Verificar'
    TabOrder = 4
    OnClick = btVerificarClick
  end
end
