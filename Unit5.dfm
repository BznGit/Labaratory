object Form5: TForm5
  Left = 0
  Top = 0
  Align = alClient
  Caption = #1051#1072#1073#1086#1088#1072#1090#1086#1088#1085#1072#1103' '#1088#1072#1073#1086#1090#1072' '#8470'4'
  ClientHeight = 742
  ClientWidth = 1360
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnPaint = FormPaint
  DesignSize = (
    1360
    742)
  PixelsPerInch = 96
  TextHeight = 13
  object PaintBox1: TPaintBox
    AlignWithMargins = True
    Left = 807
    Top = 8
    Width = 533
    Height = 226
    Color = clBtnFace
    ParentColor = False
  end
  object PaintBox2: TPaintBox
    Left = 807
    Top = 240
    Width = 533
    Height = 431
    Anchors = [akLeft, akBottom]
    Color = clBtnFace
    ParentColor = False
  end
  object GroupBox2: TGroupBox
    Left = 8
    Top = 8
    Width = 784
    Height = 211
    Caption = '1. '#1047#1072#1076#1072#1081#1090#1077' '#1087#1088#1072#1084#1077#1090#1088#1099' '#1101#1083#1077#1082#1077#1090#1088#1080#1095#1077#1089#1082#1086#1081' '#1094#1077#1087#1080':'
    TabOrder = 0
    object Label24: TLabel
      Left = 326
      Top = 20
      Width = 137
      Height = 13
      Caption = #1063#1072#1089#1090#1086#1090#1072' '#1080#1089#1090#1086#1095#1085#1080#1082#1072'         f='
    end
    object Label25: TLabel
      Left = 462
      Top = 20
      Width = 12
      Height = 13
      Caption = #1043#1094
    end
    object Label26: TLabel
      Left = 434
      Top = 20
      Width = 12
      Height = 13
      Caption = '50'
    end
    object Label14: TLabel
      Left = 26
      Top = 20
      Width = 23
      Height = 13
      Caption = 'U'#1092'='
    end
    object Label17: TLabel
      Left = 49
      Top = 20
      Width = 18
      Height = 13
      Caption = '100'
    end
    object Label21: TLabel
      Left = 73
      Top = 20
      Width = 6
      Height = 13
      Caption = #1042
    end
    object GroupBox4: TGroupBox
      Left = 270
      Top = 45
      Width = 249
      Height = 140
      Caption = #1047#1072#1076#1072#1090#1100' '#1087#1072#1088#1072#1084#1077#1088#1099' '#1085#1072#1075#1088#1091#1079#1082#1080' '#1092#1072#1079#1099' '#1042
      Enabled = False
      TabOrder = 0
      object Label7: TLabel
        Left = 22
        Top = 23
        Width = 15
        Height = 13
        Caption = 'R='
      end
      object Label12: TLabel
        Left = 24
        Top = 60
        Width = 13
        Height = 13
        Caption = 'L='
      end
      object Label13: TLabel
        Left = 24
        Top = 96
        Width = 15
        Height = 13
        Caption = 'C='
      end
      object Label10: TLabel
        Left = 43
        Top = 23
        Width = 18
        Height = 13
        Caption = '150'
      end
      object Label15: TLabel
        Left = 43
        Top = 60
        Width = 22
        Height = 13
        Caption = '19.4'
      end
      object Label16: TLabel
        Left = 43
        Top = 96
        Width = 16
        Height = 13
        Caption = '0.5'
      end
      object Label18: TLabel
        Left = 86
        Top = 23
        Width = 14
        Height = 13
        Caption = #1054#1084
      end
      object Label19: TLabel
        Left = 86
        Top = 60
        Width = 18
        Height = 13
        Caption = #1084#1043#1085
      end
      object Label20: TLabel
        Left = 86
        Top = 96
        Width = 20
        Height = 13
        Caption = #1084#1082#1060
      end
      object TrackBar6: TTrackBar
        Left = 110
        Top = 16
        Width = 136
        Height = 45
        ShowSelRange = False
        TabOrder = 0
        OnChange = TrackBar6Change
      end
      object TrackBar7: TTrackBar
        Left = 112
        Top = 45
        Width = 136
        Height = 45
        ShowSelRange = False
        TabOrder = 1
        OnChange = TrackBar7Change
      end
      object TrackBar8: TTrackBar
        Left = 112
        Top = 92
        Width = 137
        Height = 45
        ShowSelRange = False
        TabOrder = 2
        OnChange = TrackBar8Change
      end
    end
    object GroupBox6: TGroupBox
      Left = 525
      Top = 45
      Width = 249
      Height = 140
      Caption = #1047#1072#1076#1072#1090#1100' '#1087#1072#1088#1072#1084#1077#1088#1099' '#1085#1072#1075#1088#1091#1079#1082#1080' '#1092#1072#1079#1099' '#1057
      Enabled = False
      TabOrder = 1
      object Label9: TLabel
        Left = 22
        Top = 23
        Width = 15
        Height = 13
        Caption = 'R='
      end
      object Label22: TLabel
        Left = 24
        Top = 60
        Width = 13
        Height = 13
        Caption = 'L='
      end
      object Label23: TLabel
        Left = 24
        Top = 96
        Width = 15
        Height = 13
        Caption = 'C='
      end
      object Label32: TLabel
        Left = 43
        Top = 23
        Width = 18
        Height = 13
        Caption = '150'
      end
      object Label33: TLabel
        Left = 43
        Top = 60
        Width = 22
        Height = 13
        Caption = '19.4'
      end
      object Label34: TLabel
        Left = 43
        Top = 96
        Width = 16
        Height = 13
        Caption = '0.5'
      end
      object Label36: TLabel
        Left = 86
        Top = 23
        Width = 14
        Height = 13
        Caption = #1054#1084
      end
      object Label37: TLabel
        Left = 86
        Top = 60
        Width = 18
        Height = 13
        Caption = #1084#1043#1085
      end
      object Label38: TLabel
        Left = 86
        Top = 96
        Width = 20
        Height = 13
        Caption = #1084#1082#1060
      end
      object TrackBar9: TTrackBar
        Left = 110
        Top = 20
        Width = 136
        Height = 45
        ShowSelRange = False
        TabOrder = 0
        OnChange = TrackBar9Change
      end
      object TrackBar10: TTrackBar
        Left = 112
        Top = 52
        Width = 136
        Height = 45
        ShowSelRange = False
        TabOrder = 1
        OnChange = TrackBar10Change
      end
      object TrackBar11: TTrackBar
        Left = 112
        Top = 92
        Width = 134
        Height = 29
        ShowSelRange = False
        TabOrder = 2
        OnChange = TrackBar11Change
      end
    end
    object TrackBar5: TTrackBar
      Left = 85
      Top = 16
      Width = 235
      Height = 23
      Max = 400
      Min = 100
      Frequency = 10
      Position = 100
      ShowSelRange = False
      TabOrder = 2
      OnChange = TrackBar5Change
    end
    object GroupBox3: TGroupBox
      Left = 3
      Top = 45
      Width = 261
      Height = 140
      Caption = 'GroupBox3'
      TabOrder = 3
      object TrackBar2: TTrackBar
        Left = 108
        Top = 23
        Width = 150
        Height = 45
        TabOrder = 0
      end
      object TrackBar3: TTrackBar
        Left = 108
        Top = 60
        Width = 150
        Height = 45
        TabOrder = 1
      end
      object TrackBar4: TTrackBar
        Left = 108
        Top = 96
        Width = 150
        Height = 45
        TabOrder = 2
      end
    end
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 272
    Width = 793
    Height = 129
    Caption = #1058#1072#1073#1083#1080#1094#1072' '#1088#1077#1079#1091#1083#1100#1090#1072#1090#1086#1074' '#1088#1072#1089#1095#1077#1090#1072':'
    TabOrder = 1
    object StringGrid1: TStringGrid
      Left = 21
      Top = 16
      Width = 769
      Height = 105
      ColCount = 19
      RowCount = 750
      TabOrder = 0
      ColWidths = (
        64
        62
        59
        58
        60
        76
        60
        62
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64)
    end
  end
  object Chart1: TChart
    Left = 8
    Top = 407
    Width = 793
    Height = 264
    Legend.Title.Text.Strings = (
      #1054#1073#1086#1079#1085#1072#1095#1077#1085#1080#1103':')
    Title.Font.Height = -17
    Title.Text.Strings = (
      #1043#1088#1072#1092#1080#1082#1080' '#1079#1072#1074#1080#1089#1080#1084#1086#1089#1090#1077#1081' U, Ur, Ul, Uc, I fi  '#1086#1090' '#1095#1072#1089#1090#1086#1090#1099' f')
    BottomAxis.MaximumOffset = 40
    BottomAxis.Title.Caption = #1063#1072#1089#1090#1086#1090#1072' f, '#1043#1094
    DepthAxis.Automatic = False
    DepthAxis.AutomaticMaximum = False
    DepthAxis.AutomaticMinimum = False
    DepthAxis.Maximum = -0.500000000000000000
    DepthAxis.Minimum = -0.500000000000000000
    DepthTopAxis.Automatic = False
    DepthTopAxis.AutomaticMaximum = False
    DepthTopAxis.AutomaticMinimum = False
    DepthTopAxis.Maximum = -0.500000000000000000
    DepthTopAxis.Minimum = -0.500000000000000000
    LeftAxis.Title.Caption = 'U, '#1042'  I, '#1040' fi, '#1075#1088#1072#1076
    RightAxis.Automatic = False
    RightAxis.AutomaticMaximum = False
    RightAxis.AutomaticMinimum = False
    RightAxis.Visible = False
    TopAxis.Visible = False
    View3D = False
    Color = clWhite
    TabOrder = 2
    object Series1: TFastLineSeries
      Marks.Arrow.Visible = True
      Marks.Callout.Brush.Color = clBlack
      Marks.Callout.Arrow.Visible = True
      Marks.Shadow.Color = 8553090
      Marks.Visible = False
      SeriesColor = 16711808
      Title = 'U, B'
      LinePen.Color = 16711808
      LinePen.Width = 2
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
    end
    object Series2: TFastLineSeries
      Marks.Arrow.Visible = True
      Marks.Callout.Brush.Color = clBlack
      Marks.Callout.Arrow.Visible = True
      Marks.Visible = False
      Title = 'Ir, '#1084#1040
      LinePen.Color = clRed
      LinePen.Width = 2
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
    end
    object Series3: TFastLineSeries
      Marks.Arrow.Visible = True
      Marks.Callout.Brush.Color = clBlack
      Marks.Callout.Arrow.Visible = True
      Marks.Visible = False
      SeriesColor = 33023
      Title = 'Il, '#1084#1040
      LinePen.Color = 33023
      LinePen.Width = 2
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
    end
    object Series4: TFastLineSeries
      Marks.Arrow.Visible = True
      Marks.Callout.Brush.Color = clBlack
      Marks.Callout.Arrow.Visible = True
      Marks.Visible = False
      Title = 'Ic, '#1084#1040
      LinePen.Color = clBlue
      LinePen.Width = 2
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
    end
    object Series5: TFastLineSeries
      Marks.Arrow.Visible = True
      Marks.Callout.Brush.Color = clBlack
      Marks.Callout.Arrow.Visible = True
      Marks.Visible = False
      SeriesColor = clRed
      Title = 'I ,'#1084#1040
      LinePen.Color = clRed
      LinePen.Width = 2
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
    end
    object Series6: TFastLineSeries
      Marks.Arrow.Visible = True
      Marks.Callout.Brush.Color = clBlack
      Marks.Callout.Arrow.Visible = True
      Marks.Shadow.Color = 8553090
      Marks.Visible = False
      Title = 'fi x100, '#1075#1088#1072#1076'.'
      VertAxis = aBothVertAxis
      LinePen.Color = clGray
      LinePen.Width = 2
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
    end
    object Series7: TFastLineSeries
      Marks.Arrow.Visible = True
      Marks.Callout.Brush.Color = clBlack
      Marks.Callout.Arrow.Visible = True
      Marks.Visible = False
      SeriesColor = clRed
      Title = 'f, '#1043#1094
      LinePen.Color = clRed
      LinePen.Style = psDash
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
    end
  end
  object GroupBox5: TGroupBox
    Left = 8
    Top = 225
    Width = 550
    Height = 41
    Caption = #1055#1072#1088#1072#1084#1077#1090#1088#1099' '#1074#1099#1074#1086#1076#1072' '#1075#1088#1072#1092#1080#1082#1086#1074':'
    Enabled = False
    TabOrder = 3
    object RadioButton3: TRadioButton
      Left = 51
      Top = 16
      Width = 113
      Height = 17
      Caption = #1074#1089#1077' '#1082#1088#1080#1074#1099#1077
      Checked = True
      TabOrder = 0
      TabStop = True
      OnClick = RadioButton3Click
    end
    object RadioButton4: TRadioButton
      Left = 206
      Top = 16
      Width = 113
      Height = 17
      Caption = #1082#1088#1080#1074#1072#1103'  '#1090#1086#1082#1072' I, '#1084#1040
      TabOrder = 1
      OnClick = RadioButton4Click
    end
    object RadioButton5: TRadioButton
      Left = 374
      Top = 16
      Width = 123
      Height = 17
      Caption = #1082#1088#1080#1074#1072#1103' '#1091#1075#1083#1072' fi, '#1075#1088#1072#1076
      TabOrder = 2
      OnClick = RadioButton5Click
    end
  end
  object TrackBar1: TTrackBar
    Left = 488
    Top = 21
    Width = 291
    Height = 20
    Max = 300
    Position = 50
    ShowSelRange = False
    TabOrder = 4
    OnChange = TrackBar1Change
  end
end
