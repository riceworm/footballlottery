object buy: Tbuy
  Left = 283
  Top = 183
  BorderIcons = [biSystemMenu]
  Caption = #27719#27454#22320#22336
  ClientHeight = 388
  ClientWidth = 511
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 511
    Height = 81
    Align = alTop
    BevelInner = bvSpace
    BevelOuter = bvLowered
    Color = clBtnHighlight
    TabOrder = 0
  end
  object Panel2: TPanel
    Left = 0
    Top = 81
    Width = 511
    Height = 272
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 1
  end
  object Pal_01: TPanel
    Left = 0
    Top = 353
    Width = 511
    Height = 35
    Align = alClient
    TabOrder = 2
    object btn_close: TButton
      Left = 424
      Top = 8
      Width = 75
      Height = 25
      Caption = #20851'    '#38381
      TabOrder = 0
      OnClick = btn_closeClick
    end
  end
end
