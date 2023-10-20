object Form4: TForm4
  Left = 0
  Top = 0
  Align = alClient
  Caption = #1051#1072#1073#1086#1088#1072#1090#1086#1088#1085#1072#1103' '#1088#1072#1073#1086#1090#1072' '#8470'3'
  ClientHeight = 742
  ClientWidth = 1362
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnPaint = FormPaint
  DesignSize = (
    1362
    742)
  PixelsPerInch = 96
  TextHeight = 13
  object PaintBox1: TPaintBox
    AlignWithMargins = True
    Left = 895
    Top = 16
    Width = 446
    Height = 226
    Color = clBtnFace
    ParentColor = False
  end
  object PaintBox2: TPaintBox
    Left = 564
    Top = 16
    Width = 325
    Height = 226
    Anchors = [akLeft, akBottom]
    Color = clBtnFace
    ParentColor = False
  end
  object GroupBox2: TGroupBox
    Left = 8
    Top = 8
    Width = 550
    Height = 234
    Caption = '1. '#1047#1072#1076#1072#1081#1090#1077' '#1087#1088#1072#1084#1077#1090#1088#1099' '#1101#1083#1077#1082#1077#1090#1088#1080#1095#1077#1089#1082#1086#1081' '#1094#1077#1087#1080':'
    TabOrder = 0
    object Label22: TLabel
      Left = 15
      Top = 196
      Width = 129
      Height = 13
      Caption = #1056#1077#1079#1086#1085#1072#1085#1089#1085#1072#1103' '#1095#1072#1089#1090#1086#1090#1072' f0='
    end
    object Label9: TLabel
      Left = 149
      Top = 194
      Width = 6
      Height = 13
      Caption = '0'
    end
    object Label23: TLabel
      Left = 185
      Top = 196
      Width = 12
      Height = 13
      Caption = #1043#1094
    end
    object Label24: TLabel
      Left = 15
      Top = 213
      Width = 128
      Height = 13
      Caption = #1058#1077#1082#1091#1097#1072#1103' '#1095#1072#1089#1090#1086#1090#1072'         f='
    end
    object Label25: TLabel
      Left = 185
      Top = 213
      Width = 12
      Height = 13
      Caption = #1043#1094
    end
    object Label26: TLabel
      Left = 149
      Top = 213
      Width = 24
      Height = 13
      Caption = '1620'
    end
    object GroupBox3: TGroupBox
      Left = 10
      Top = 45
      Width = 271
      Height = 148
      Caption = #1079#1072#1076#1072#1090#1100':'
      TabOrder = 0
      object Label11: TLabel
        Left = 247
        Top = 23
        Width = 14
        Height = 13
        Caption = #1054#1084
      end
      object Label5: TLabel
        Left = 247
        Top = 47
        Width = 18
        Height = 13
        Caption = #1084#1043#1085
      end
      object Label6: TLabel
        Left = 247
        Top = 69
        Width = 20
        Height = 13
        Caption = #1084#1082#1060
      end
      object Label8: TLabel
        Left = 247
        Top = 91
        Width = 6
        Height = 13
        Caption = #1042
      end
      object Label1: TLabel
        Left = 17
        Top = 23
        Width = 160
        Height = 13
        Caption = ' '#1040#1082#1090#1080#1074#1085#1086#1077' '#1089#1086#1087#1088#1086#1090#1080#1074#1083#1077#1085#1080#1077',   R='
      end
      object Label4: TLabel
        Left = 19
        Top = 69
        Width = 159
        Height = 13
        Caption = #1045#1084#1082#1086#1089#1090#1100',                                 '#1057'='
      end
      object Label2: TLabel
        Left = 19
        Top = 88
        Width = 160
        Height = 13
        Caption = #1042#1093#1086#1076#1085#1086#1077' '#1085#1072#1087#1088#1103#1078#1077#1085#1080#1077',           U='
      end
      object Label3: TLabel
        Left = 18
        Top = 47
        Width = 159
        Height = 13
        Caption = #1048#1085#1076#1091#1082#1090#1080#1074#1085#1086#1089#1090#1100',                     L='
      end
      object ComboBox1: TComboBox
        Left = 192
        Top = 86
        Width = 49
        Height = 21
        TabOrder = 0
        Text = '3'
        Items.Strings = (
          '3'
          '6'
          '8')
      end
      object ComboBox4: TComboBox
        Left = 192
        Top = 64
        Width = 49
        Height = 21
        TabOrder = 1
        Text = '0,5'
        Items.Strings = (
          '0,5'
          '1')
      end
      object ComboBox3: TComboBox
        Left = 192
        Top = 42
        Width = 49
        Height = 21
        TabOrder = 2
        Text = '19,4'
        Items.Strings = (
          '12'
          '15'
          '19,4'
          '27')
      end
      object ComboBox2: TComboBox
        Left = 192
        Top = 20
        Width = 49
        Height = 21
        TabOrder = 3
        Text = '150'
        Items.Strings = (
          '150'
          '620'
          '910'
          '2700')
      end
      object Button1: TButton
        Left = 18
        Top = 113
        Width = 247
        Height = 25
        Caption = #1056#1072#1089#1095#1077#1090
        TabOrder = 4
        OnClick = Button1Click
      end
    end
    object GroupBox4: TGroupBox
      Left = 287
      Top = 45
      Width = 249
      Height = 148
      Caption = #1080#1079#1084#1077#1085#1103#1090#1100':'
      Enabled = False
      TabOrder = 1
      object Label7: TLabel
        Left = 22
        Top = 23
        Width = 15
        Height = 13
        Caption = 'R='
      end
      object Label12: TLabel
        Left = 24
        Top = 52
        Width = 13
        Height = 13
        Caption = 'L='
      end
      object Label13: TLabel
        Left = 24
        Top = 80
        Width = 15
        Height = 13
        Caption = 'C='
      end
      object Label14: TLabel
        Left = 24
        Top = 107
        Width = 15
        Height = 13
        Caption = 'U='
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
        Top = 52
        Width = 22
        Height = 13
        Caption = '19.4'
      end
      object Label16: TLabel
        Left = 43
        Top = 80
        Width = 16
        Height = 13
        Caption = '0.5'
      end
      object Label17: TLabel
        Left = 45
        Top = 108
        Width = 6
        Height = 13
        Caption = '3'
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
        Top = 52
        Width = 18
        Height = 13
        Caption = #1084#1043#1085
      end
      object Label20: TLabel
        Left = 86
        Top = 80
        Width = 20
        Height = 13
        Caption = #1084#1082#1060
      end
      object Label21: TLabel
        Left = 88
        Top = 108
        Width = 6
        Height = 13
        Caption = #1042
      end
      object TrackBar3: TTrackBar
        Left = 120
        Top = 47
        Width = 126
        Height = 23
        Max = 100
        Min = 1
        Position = 19
        TabOrder = 0
        OnChange = TrackBar3Change
      end
      object TrackBar4: TTrackBar
        Left = 120
        Top = 76
        Width = 126
        Height = 22
        Max = 300
        Min = 1
        Position = 50
        TabOrder = 1
        OnChange = TrackBar4Change
      end
      object TrackBar5: TTrackBar
        Left = 120
        Top = 104
        Width = 126
        Height = 23
        Max = 50
        Min = 1
        Position = 3
        TabOrder = 2
        OnChange = TrackBar5Change
      end
      object TrackBar2: TTrackBar
        Left = 120
        Top = 18
        Width = 126
        Height = 23
        Max = 300
        Min = 1
        Position = 150
        TabOrder = 3
        OnChange = TrackBar2Change
      end
    end
    object RadioButton1: TRadioButton
      Left = 10
      Top = 22
      Width = 119
      Height = 17
      Caption = #1057#1090#1072#1090#1080#1095#1077#1082#1080#1081' '#1088#1072#1089#1095#1077#1090
      Checked = True
      TabOrder = 2
      TabStop = True
      OnClick = RadioButton1Click
    end
    object RadioButton2: TRadioButton
      Left = 314
      Top = 22
      Width = 135
      Height = 17
      Caption = #1044#1080#1085#1072#1084#1080#1095#1077#1089#1082#1080#1081' '#1088#1072#1089#1095#1077#1090
      TabOrder = 3
      OnClick = RadioButton2Click
    end
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 295
    Width = 550
    Height = 385
    Caption = #1058#1072#1073#1083#1080#1094#1072' '#1088#1077#1079#1091#1083#1100#1090#1072#1090#1086#1074' '#1088#1072#1089#1095#1077#1090#1072':'
    TabOrder = 1
    object StringGrid1: TStringGrid
      Left = 10
      Top = 24
      Width = 526
      Height = 345
      ColCount = 8
      RowCount = 750
      TabOrder = 0
      ColWidths = (
        64
        62
        59
        58
        60
        68
        60
        62)
    end
  end
  object Chart1: TChart
    Left = 564
    Top = 248
    Width = 777
    Height = 432
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
      LinePen.Color = clGreen
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
    Top = 248
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
    Left = 215
    Top = 217
    Width = 326
    Height = 18
    Enabled = False
    Max = 750
    Position = 147
    TabOrder = 4
    OnChange = TrackBar1Change
  end
end
