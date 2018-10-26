object Form3: TForm3
  Left = 100
  Top = 237
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Camera View'
  ClientHeight = 418
  ClientWidth = 778
  Color = clBtnFace
  Constraints.MaxHeight = 508
  Constraints.MaxWidth = 794
  Constraints.MinHeight = 250
  Constraints.MinWidth = 400
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object BtnCamAtPart: TSpeedButton
    Left = 8
    Top = 330
    Width = 129
    Height = 20
    Hint = 
      'Camera center is above selected part center on PCB; set offsets ' +
      'accordingly'
    Caption = 'Set PCB Job Offset'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    OnClick = BtnCamAtPartClick
  end
  object Label1: TLabel
    Left = 320
    Top = 210
    Width = 5
    Height = 19
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object BtnCamAtFeederZero: TSpeedButton
    Left = 8
    Top = 356
    Width = 129
    Height = 20
    Hint = 
      'Camera center is above selected Feeder part center; set Job offs' +
      'ets accordingly'
    Caption = 'Set Feeder Job Offset'
    Font.Charset = ANSI_CHARSET
    Font.Color = clFuchsia
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    OnClick = BtnCamAtFeederClick
  end
  object VideoBox: TPaintBox
    Left = 139
    Top = -4
    Width = 640
    Height = 480
    Color = clCream
    ParentColor = False
    OnMouseDown = VideoBoxMouseDown
    OnMouseMove = VideoBoxMouseMove
    OnMouseUp = VideoBoxMouseUp
  end
  object BtnMoveCamPart: TSpeedButton
    Left = 8
    Top = 165
    Width = 129
    Height = 25
    Hint = 'Move Cam to Part selected by active Position Table entry'
    Caption = 'Part Center'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGreen
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = BtnMoveCamPartClick
  end
  object Label3: TLabel
    Left = 10
    Top = 146
    Width = 83
    Height = 13
    Caption = 'Move Cam to...'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object BtnMoveCamFeederZero: TSpeedButton
    Left = 8
    Top = 196
    Width = 129
    Height = 25
    Hint = 
      'Move Cam to next pickup part selected by active Feeder Table ent' +
      'ry'
    Caption = 'Feeder Next Part'
    Font.Charset = ANSI_CHARSET
    Font.Color = clPurple
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    OnClick = BtnMoveCamFeederClick
  end
  object Label5: TLabel
    Left = 10
    Top = 236
    Width = 125
    Height = 65
    Caption = 
      'Jog  cam manually to PCB  part resp. first feeder position and c' +
      'lick here to set PCB resp.  Feeder Offsets X,Y:'
    WordWrap = True
  end
  object Label2: TLabel
    Left = 10
    Top = 312
    Width = 62
    Height = 13
    Caption = 'Set Offsets'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 352
    Top = 101
    Width = 184
    Height = 19
    Caption = 'Drag Mouse to move Cam'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    WordWrap = True
  end
  object BtnCamAtFeederPart: TSpeedButton
    Left = 8
    Top = 382
    Width = 129
    Height = 20
    Hint = 
      'Camera center is above selected Feeder part center; set active F' +
      'eeder offsets accordingly'
    Caption = 'Set active Feeder Position'
    Font.Charset = ANSI_CHARSET
    Font.Color = clPurple
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    OnClick = BtnCamAtFeederPartClick
  end
  object TrackBar1: TTrackBar
    Left = 8
    Top = 14
    Width = 129
    Height = 20
    Hint = 'Crosshair circle diameter'
    Max = 100
    Min = 1
    Position = 10
    TabOrder = 0
    TabStop = False
    TickStyle = tsNone
  end
  object StaticText1: TStaticText
    Left = 104
    Top = 40
    Width = 29
    Height = 17
    Caption = 'Color'
    TabOrder = 1
  end
  object StaticText6: TStaticText
    Left = 17
    Top = 40
    Width = 52
    Height = 17
    Caption = 'Circle Dia.'
    TabOrder = 2
  end
  object OverlayColor: TPanel
    Left = 73
    Top = 40
    Width = 26
    Height = 13
    Hint = 'Crosshair overlay color'
    BevelWidth = 2
    Color = clRed
    Ctl3D = True
    ParentBackground = False
    ParentCtl3D = False
    TabOrder = 3
    OnClick = OverlayColorClick
  end
  object ColorDialog1: TColorDialog
    Left = 248
    Top = 304
  end
end
