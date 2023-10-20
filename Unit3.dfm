object Form3: TForm3
  Left = 0
  Top = 0
  Align = alClient
  Caption = #1051#1072#1073#1086#1088#1072#1090#1086#1088#1085#1072#1103' '#1088#1072#1073#1086#1090#1072' '#8470'1'
  ClientHeight = 742
  ClientWidth = 1362
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnPaint = FormPaint
  PixelsPerInch = 96
  TextHeight = 13
  object PaintBox1: TPaintBox
    Left = 924
    Top = 8
    Width = 418
    Height = 193
    Align = alCustom
    Color = clBtnFace
    ParentColor = False
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 71
    Width = 566
    Height = 130
    Caption = '2. '#1047#1072#1076#1072#1081#1090#1077' '#1090#1088#1077#1073#1091#1077#1084#1099#1077' '#1087#1072#1088#1072#1084#1077#1090#1088#1099' '#1101#1083#1077#1082#1090#1088#1080#1095#1077#1089#1082#1086#1081' '#1094#1077#1087#1080':'
    TabOrder = 0
    object Label1: TLabel
      Left = 18
      Top = 32
      Width = 166
      Height = 13
      Caption = #1069#1044#1057',                                          '#1045'='
      Enabled = False
    end
    object Label3: TLabel
      Left = 19
      Top = 72
      Width = 167
      Height = 13
      Caption = #1053#1072#1087#1088#1103#1078#1077#1085#1080#1077' '#1085#1072#1075#1088#1091#1079#1082#1080',          U2='
      Enabled = False
    end
    object Label5: TLabel
      Left = 295
      Top = 34
      Width = 170
      Height = 13
      Caption = #1057#1086#1087#1088#1086#1090#1080#1074#1083#1077#1085#1080#1077' '#1083#1080#1085#1080#1080',           R'#1083'='
      Enabled = False
    end
    object Label7: TLabel
      Left = 295
      Top = 72
      Width = 168
      Height = 13
      Caption = #1057#1086#1087#1088#1086#1090#1080#1074#1083#1077#1085#1080#1077' '#1085#1072#1075#1088#1091#1079#1082#1080',     R'#1085'='
      Enabled = False
    end
    object Label6: TLabel
      Left = 529
      Top = 37
      Width = 14
      Height = 13
      Caption = #1054#1084
    end
    object Label8: TLabel
      Left = 529
      Top = 72
      Width = 14
      Height = 13
      Caption = #1054#1084
    end
    object Label4: TLabel
      Left = 254
      Top = 74
      Width = 6
      Height = 13
      Caption = #1042
    end
    object Label2: TLabel
      Left = 254
      Top = 29
      Width = 6
      Height = 13
      Caption = #1042
    end
    object ComboBox1: TComboBox
      Left = 199
      Top = 26
      Width = 49
      Height = 21
      Enabled = False
      TabOrder = 0
      Text = '3'
      Items.Strings = (
        '3'
        '6'
        '8'
        '10'
        '20'
        '30'
        '40')
    end
    object ComboBox2: TComboBox
      Left = 199
      Top = 69
      Width = 49
      Height = 21
      Enabled = False
      TabOrder = 1
      Text = '3'
      Items.Strings = (
        '3'
        '6'
        '9')
    end
    object ComboBox4: TComboBox
      Left = 475
      Top = 69
      Width = 49
      Height = 21
      Enabled = False
      TabOrder = 2
      Text = '0'
      OnChange = ComboBox4Change
      Items.Strings = (
        '0'
        '34'
        '150'
        '330'
        '620'
        '910'
        '1530'
        '2044'
        '10000')
    end
    object ComboBox3: TComboBox
      Left = 475
      Top = 31
      Width = 49
      Height = 21
      Enabled = False
      TabOrder = 3
      Text = '0'
      OnChange = ComboBox3Change
      Items.Strings = (
        '620'
        '910')
    end
  end
  object GroupBox2: TGroupBox
    Left = 8
    Top = 8
    Width = 566
    Height = 57
    Caption = '1. '#1042#1099#1073#1077#1088#1077#1090#1077' '#1074#1099#1087#1086#1083#1085#1103#1077#1084#1099#1081' '#1087#1091#1085#1082#1090' '#1083#1072#1073#1086#1088#1072#1090#1086#1088#1085#1086#1081' '#1088#1072#1073#1086#1090#1099' '#1088#1072#1073#1086#1090#1099': '
    TabOrder = 1
    TabStop = True
    object RadioButton1: TRadioButton
      Left = 82
      Top = 24
      Width = 126
      Height = 17
      Caption = ' '#1055#1091#1085#1082#1090' '#1088#1072#1073#1086#1090#1099' '#8470'1'
      TabOrder = 0
      OnClick = RadioButton1Click
    end
    object RadioButton2: TRadioButton
      Left = 350
      Top = 24
      Width = 115
      Height = 17
      Caption = #1055#1091#1085#1082#1090' '#1088#1072#1073#1086#1090#1099' '#8470'2'
      TabOrder = 1
      OnClick = RadioButton2Click
    end
  end
  object GroupBox3: TGroupBox
    Left = 8
    Top = 207
    Width = 681
    Height = 130
    Caption = #1057#1074#1086#1076#1085#1072#1103' '#1090#1072#1073#1083#1080#1094#1072' '#1076#1072#1085#1085#1099#1093' '#1087#1091#1085#1082#1090#1072' '#8470'1'
    TabOrder = 2
    object StringGrid1: TStringGrid
      Left = 9
      Top = 26
      Width = 656
      Height = 79
      ColCount = 9
      Enabled = False
      RowCount = 3
      TabOrder = 0
      ColWidths = (
        64
        72
        76
        78
        89
        69
        70
        65
        61)
    end
  end
  object Chart1: TChart
    Left = 705
    Top = 207
    Width = 637
    Height = 450
    Legend.Title.Text.Strings = (
      #1047#1072#1074#1080#1089#1080#1084#1086#1089#1090#1080
      #1086#1090' '#1090#1086#1082#1072':')
    Title.Font.Height = -17
    Title.Text.Strings = (
      
        #1043#1088#1072#1092#1080#1082' '#1079#1072#1074#1080#1089#1080#1084#1086#1089#1090#1080' U1, U2, U'#1083', P1, P2, P'#1083', '#1050#1055#1044' '#1086#1090' '#1090#1086#1082#1072' '#1085#1072#1075#1088#1091#1079#1082#1080' ' +
        'In')
    BottomAxis.Title.Caption = #1058#1086#1082', '#1084#1040
    DepthAxis.Automatic = False
    DepthAxis.AutomaticMaximum = False
    DepthAxis.AutomaticMinimum = False
    DepthAxis.Maximum = 0.260000000000000100
    DepthAxis.Minimum = -0.740000000000000700
    DepthTopAxis.Automatic = False
    DepthTopAxis.AutomaticMaximum = False
    DepthTopAxis.AutomaticMinimum = False
    DepthTopAxis.Maximum = 0.260000000000000100
    DepthTopAxis.Minimum = -0.740000000000000700
    LeftAxis.Title.Caption = 'U/10, '#1042'   P, '#1084#1042#1090'   '#1050#1055#1044', %'
    RightAxis.Automatic = False
    RightAxis.AutomaticMaximum = False
    RightAxis.AutomaticMinimum = False
    View3D = False
    Color = clWhite
    TabOrder = 3
    PrintMargins = (
      15
      24
      15
      24)
    object Series1: TFastLineSeries
      Marks.Arrow.Visible = True
      Marks.Callout.Brush.Color = clBlack
      Marks.Callout.Arrow.Visible = True
      Marks.Shadow.Color = 8553090
      Marks.Visible = False
      Title = 'P, '#1084#1042#1090' '
      LinePen.Color = clRed
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
      Title = 'Ul/10, '#1042
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
      SeriesColor = 16711808
      Title = 'P2, '#1084#1042#1090
      LinePen.Color = 16711808
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
      Title = #1050#1055#1044', %'
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
      SeriesColor = -1
      Title = 'Pl, '#1084#1042#1090
      LinePen.Color = -1
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
      Marks.Visible = False
      SeriesColor = 4259584
      Title = 'U1/10, '#1042
      LinePen.Color = 4259584
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
      SeriesColor = 33023
      Title = 'U2/10, '#1042
      LinePen.Color = 33023
      LinePen.Width = 2
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
    end
  end
  object GroupBox4: TGroupBox
    Left = 8
    Top = 343
    Width = 681
    Height = 330
    Caption = #1057#1074#1086#1076#1085#1072#1103' '#1090#1072#1073#1083#1080#1094#1072' '#1076#1072#1085#1085#1099#1093' '#1087#1091#1085#1082#1090#1072' '#8470'2'
    TabOrder = 4
    object StringGrid2: TStringGrid
      Left = 10
      Top = 16
      Width = 655
      Height = 305
      ColCount = 10
      RowCount = 4001
      TabOrder = 0
      ColWidths = (
        64
        64
        64
        64
        64
        64
        64
        64
        60
        51)
    end
  end
  object GroupBox6: TGroupBox
    Left = 580
    Top = 8
    Width = 325
    Height = 193
    Caption = '3. '#1056#1072#1089#1095#1077#1090':'
    Enabled = False
    TabOrder = 5
    object Label9: TLabel
      Left = 16
      Top = 86
      Width = 14
      Height = 13
      Caption = 'E='
      Enabled = False
    end
    object Label10: TLabel
      Left = 36
      Top = 86
      Width = 6
      Height = 13
      Caption = '3'
      Enabled = False
    end
    object Label11: TLabel
      Left = 16
      Top = 117
      Width = 21
      Height = 13
      Caption = 'R'#1083'='
      Enabled = False
    end
    object Label12: TLabel
      Left = 43
      Top = 117
      Width = 18
      Height = 13
      Caption = '620'
      Enabled = False
    end
    object Label13: TLabel
      Left = 69
      Top = 86
      Width = 6
      Height = 13
      Caption = #1042
      Enabled = False
    end
    object Label14: TLabel
      Left = 66
      Top = 117
      Width = 14
      Height = 13
      Caption = #1054#1084
      Enabled = False
    end
    object Button2: TButton
      Left = 16
      Top = 145
      Width = 289
      Height = 29
      Caption = #1057#1073#1088#1086#1089
      Enabled = False
      TabOrder = 0
      OnClick = Button2Click
    end
    object TrackBar1: TTrackBar
      Left = 88
      Top = 86
      Width = 217
      Height = 17
      Enabled = False
      Max = 50
      Min = 1
      PageSize = 3
      Position = 1
      TabOrder = 1
      OnChange = TrackBar1Change
    end
    object RadioButton3: TRadioButton
      Left = 33
      Top = -14
      Width = 125
      Height = 17
      Caption = 'C'#1090#1072#1090#1080#1095#1077#1089#1082#1080#1081' '#1088#1072#1089#1095#1077#1090
      TabOrder = 2
    end
    object TrackBar2: TTrackBar
      Left = 86
      Top = 118
      Width = 219
      Height = 21
      ParentCustomHint = False
      Enabled = False
      Max = 1000
      Min = 100
      Position = 620
      TabOrder = 3
      OnChange = TrackBar2Change
    end
    object Button1: TButton
      Left = 16
      Top = 20
      Width = 289
      Height = 25
      Caption = #1056#1072#1089#1095#1077#1090
      TabOrder = 4
      OnClick = Button1Click
    end
    object CheckBox1: TCheckBox
      Left = 16
      Top = 63
      Width = 153
      Height = 17
      Caption = #1044#1080#1085#1087#1084#1080#1095#1077#1089#1082#1080#1081' '#1088#1072#1089#1095#1077#1090':'
      TabOrder = 5
      OnClick = CheckBox1Click
    end
  end
end
