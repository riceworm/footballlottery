object qnow: Tqnow
  Left = 193
  Top = 128
  BorderIcons = [biSystemMenu]
  Caption = #26597#35810#25237#27880#25991#20214#20013#22870#20449#24687
  ClientHeight = 507
  ClientWidth = 680
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object StatusBar1: TStatusBar
    Left = 0
    Top = 488
    Width = 680
    Height = 19
    Panels = <>
  end
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 680
    Height = 395
    Align = alClient
    BevelOuter = bvLowered
    TabOrder = 1
    object Panel2: TPanel
      Left = 225
      Top = 1
      Width = 454
      Height = 393
      Align = alClient
      BevelOuter = bvLowered
      TabOrder = 0
      object Panel7: TPanel
        Left = 1
        Top = 1
        Width = 232
        Height = 391
        Align = alLeft
        BevelOuter = bvLowered
        TabOrder = 0
        object Panel8: TPanel
          Left = 1
          Top = 30
          Width = 230
          Height = 163
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 0
          object v2: TValueListEditor
            Left = 0
            Top = 0
            Width = 230
            Height = 163
            Align = alClient
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 0
            ColWidths = (
              100
              126)
          end
        end
        object Panel10: TPanel
          Left = 1
          Top = 1
          Width = 230
          Height = 29
          Align = alTop
          TabOrder = 1
          object Label2: TLabel
            Left = 5
            Top = 9
            Width = 196
            Height = 13
            AutoSize = False
            Caption = #23545#24212#30340#19968#31561#22870#21495#30721
            Font.Charset = GB2312_CHARSET
            Font.Color = clHighlight
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
        object Panel11: TPanel
          Left = 1
          Top = 222
          Width = 230
          Height = 168
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 2
          object v3: TValueListEditor
            Left = 0
            Top = 0
            Width = 230
            Height = 168
            Align = alClient
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 0
            ColWidths = (
              100
              126)
          end
        end
        object Panel12: TPanel
          Left = 1
          Top = 193
          Width = 230
          Height = 29
          Align = alTop
          TabOrder = 3
          object Label3: TLabel
            Left = 5
            Top = 9
            Width = 196
            Height = 13
            AutoSize = False
            Caption = #23545#24212#30340#20108#31561#22870#21495#30721
            Font.Charset = GB2312_CHARSET
            Font.Color = clHighlight
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
      end
      object Panel5: TPanel
        Left = 233
        Top = 1
        Width = 232
        Height = 391
        Align = alLeft
        BevelOuter = bvLowered
        TabOrder = 1
        object Panel9: TPanel
          Left = 1
          Top = 1
          Width = 230
          Height = 29
          Align = alTop
          TabOrder = 0
          object Label5: TLabel
            Left = 5
            Top = 9
            Width = 196
            Height = 13
            AutoSize = False
            Caption = #23545#24212#30340#19977#31561#22870#21495#30721
            Font.Charset = GB2312_CHARSET
            Font.Color = clHighlight
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
        object v4: TValueListEditor
          Left = 1
          Top = 30
          Width = 230
          Height = 360
          Align = alClient
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 1
          ColWidths = (
            100
            126)
        end
      end
    end
    object Panel1: TPanel
      Left = 1
      Top = 1
      Width = 224
      Height = 393
      Align = alLeft
      BevelOuter = bvLowered
      TabOrder = 1
      object v1: TValueListEditor
        Left = 1
        Top = 79
        Width = 222
        Height = 313
        Align = alClient
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 0
        ColWidths = (
          95
          123)
      end
      object Panel4: TPanel
        Left = 1
        Top = 1
        Width = 222
        Height = 78
        Align = alTop
        TabOrder = 1
        object Label1: TLabel
          Left = 5
          Top = 17
          Width = 107
          Height = 13
          AutoSize = False
          Caption = #35831#36755#20837#19968#31561#22870#21495#30721#8758
          Font.Charset = GB2312_CHARSET
          Font.Color = clRed
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object no: TEdit
          Left = 113
          Top = 13
          Width = 104
          Height = 21
          MaxLength = 14
          TabOrder = 0
        end
        object Button1: TButton
          Left = 113
          Top = 47
          Width = 98
          Height = 25
          Caption = #26597#35810#20013#22870#20449#24687
          TabOrder = 1
          OnClick = Button1Click
        end
        object Button2: TButton
          Left = 5
          Top = 47
          Width = 100
          Height = 25
          Caption = #23548#20837#25237#27880#25991#20214
          TabOrder = 2
          OnClick = Button2Click
        end
      end
    end
  end
  object Panel6: TPanel
    Left = 0
    Top = 395
    Width = 680
    Height = 93
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 2
    object dt: TLabel
      Left = 5
      Top = 9
      Width = 680
      Height = 13
      AutoSize = False
      Caption = #24403#21069#23548#20837#30340#25237#27880#25991#20214'[ ***.fcr ]'#30340#20013#22870#29366#20917
      Font.Charset = GB2312_CHARSET
      Font.Color = clHighlight
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object GroupBox1: TGroupBox
      Left = 3
      Top = 31
      Width = 222
      Height = 59
      Caption = #19968#31561#22870
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      object l1: TLabel
        Left = 8
        Top = 26
        Width = 195
        Height = 14
        AutoSize = False
        Caption = #20013' '#22870' '#25968' '#20849#8758'0 '#27880
        Font.Charset = GB2312_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
    end
    object GroupBox2: TGroupBox
      Left = 225
      Top = 31
      Width = 231
      Height = 59
      Caption = #20108#31561#22870
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      object l3: TLabel
        Left = 8
        Top = 26
        Width = 195
        Height = 14
        AutoSize = False
        Caption = #20013' '#22870' '#25968' '#20849#8758'0 '#27880
        Font.Charset = GB2312_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
    end
    object GroupBox3: TGroupBox
      Left = 456
      Top = 31
      Width = 230
      Height = 59
      Caption = #19977#31561#22870
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      object l4: TLabel
        Left = 8
        Top = 26
        Width = 195
        Height = 14
        AutoSize = False
        Caption = #20013' '#22870' '#25968' '#20849#8758'0 '#27880
        Font.Charset = GB2312_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
    end
  end
  object OpenDialog1: TOpenDialog
    Left = 24
    Top = 88
  end
end
