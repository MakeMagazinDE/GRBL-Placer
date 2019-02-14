object Form1: TForm1
  Left = 229
  Top = 120
  Caption = 'GRBL Placer'
  ClientHeight = 681
  ClientWidth = 1164
  Color = clBtnFace
  Constraints.MaxWidth = 1180
  Constraints.MinHeight = 600
  Constraints.MinWidth = 800
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poDesigned
  ShowHint = True
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  DesignSize = (
    1164
    681)
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel3: TBevel
    Left = 8
    Top = 292
    Width = 1141
    Height = 364
    Anchors = [akLeft, akTop, akBottom]
    Shape = bsFrame
    Style = bsRaised
  end
  object Bevel1: TBevel
    Left = 8
    Top = 8
    Width = 1141
    Height = 269
    Shape = bsFrame
    Style = bsRaised
  end
  object Label1: TLabel
    Left = 548
    Top = 34
    Width = 91
    Height = 13
    Caption = 'Tape/Feeder Table'
  end
  object Label2: TLabel
    Left = 24
    Top = 312
    Width = 124
    Height = 13
    Caption = 'Component Position Table'
  end
  object Bevel8: TBevel
    Left = 622
    Top = 594
    Width = 519
    Height = 57
    Anchors = [akLeft, akBottom]
    ExplicitTop = 607
  end
  object PosX: TLabel
    Left = 627
    Top = 616
    Width = 106
    Height = 37
    Anchors = [akLeft, akBottom]
    Caption = '000,00'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -32
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    ExplicitTop = 642
  end
  object PosY: TLabel
    Left = 755
    Top = 616
    Width = 106
    Height = 37
    Anchors = [akLeft, akBottom]
    Caption = '000,00'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGreen
    Font.Height = -32
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    ExplicitTop = 642
  end
  object PosZ: TLabel
    Left = 883
    Top = 619
    Width = 106
    Height = 37
    Anchors = [akLeft, akBottom]
    Caption = '000,00'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -32
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    ExplicitTop = 632
  end
  object MposX: TLabel
    Left = 627
    Top = 599
    Width = 45
    Height = 16
    Anchors = [akLeft, akBottom]
    Caption = '000,00'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    ExplicitTop = 625
  end
  object MposY: TLabel
    Left = 755
    Top = 598
    Width = 45
    Height = 16
    Anchors = [akLeft, akBottom]
    Caption = '000,00'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGreen
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    ExplicitTop = 624
  end
  object MposZ: TLabel
    Left = 883
    Top = 598
    Width = 45
    Height = 16
    Anchors = [akLeft, akBottom]
    Caption = '000,00'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    ExplicitTop = 624
  end
  object Label28: TLabel
    Left = 1104
    Top = 600
    Width = 27
    Height = 13
    Anchors = [akLeft, akBottom]
    Caption = 'MPos'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = 13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    ExplicitTop = 613
  end
  object MposC: TLabel
    Left = 1013
    Top = 598
    Width = 37
    Height = 16
    Anchors = [akLeft, akBottom]
    Caption = '000,0'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGray
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    ExplicitTop = 624
  end
  object PosC: TLabel
    Left = 1011
    Top = 616
    Width = 87
    Height = 37
    Anchors = [akLeft, akBottom]
    Caption = '000,0'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGray
    Font.Height = -32
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    ExplicitTop = 642
  end
  object Label39: TLabel
    Left = 713
    Top = 600
    Width = 16
    Height = 13
    Anchors = [akLeft, akBottom]
    Caption = 'mm'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = 13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    ExplicitTop = 626
  end
  object Label40: TLabel
    Left = 842
    Top = 600
    Width = 16
    Height = 13
    Anchors = [akLeft, akBottom]
    Caption = 'mm'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = 13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    ExplicitTop = 626
  end
  object Label41: TLabel
    Left = 970
    Top = 600
    Width = 16
    Height = 13
    Anchors = [akLeft, akBottom]
    Caption = 'mm'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = 13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    ExplicitTop = 626
  end
  object Label42: TLabel
    Left = 1074
    Top = 600
    Width = 18
    Height = 13
    Anchors = [akLeft, akBottom]
    Caption = 'deg'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = 13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    ExplicitTop = 626
  end
  object BtnRunJob: TSpeedButton
    Left = 1011
    Top = 500
    Width = 122
    Height = 24
    Hint = 'Run job with all active Tapes/Feeders'
    Caption = 'Run Job'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGreen
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = BtnRunJobClick
  end
  object BtnHomeCycle: TSpeedButton
    Left = 1011
    Top = 305
    Width = 122
    Height = 24
    Hint = 'Perform a homing cycle and set Work Zero'
    Caption = 'Home Cycle'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGreen
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = BtnHomeCycleClick
  end
  object Label4: TLabel
    Left = 1009
    Top = 370
    Width = 121
    Height = 65
    Caption = 
      'Jog  nozzle manually to selected part on PCB, lower Z to touch s' +
      'urface and click here to set PCB Offsets X,Y,Z:'
    WordWrap = True
  end
  object Label3: TLabel
    Left = 24
    Top = 34
    Width = 46
    Height = 13
    Caption = 'Job Table'
  end
  object Label5: TLabel
    Left = 1104
    Top = 627
    Width = 29
    Height = 13
    Anchors = [akLeft, akBottom]
    Caption = 'WPos'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = 13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    ExplicitTop = 640
  end
  object Label6: TLabel
    Left = 627
    Top = 569
    Width = 69
    Height = 16
    Anchors = [akLeft, akBottom]
    Caption = 'GRBL Status'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ExplicitTop = 595
  end
  object StringGrid1: TStringGrid
    Left = 24
    Top = 331
    Width = 577
    Height = 320
    TabStop = False
    Anchors = [akLeft, akTop, akBottom]
    BevelInner = bvNone
    BevelKind = bkFlat
    BevelOuter = bvNone
    ColCount = 8
    DefaultColWidth = 70
    DefaultRowHeight = 20
    DoubleBuffered = True
    DrawingStyle = gdsClassic
    FixedColor = cl3DLight
    FixedCols = 0
    RowCount = 129
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goDrawFocusSelected, goEditing, goTabs, goThumbTracking]
    ParentDoubleBuffered = False
    ParentFont = False
    ParentShowHint = False
    ScrollBars = ssVertical
    ShowHint = False
    TabOrder = 0
    OnDrawCell = StringGrid1DrawCell
    OnKeyDown = StringGrid1KeyDown
    OnMouseDown = StringGrid1MouseDown
    OnMouseUp = StringGrid1MouseUp
    OnSelectCell = StringGrid1SelectCell
    OnTopLeftChanged = StringGrid1TopLeftChanged
    ColWidths = (
      51
      103
      76
      63
      65
      68
      53
      69)
    RowHeights = (
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20)
  end
  object BtnOpenFile: TBitBtn
    Left = 243
    Top = 305
    Width = 115
    Height = 20
    Hint = 'Load .CSV file to Component Positions table'
    Caption = 'Open Positions File'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = BtnOpenPositionsClick
  end
  object ComboBoxFeeder: TComboBox
    Left = 408
    Top = 462
    Width = 67
    Height = 22
    AutoComplete = False
    AutoDropDown = True
    AutoCloseUp = True
    BevelKind = bkSoft
    BevelOuter = bvRaised
    Style = csDropDownList
    Color = clBtnFace
    DropDownCount = 16
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    TabStop = False
    Visible = False
    OnChange = ComboBoxFeederChange
    Items.Strings = (
      'None')
  end
  object BtnSavePositions: TBitBtn
    Left = 485
    Top = 305
    Width = 115
    Height = 20
    Hint = 'Save Component Positions table as .CSV file'
    Caption = 'Save Positions File'
    Font.Charset = ANSI_CHARSET
    Font.Color = clTeal
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 3
    OnClick = BtnSavePositionsClick
  end
  object StringGrid2: TStringGrid
    Left = 481
    Top = 53
    Width = 650
    Height = 212
    TabStop = False
    BevelInner = bvNone
    BevelKind = bkFlat
    BevelOuter = bvNone
    ColCount = 11
    DefaultColWidth = 70
    DefaultRowHeight = 20
    DoubleBuffered = True
    DrawingStyle = gdsClassic
    FixedColor = cl3DLight
    RowCount = 129
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goDrawFocusSelected, goRowMoving, goEditing, goTabs, goThumbTracking]
    ParentDoubleBuffered = False
    ParentFont = False
    ParentShowHint = False
    ScrollBars = ssVertical
    ShowHint = False
    TabOrder = 4
    OnDrawCell = StringGrid2DrawCell
    OnMouseDown = StringGrid2MouseDown
    OnRowMoved = StringGrid2RowMoved
    OnSelectCell = StringGrid2SelectCell
    ColWidths = (
      54
      59
      65
      52
      49
      48
      65
      61
      51
      59
      55)
    RowHeights = (
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20)
  end
  object BtnOpenFeederValues: TBitBtn
    Left = 780
    Top = 27
    Width = 113
    Height = 20
    Hint = 'Load .CSV file to Tape/Feeder table'
    Caption = 'Open Feeder Table'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 5
    OnClick = BtnOpenFeederValuesClick
  end
  object BtnSaveFeederValues: TBitBtn
    Left = 1018
    Top = 27
    Width = 113
    Height = 20
    Hint = 'Save Tape/Feeder table as .FDR file'
    Caption = 'Save Feeder Table'
    Font.Charset = ANSI_CHARSET
    Font.Color = clTeal
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 6
    OnClick = BtnSaveFeedersClick
  end
  object StringGrid3: TStringGrid
    Left = 23
    Top = 53
    Width = 452
    Height = 212
    Hint = 'Default values for job'
    TabStop = False
    BevelInner = bvNone
    BevelKind = bkFlat
    BevelOuter = bvNone
    ColCount = 2
    DefaultColWidth = 70
    DefaultRowHeight = 20
    DoubleBuffered = True
    DrawingStyle = gdsClassic
    FixedColor = cl3DLight
    RowCount = 129
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goDrawFocusSelected, goEditing, goTabs, goThumbTracking]
    ParentDoubleBuffered = False
    ParentFont = False
    ScrollBars = ssVertical
    TabOrder = 7
    OnDrawCell = StringGrid3DrawCell
    ColWidths = (
      193
      236)
    RowHeights = (
      20
      20
      20
      20
      20
      19
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20
      20)
  end
  object BtnSaveJob: TBitBtn
    Left = 380
    Top = 27
    Width = 95
    Height = 20
    Hint = 'Save job table as .JOB file'
    Caption = 'Save Job Defaults'
    Font.Charset = ANSI_CHARSET
    Font.Color = clTeal
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 8
    OnClick = BtnSaveJobClick
  end
  object BtnOpenJob: TBitBtn
    Left = 176
    Top = 27
    Width = 97
    Height = 20
    Hint = 'Load .CSV file to job table'
    Caption = 'Open Job Defaults'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 9
    OnClick = BtnOpenJobClick
  end
  object BtnClose: TButton
    Left = 697
    Top = 305
    Width = 54
    Height = 24
    Hint = 'Close FTDI USB Device'
    Caption = 'Close'
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 10
    OnClick = BtnCloseClick
  end
  object BtnRescan: TButton
    Left = 623
    Top = 305
    Width = 68
    Height = 24
    Hint = 'Open FTDI USB Device'
    Caption = 'Connect'
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 11
    OnClick = BtnConnectClick
  end
  object DeviceView: TEdit
    Left = 766
    Top = 306
    Width = 223
    Height = 21
    Hint = 'Selected FTDI Device'
    TabStop = False
    AutoSelect = False
    AutoSize = False
    BevelInner = bvNone
    BevelWidth = 2
    Color = clBtnFace
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 12
    Text = 'Not Connected'
  end
  object PanelAlive: TPanel
    Left = 805
    Top = 567
    Width = 50
    Height = 21
    Hint = 'Machine Idle. Click if response stuck to exit receive loop.'
    Anchors = [akLeft, akBottom]
    BevelOuter = bvLowered
    BevelWidth = 2
    Caption = 'Resp OK'
    Color = 16416
    Ctl3D = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentBackground = False
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 13
  end
  object PanelReady: TPanel
    Left = 861
    Top = 567
    Width = 50
    Height = 21
    Hint = 'Machine Idle. Click panel to cancel HOLD state'
    Anchors = [akLeft, akBottom]
    BevelOuter = bvLowered
    BevelWidth = 2
    Caption = 'Ready'
    Color = 16384
    Ctl3D = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGrayText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentBackground = False
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 14
    OnClick = PanelReadyClick
  end
  object PanelRun: TPanel
    Left = 917
    Top = 567
    Width = 49
    Height = 21
    Hint = 'Machine is moving. Click panel to cancel HOLD state'
    Anchors = [akLeft, akBottom]
    BevelOuter = bvLowered
    BevelWidth = 2
    Caption = 'Run'
    Color = 4194368
    Ctl3D = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGrayText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentBackground = False
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 15
  end
  object PanelHold: TPanel
    Left = 972
    Top = 567
    Width = 49
    Height = 21
    Hint = 'Feed hold/pause. Click panel to set HOLD state'
    Anchors = [akLeft, akBottom]
    BevelOuter = bvLowered
    BevelWidth = 2
    Caption = 'Hold'
    Color = 4194304
    Ctl3D = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGrayText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentBackground = False
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 16
  end
  object PanelAlarm: TPanel
    Left = 1027
    Top = 567
    Width = 50
    Height = 21
    Hint = 'Steps missed or probing failed, run Home Cycle. Click to Unlock'
    Anchors = [akLeft, akBottom]
    BevelOuter = bvLowered
    BevelWidth = 2
    Caption = 'Alarm'
    Color = 64
    Ctl3D = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGrayText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentBackground = False
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 17
    OnClick = PanelAlarmClick
  end
  object PanelBusy: TPanel
    Left = 1083
    Top = 567
    Width = 50
    Height = 21
    Hint = 'Busy/Running'
    Anchors = [akLeft, akBottom]
    BevelOuter = bvLowered
    BevelWidth = 2
    Caption = 'Busy'
    Color = clMaroon
    Ctl3D = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGrayText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentBackground = False
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 18
  end
  object PanelPinState: TPanel
    Left = 720
    Top = 567
    Width = 77
    Height = 21
    Hint = 'Machine Idle. Click if response stuck to exit receive loop.'
    Anchors = [akLeft, akBottom]
    BevelOuter = bvLowered
    BevelWidth = 2
    Color = 64
    Ctl3D = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentBackground = False
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 19
  end
  object Memo1: TMemo
    Left = 623
    Top = 348
    Width = 366
    Height = 195
    Anchors = [akLeft, akTop, akBottom]
    Lines.Strings = (
      'GRBL Placer 0.1 by -cm')
    ScrollBars = ssVertical
    TabOrder = 20
  end
  object BtnEmergStop: TBitBtn
    Left = 1013
    Top = 530
    Width = 122
    Height = 39
    Hint = 'Emergency Stop - Steps may be lost!'
    Caption = 'STOP'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    Glyph.Data = {
      360C0000424D360C000000000000360000002800000020000000200000000100
      180000000000000C0000120B0000120B00000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFF9F9FDEDEEF9E5E7F6E2E4F5E5E6F6F1F2FBFEFEFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFECEDF8A4A8E16069
      CD3E4CC51B2AC01727C21826C31624C11726BE4450C4818AD7CBCFEDFCFCFEFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4F5FB8F96DB2F3BC31726C51B2D
      CE1F30D21E2FD41F30D61F30D71F2FD61E2FD41D2ED11828C91323BF3A48C2B2
      B8E5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFD3EF4B56CA192AC81E2ED21E2FD61D2F
      DA1C2FDF1D2FE01E30E31E2FE31D2FE21D2FE01C2FDD1D2FD91E2FD31B2BCD21
      30C45A64C8EDEEF8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFABB0E34752CD2130CF1C2FD61B2EDD1D2FE31F30
      E71F31EC2234F12034F22034F22236F11F32ED1D31E91D30E51C2FE01D2FD91F
      2FD21828C7323EBED7DAF1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFF9AA0DD3845CB1F30D01C2ED91C2FE11D31E81F32EE2134
      F41E30F1192BDE2435D81E30DA172AE61F33F62134F51F33F01D32EB1D30E41D
      2FDC1E2ED31B2CCB2936BDDDE0F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFBBBFE72938C61E2FD11D2EDA1D2FE31E31EC2033F22336F81E32
      F63747D9A1A8E4C3C7ECB9BFEB828CE0283ADC2236FA2336FA2034F51E32EF1E
      30E71D2FDD1D2ED41B2BCB3C49C1F5F6FBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFF5F6FB2E3AC11E2ECF1C2ED81D30E32032ED2134F52136FA283CFE2436
      E7A3ABE8FFFFFFFFFFFFFFFFFFFFFFFF838DE22235ED2A3EFE2338FB2134F71F
      33F01E31E81D2EDE1D30D41827C67881D2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFF8990D91829C81C2ED61D2FE11E31EC2133F52336FB273CFC2C43FE2D3F
      E4BFC5F0FFFFFFF7F8FAF7F8FAFFFFFFA4ACEB273AE83146FE2B3FFC2639FC21
      36F81F32F01E30E71D2EDB1E2FD0212FBFD1D4EFFFFFFFFFFFFFFFFFFFFFFFFF
      F1F2FA313FC41E2FD21D2FDD1D31E82034F32237FA283CFD2E42FC3348FD2E41
      F05E6CDADADEF6FFFFFFFFFFFFD1D5F34F5DD73044F63548FD3044FC2B3FFD25
      39FC1F34F71F32ED1E2FE21D2FD61827C9656ECDFFFFFFFFFFFFFFFFFFFFFFFF
      A3A9E11525C71E2FD71E30E42033EF2235F8263CFC2D42FD3146FD3447FD364B
      FE2D3FE43A48C9646FCE616CCE3644CA3042E8384BFE3547FD3247FC3044FD2A
      3EFC2437FC2133F41E31E81C2FDD1E2ED22130BDE0E2F5FFFFFFFFFFFFFCFCFE
      4B56C51B2DCF1D30DB1E31E91F32F32235FB283DFD2F44FA3549FA3B4EFC3D4F
      FC4E5BE5A6ADEAB1B6EAB2B7EAA1A9E74857E23F51FC3C4FFC384BFB3247FA2B
      40FB2538FD2033F91F32ED1C30E31F30D70F1FC3A5ABDFFFFFFFFFFFFFE1E3F5
      1624BE1E2FD41B2DDF1D30EB2437F43144FA3E51FB4B5CFB5365FB5B6BFC5A6A
      FC717CE6F4F5FBFFFFFFFFFFFFECEFF86A75E25D6DFD5D6DFC5768FB5061FB45
      58FB394CFA2B3EF82133F01B2EE41C2ED81525C96E77D0FFFFFFFFFFFFC0C4EA
      0E1EC02132D42E3FE43F4FF04C5CFA5868FC6070FD6473FD6774FC6978FD6574
      FB7780E6E9EBF7FBFCFDFBFCFDE3E4F5707AE36875FD6978FD6875FC6773FD62
      72FD5C6CFC5363FB4858F63948E92839DD1A2ACB404BC4FBFBFEFFFFFFA5ABE0
      212FC6515FE25A68ED5D6BF45E6DFA6170FD6675FC6B78FC6D7AFC6F7DFD6C79
      FC7C87E7ECEEF8FEFEFDFEFEFEE6E7F67580E56E7BFD6F7DFD6E7CFD6C79FC69
      77FC6473FD5F6EFB5E6CF95C69F15865E84350D91F2EBABDC2E9FFFFFFA2A9DE
      4854D36774E5626FEB6371F46572FB6A78FC6F7DFD727FFC7582FC7783FC7380
      FC848DE8EDEEF9FEFEFDFEFEFEE7E8F67C86E67482FC7683FC7582FD7380FD71
      7FFD6D7BFD6875FC6572F86370F0636FE76772E33B47C3B7BCE6FFFFFFABB0E1
      4D5AD26F7AE46B77EC6D79F46D7AFB707FFC7583FC7986FC7D88FD7F8AFD7B88
      FC8A94E9EEF0F8FEFEFDFEFEFEE8EAF7838DE67C89FD7E8AFC7E89FC7B87FC77
      85FC7381FD6F7DFB6C7AF86C78F06A75E76C78E1424EC4BFC2E8FFFFFFBDC1E8
      4B58CF7883E6737FEB7580F37782FA7985FD7D89FC818DFC838FFC8591FC838F
      FB919AE9EFF0F9FEFEFDFEFEFEEAEBF78B94E88490FC8591FC8490FC828EFC7F
      8CFC7B88FC7785FB7681F6737FF0727EE7737DE3626BCDFBFBFEFFFFFFE2E4F4
      4955C8818CE97C86EB7D88F37E8AF8808DFC8591FD8894FC8A96FC8D98FC8B95
      FC99A1ECF0F1F9FEFEFDFEFEFEEBEDF7939BEA8D96FD8D97FC8B97FC8995FC86
      93FC828FFC7F8BFB7E89F57C87EF7E88E76F7AE0858DD4FFFFFFFFFFFFFEFEFF
      989EDC868FE8858EE98690F18691F78792FB8C96FD8F99FD919CFD949EFD929C
      FC9EA7ECF0F1F9FEFEFDFEFEFEECEDF89AA1EB939DFC949EFD929DFC909BFC8D
      98FC8994FC8791F98690F3848EEC8B94E9606BD6B8BCE4FFFFFFFFFFFFFFFFFF
      D8DAF17A83DD959CEC8E96EF9098F59099FA929CFB96A0FC97A2FC9AA4FD9AA2
      FCA6ACEEF1F3FAFEFEFDFEFEFEEDEEF8A1A8EC9AA4FD9BA4FC99A3FC96A1FC94
      9EFD919AFB9099F88F98F28C96EB949CEC787FD3F4F5FBFFFFFFFFFFFFFFFFFF
      FEFEFFB2B7E7A0A7F0969DEC979EF399A1F799A2FB9BA5FB9EA7FD9FAAFCA0A8
      FCABB1EFF2F2FAFDFDFDFDFDFDEDEFF8A6AEEEA0AAFDA0AAFC9EA8FC9DA5FC9A
      A2FC98A2F997A0F5969EF09AA1EC838BE3A3A8DEFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFCED0ED858CE2A6ADEE9EA5EFA0A8F5A0A9F8A1A9FCA3ABFCA5AFFCA5AD
      FCB1B7EFF5F5FAFFFFFDFFFFFEF1F2F9ACB3EEA6AEFCA6AFFDA4ACFCA2AAFCA0
      A9F9A0A8F69FA7F29DA4ECA8AEF1838AD7F4F5FBFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFDFDFE9DA4DDA7AFF0A8AFECA7ADF2A9AFF6A9B0F9A9B0FBABB2FCAAB2
      FCB4B9F1EAEBF8F2F3FAF4F4FAE7E9F7B1B7F0ABB3FDACB2FDAAB1FBA9B0FAA8
      AFF7A7AEF3A5ADEEB0B6F0B9BEEDB6BBE4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFE9EAF7A8ADE3B7BDF6AFB5EEAEB5F1AFB7F6B0B7F8B0B7FAB1B8
      FBB2B9F7B7BCF4B8BDF4B9BEF4B6BDF4B1B9F7B1B8FCB0B7FBB1B7F9B1B7F7B0
      B6F4ADB3EFB6BBF19EA5EB9096D5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFD8DBF0B5B9E8BDC3F6BABFEFB5BBF1B8BDF4B7BEF7B8BE
      F8B8BFFAB7BEFAB7BEFAB7BDFBB7BEFAB7BFF9B8BFF8B8BEF7B9BDF6B7BCF4B6
      BAEFC1C4F3E3E4F98C94D5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFE6E8F6AFB4E4B4B9F3C9CDF5C0C4F1BDC2F2BDC3
      F4BEC3F6BFC5F7BFC5F8C0C4F8BFC5F7BEC4F6BEC4F5BEC2F4BCC2F1C3C8F3C7
      CBF8D0D3F3A6ACDEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFEBBBFE6D1D4F2C1C6F7CFD3F8CDD1
      F5C9CDF4C6CAF3C5C9F3C3C8F3C4CAF3C6CAF3CACEF3CFD4F6CFD4F9AFB4EF9F
      A5E0D4D6EEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE3E5F4AFB3E2C7CBEDACB1
      ECC8CDF8D5D9FAD7DAF8D8DCF8D6D9F9D2D5F8C1C7F4A3A9E7AAB0E2BCC0E6FC
      FCFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAEBF6C6CA
      EABAC0E7929ADA939ADB9197D99097DAABAFE3A8AEDFD3D6EEFCFCFEFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFECEEF9E6E6F4E4E5F4E9EAF7FDFDFEFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
    ParentFont = False
    TabOrder = 21
    OnClick = BtnEmergStopClick
  end
  object BtnSetOffsets: TBitBtn
    Left = 1009
    Top = 444
    Width = 122
    Height = 24
    Hint = 'Set PCB Offsets to match this part on PCB'
    Caption = 'Set PCB Offset'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 22
    OnClick = BtnSetOffsetsClick
  end
  object BtnCamView: TBitBtn
    Left = 1011
    Top = 335
    Width = 122
    Height = 25
    Hint = 
      'Reset all Tape/Feeder pickup locations and part pickup position ' +
      'counts (updated by job run)'
    Caption = 'Cam View'
    Font.Charset = ANSI_CHARSET
    Font.Color = clFuchsia
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 23
    OnClick = BtnCamViewClick
  end
  object BitBtn1: TBitBtn
    Tag = 1
    Left = 279
    Top = 27
    Width = 95
    Height = 20
    Hint = 'Save job table as .JOB file'
    Caption = 'Save Job as...'
    Font.Charset = ANSI_CHARSET
    Font.Color = clPurple
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 24
    OnClick = BtnSaveJobAsClick
  end
  object BtnSavePositionsAs: TBitBtn
    Left = 364
    Top = 305
    Width = 115
    Height = 20
    Hint = 'Save Component Positions table as .CSV file'
    Caption = 'Save Positions as...'
    Font.Charset = ANSI_CHARSET
    Font.Color = clPurple
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 25
    OnClick = BtnSavePositionsAsClick
  end
  object BitBtn2: TBitBtn
    Left = 899
    Top = 27
    Width = 113
    Height = 20
    Hint = 'Save Tape/Feeder table as .FDR file'
    Caption = 'Save Feeders as...'
    Font.Charset = ANSI_CHARSET
    Font.Color = clPurple
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 26
    OnClick = BtnSaveFeederAsClick
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 662
    Width = 1164
    Height = 19
    Panels = <>
    ParentShowHint = False
    ShowHint = False
    SimplePanel = True
  end
  object BtnResetCounters: TBitBtn
    Left = 661
    Top = 27
    Width = 113
    Height = 20
    Hint = 'Reset all part counters to 0 (all filled up)'
    Caption = 'Reset Part Counters'
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 28
    OnClick = ResetPartPickupNumberClick
  end
  object SaveDialog1: TSaveDialog
    Filter = 
      'Component Positions (CSV)|*.csv|Component Positions (Text)|*.txt' +
      '|Job Tabe|*.job|Feeder Table|*.fdr'
    Left = 533
    Top = 600
  end
  object OpenDialog1: TOpenDialog
    Filter = 
      'Component Positions (CSV)|*.csv|Component Positions (Text)|*.txt' +
      '|Job Tabe|*.job|Feeder Table|*.fdr'
    Left = 469
    Top = 584
  end
  object XPManifest1: TXPManifest
    Left = 535
    Top = 482
  end
  object TimerStatus: TTimer
    Enabled = False
    Interval = 50
    OnTimer = TimerStatusElapsed
    Left = 402
    Top = 584
  end
  object TimerBlink: TTimer
    Interval = 350
    OnTimer = TimerBlinkTimer
    Left = 450
    Top = 743
  end
  object PopupMenuFeeder: TPopupMenu
    Left = 877
    Top = 200
    object ApplyJobDefaultsReload4: TMenuItem
      Caption = 'Apply Job Defaults (Reload)'
      OnClick = ApplyJobDefaultsReload1Click
    end
    object ApplyFeederstoPositionTable1: TMenuItem
      Caption = 'Apply Feeders to matching Parts'
      OnClick = ApplyFeederstoMatchingPartsClick
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object ResetPartCounts1: TMenuItem
      Caption = 'Reset all Part Pickup Counters'
      OnClick = ResetPartPickupNumberClick
    end
    object DefaultSpacing1: TMenuItem
      Caption = 'Reset to Default Spacing'
      OnClick = DefaultSpacing1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object AddTapeFeeder1: TMenuItem
      Caption = 'Add Tape/Feeder'
      OnClick = AddTapeFeeder1Click
    end
    object AddfromPartPositions1: TMenuItem
      Caption = 'Add Feeder from active Part'
      OnClick = AddfromPartPositions1Click
    end
    object DeleteselectedTapeFeeder1: TMenuItem
      Caption = 'Delete this Tape/Feeder'
      OnClick = DeleteselectedTapeFeeder1Click
    end
    object N6: TMenuItem
      Caption = '-'
    end
    object MoveNozzletothisTapeFeeder1: TMenuItem
      Caption = 'Move Nozzle to this Tape/Feeder'
      OnClick = MoveNozzletothisTapeFeeder1Click
    end
    object MoveNozzletothisTapeFeeder2: TMenuItem
      Caption = 'Move Cam to this Tape/Feeder'
      OnClick = MoveCamtothisTapeFeeder1Click
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object SetFeederOffsetNozzleatfirstPart1: TMenuItem
      Caption = 'Set Feeder XY (Nozzle at first Part)'
      OnClick = SetFeederOffsetNozzleatfirstPart1Click
    end
    object SetFeederOffsetCamatfirstPart1: TMenuItem
      Caption = 'Set Feeder XY (Cam at first Part)'
      OnClick = SetFeederOffsetCamatfirstPart1Click
    end
  end
  object PopupMenuParts: TPopupMenu
    Left = 432
    Top = 408
    object ApplyJobDefaultsReload1: TMenuItem
      Caption = 'Apply Job Defaults (Reload)'
      OnClick = ApplyJobDefaultsReload1Click
    end
    object N4: TMenuItem
      Caption = '-'
    end
    object AddfromselectedPartPositionsEntry1: TMenuItem
      Caption = 'Add Feeder for selected Part'
      OnClick = AddfromPartPositions1Click
    end
    object DeleteSelectedPart1: TMenuItem
      Caption = 'Delete this Part'
      OnClick = DeleteSelectedPart1Click
    end
    object N5: TMenuItem
      Caption = '-'
    end
    object MoveNozzletothisPart1: TMenuItem
      Caption = 'Move Nozzle to this Part'
      OnClick = MoveNozzletothisPart1Click
    end
    object MoveCamTothisPart1: TMenuItem
      Caption = 'Move Cam To this Part'
      OnClick = MoveCamTothisPart1Click
    end
    object N7: TMenuItem
      Caption = '-'
    end
    object SetPCBOffsetNozzleatPart1: TMenuItem
      Caption = 'Set PCB Offset (Nozzle at Part)'
    end
    object SetPCBOffsetCamatPart1: TMenuItem
      Caption = 'Set PCB Offset (Cam at Part)'
    end
  end
  object MainMenu1: TMainMenu
    Left = 496
    Top = 8
    object File1: TMenuItem
      Caption = 'Job File'
      object FeederFile1: TMenuItem
        Caption = 'Open...'
        ShortCut = 16463
        OnClick = BtnOpenJobClick
      end
      object PositionsFile1: TMenuItem
        Caption = 'Save as...'
        ShortCut = 49235
        OnClick = BtnSaveJobAsClick
      end
      object Save2: TMenuItem
        Caption = 'Save'
        ShortCut = 16467
        OnClick = BtnSaveJobClick
      end
      object Saveall1: TMenuItem
        Caption = 'Save all'
        ShortCut = 49235
        OnClick = Saveall1Click
      end
      object N8: TMenuItem
        Caption = '-'
      end
      object QQuit1: TMenuItem
        Caption = 'Quit'
        ShortCut = 16465
        OnClick = QQuit1Click
      end
    end
    object Open1: TMenuItem
      Caption = 'Feeders'
      object Open2: TMenuItem
        Caption = 'Open...'
        OnClick = BtnEmergStopClick
      end
      object Saveas1: TMenuItem
        Caption = 'Save as...'
        OnClick = BtnSaveFeederAsClick
      end
      object Save1: TMenuItem
        Caption = 'Save'
        OnClick = BtnSaveFeedersClick
      end
      object N19: TMenuItem
        Caption = '-'
      end
      object ApplyJobDefaultsReload3: TMenuItem
        Caption = 'Apply Job Defaults (Reload)'
        OnClick = ApplyJobDefaultsReload1Click
      end
      object ApplyFeederstoPositionTable3: TMenuItem
        Caption = 'Apply Feeders to matching Parts'
        OnClick = ApplyFeederstoMatchingPartsClick
      end
      object N15: TMenuItem
        Caption = '-'
      end
      object ResetallPartPickupNumbers3: TMenuItem
        Caption = 'Reset all Part Pickup Counters'
        OnClick = ResetPartPickupNumberClick
      end
      object ResettoDefaultSpacing3: TMenuItem
        Caption = 'Reset to Default Spacing'
        OnClick = DefaultSpacing1Click
      end
      object N16: TMenuItem
        Caption = '-'
      end
      object AddTapeFeeder3: TMenuItem
        Caption = 'Add Tape/Feeder'
        OnClick = AddTapeFeeder1Click
      end
      object AddfromselectedPartPositionsEntry3: TMenuItem
        Caption = 'Add from selected Part Positions Entry'
        OnClick = AddfromPartPositions1Click
      end
      object N17: TMenuItem
        Caption = '-'
      end
      object DeletethisTapeFeeder3: TMenuItem
        Caption = 'Delete this Tape/Feeder'
        OnClick = DeleteselectedTapeFeeder1Click
      end
      object N18: TMenuItem
        Caption = '-'
      end
      object MoveNozzletothisTapeFeeder3: TMenuItem
        Caption = 'Move Nozzle to this Tape/Feeder'
        OnClick = MoveNozzletothisTapeFeeder1Click
      end
      object MoveCamtothisTapeFeeder3: TMenuItem
        Caption = 'Move Cam to this Tape/Feeder'
        OnClick = MoveCamtothisTapeFeeder1Click
      end
      object N20: TMenuItem
        Caption = '-'
      end
      object SetFeederOffsetNozzleatfirstPart2: TMenuItem
        Caption = 'Set Feeder XY (Nozzle at first Part)'
        OnClick = SetFeederOffsetNozzleatfirstPart1Click
      end
      object SetFeederOffsetCamatfirstPart2: TMenuItem
        Caption = 'Set Feeder XY (Cam at first Part)'
        OnClick = SetFeederOffsetCamatfirstPart1Click
      end
    end
    object Positions1: TMenuItem
      Caption = 'Positions'
      object Open3: TMenuItem
        Caption = 'Open...'
        OnClick = BtnOpenPositionsClick
      end
      object Saveas2: TMenuItem
        Caption = 'Save as...'
        OnClick = BtnSaveJobAsClick
      end
      object Save3: TMenuItem
        Caption = 'Save'
        OnClick = BtnSavePositionsClick
      end
      object N11: TMenuItem
        Caption = '-'
      end
      object DeletethisPart1: TMenuItem
        Caption = 'Delete this Part'
        OnClick = DeleteSelectedPart1Click
      end
      object N12: TMenuItem
        Caption = '-'
      end
      object MoveNozzletothisPart2: TMenuItem
        Caption = 'Move Nozzle to this Part'
        OnClick = MoveNozzletothisPart1Click
      end
      object MoveCamTothisPart2: TMenuItem
        Caption = 'Move Cam To this Part'
        OnClick = MoveCamTothisPart1Click
      end
      object N13: TMenuItem
        Caption = '-'
      end
      object SetPCBOffsetNozzleatPart2: TMenuItem
        Caption = 'Set PCB Offset (Nozzle at Part)'
      end
      object SetPCBOffsetCamatPart2: TMenuItem
        Caption = 'Set PCB Offset (Cam at Part)'
      end
    end
    object Actions1: TMenuItem
      Caption = 'Actions'
      object GRBLConnect1: TMenuItem
        Caption = 'GRBL Connect...'
        ShortCut = 16462
        OnClick = BtnConnectClick
      end
      object GRBLDisconnect1: TMenuItem
        Caption = 'GRBL Disconnect'
        ShortCut = 16457
        OnClick = BtnCloseClick
      end
      object HomeCycle1: TMenuItem
        Caption = 'Home Cycle'
        ShortCut = 16456
        OnClick = BtnHomeCycleClick
      end
      object N9: TMenuItem
        Caption = '-'
      end
      object CamView1: TMenuItem
        Caption = 'Cam View'
        ShortCut = 16459
        OnClick = BtnCamViewClick
      end
      object N10: TMenuItem
        Caption = '-'
      end
      object SetOffsetsaccordingtoPart1: TMenuItem
        Caption = 'Set Offsets to Part Center'
        ShortCut = 16463
        OnClick = BtnSetOffsetsClick
      end
      object RunJob1: TMenuItem
        Caption = 'Run Job'
        ShortCut = 16466
        OnClick = BtnRunJobClick
      end
      object StopCancel1: TMenuItem
        Caption = 'Stop/Cancel'
        ShortCut = 16411
        OnClick = BtnEmergStopClick
      end
    end
  end
end
