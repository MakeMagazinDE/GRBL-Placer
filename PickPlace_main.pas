unit PickPlace_main;
// Simple Pick & Place with MaXYposi
{
GRBL-Einstellungen für Fabbster-Maschine:
$100=91.324
$101=91.324
$102=125.984
$103=8.888
$110=12000.000
$111=12000.000
$112=8000.000
$113=100000.000
$120=800.000
$121=800.000
$122=600.000
$123=15000.000
$130=225.000
$131=230.000
$132=60.000
$133=360.000
}
interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  Registry, System.Classes, System.UITypes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.XPMan, Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.Grids,
  Vcl.StdCtrls, Vcl.Buttons, ftditypes, grbl_com_minimal, MMsystem, SyncObjs,
  Vcl.Menus;

type
  TForm1 = class(TForm)
    StringGrid1: TStringGrid;
    SaveDialog1: TSaveDialog;
    OpenDialog1: TOpenDialog;
    XPManifest1: TXPManifest;
    BtnOpenFile: TBitBtn;
    ComboBoxFeeder: TComboBox;
    BtnSavePositions: TBitBtn;
    StringGrid2: TStringGrid;
    BtnOpenFeederValues: TBitBtn;
    BtnSaveFeederValues: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    StringGrid3: TStringGrid;
    BtnSaveJob: TBitBtn;
    BtnOpenJob: TBitBtn;
    BtnClose: TButton;
    BtnRescan: TButton;
    DeviceView: TEdit;
    PanelAlive: TPanel;
    PanelReady: TPanel;
    PanelRun: TPanel;
    PanelHold: TPanel;
    PanelAlarm: TPanel;
    PanelBusy: TPanel;
    PanelPinState: TPanel;
    Memo1: TMemo;
    TimerStatus: TTimer;
    Bevel3: TBevel;
    Bevel8: TBevel;
    PosX: TLabel;
    PosY: TLabel;
    PosZ: TLabel;
    MposX: TLabel;
    MposY: TLabel;
    MposZ: TLabel;
    Label28: TLabel;
    MposC: TLabel;
    PosC: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    BtnEmergStop: TBitBtn;
    TimerBlink: TTimer;
    BtnRunJob: TSpeedButton;
    BtnHomeCycle: TSpeedButton;
    Bevel1: TBevel;
    BtnSetOffsets: TBitBtn;
    Label4: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    BtnCamView: TBitBtn;
    BitBtn1: TBitBtn;
    PopupMenuFeeder: TPopupMenu;
    ResetPartCounts1: TMenuItem;
    N1: TMenuItem;
    DefaultSpacing1: TMenuItem;
    AddTapeFeeder1: TMenuItem;
    AddfromPartPositions1: TMenuItem;
    DeleteselectedTapeFeeder1: TMenuItem;
    N3: TMenuItem;
    PopupMenuParts: TPopupMenu;
    ApplyJobDefaultsReload1: TMenuItem;
    N4: TMenuItem;
    DeleteSelectedPart1: TMenuItem;
    N5: TMenuItem;
    MoveNozzletothisPart1: TMenuItem;
    MoveCamTothisPart1: TMenuItem;
    N6: TMenuItem;
    MoveNozzletothisTapeFeeder1: TMenuItem;
    MoveNozzletothisTapeFeeder2: TMenuItem;
    N7: TMenuItem;
    SetPCBOffsetNozzleatPart1: TMenuItem;
    SetPCBOffsetCamatPart1: TMenuItem;
    BtnSavePositionsAs: TBitBtn;
    BitBtn2: TBitBtn;
    Label6: TLabel;
    MainMenu1: TMainMenu;
    File1: TMenuItem;
    FeederFile1: TMenuItem;
    PositionsFile1: TMenuItem;
    Open1: TMenuItem;
    Saveas1: TMenuItem;
    Save1: TMenuItem;
    Save2: TMenuItem;
    Open2: TMenuItem;
    Positions1: TMenuItem;
    Open3: TMenuItem;
    Saveas2: TMenuItem;
    Save3: TMenuItem;
    N8: TMenuItem;
    QQuit1: TMenuItem;
    Actions1: TMenuItem;
    GRBLConnect1: TMenuItem;
    GRBLDisconnect1: TMenuItem;
    N9: TMenuItem;
    CamView1: TMenuItem;
    N10: TMenuItem;
    SetOffsetsaccordingtoPart1: TMenuItem;
    HomeCycle1: TMenuItem;
    RunJob1: TMenuItem;
    StopCancel1: TMenuItem;
    N11: TMenuItem;
    DeletethisPart1: TMenuItem;
    N12: TMenuItem;
    MoveNozzletothisPart2: TMenuItem;
    MoveCamTothisPart2: TMenuItem;
    N13: TMenuItem;
    SetPCBOffsetNozzleatPart2: TMenuItem;
    SetPCBOffsetCamatPart2: TMenuItem;
    N15: TMenuItem;
    N16: TMenuItem;
    N17: TMenuItem;
    N18: TMenuItem;
    MoveNozzletothisTapeFeeder3: TMenuItem;
    N19: TMenuItem;
    ApplyJobDefaultsReload4: TMenuItem;
    StatusBar1: TStatusBar;
    BtnResetCounters: TBitBtn;
    AddfromselectedPartPositionsEntry1: TMenuItem;
    N2: TMenuItem;
    SetFeederOffsetCamatfirstPart1: TMenuItem;
    SetFeederOffsetNozzleatfirstPart1: TMenuItem;
    N20: TMenuItem;
    SetFeederOffsetNozzleatfirstPart2: TMenuItem;
    SetFeederOffsetCamatfirstPart2: TMenuItem;
    Saveall1: TMenuItem;
    procedure BtnOpenPositionsClick(Sender: TObject);
    procedure StringGrid1TopLeftChanged(Sender: TObject);
    procedure StringGrid1SelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure StringGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure StringGrid1DrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure ComboBoxFeederChange(Sender: TObject);
    procedure BtnSavePositionsAsClick(Sender: TObject);
    procedure BtnOpenFeederValuesClick(Sender: TObject);
    procedure BtnSaveFeederAsClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure StringGrid2DrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure StringGrid2SelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure BtnOpenJobClick(Sender: TObject);
    procedure BtnSaveJobAsClick(Sender: TObject);
    procedure BtnCloseClick(Sender: TObject);
    procedure BtnConnectClick(Sender: TObject);
    procedure TimerStatusElapsed(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure TimerBlinkTimer(Sender: TObject);
    procedure PanelReadyClick(Sender: TObject);
    procedure BtnHomeCycleClick(Sender: TObject);
    procedure BtnRunJobClick(Sender: TObject);
    procedure StringGrid3DrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure PanelAlarmClick(Sender: TObject);
    procedure AddEmptyFeederClick(Sender: TObject);
    procedure BtnEmergStopClick(Sender: TObject);
    procedure BtnSetOffsetsClick(Sender: TObject);
    procedure StringGrid2MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure BtnCamViewClick(Sender: TObject);
    procedure ResetPartPickupNumberClick(Sender: TObject);
    procedure ApplyFeederstoMatchingPartsClick(Sender: TObject);
    procedure BtnSaveJobClick(Sender: TObject);
    procedure StringGrid1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure DeleteSelectedPart1Click(Sender: TObject);
    procedure ApplyJobDefaultsReload1Click(Sender: TObject);
    procedure AddTapeFeeder1Click(Sender: TObject);
    procedure AddfromPartPositions1Click(Sender: TObject);
    procedure DeleteselectedTapeFeeder1Click(Sender: TObject);
    procedure DefaultSpacing1Click(Sender: TObject);
    procedure MoveNozzletothisPart1Click(Sender: TObject);
    procedure MoveNozzletothisTapeFeeder1Click(Sender: TObject);
    procedure MoveCamtothisTapeFeeder1Click(Sender: TObject);
    procedure MoveCamTothisPart1Click(Sender: TObject);
    procedure BtnSavePositionsClick(Sender: TObject);
    procedure BtnSaveFeedersClick(Sender: TObject);
    procedure QQuit1Click(Sender: TObject);
    procedure StringGrid1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure StringGrid2RowMoved(Sender: TObject; FromIndex, ToIndex: Integer);
    procedure SetFeederOffsetCamatfirstPart1Click(Sender: TObject);
    procedure SetFeederOffsetNozzleatfirstPart1Click(Sender: TObject);
    procedure Saveall1Click(Sender: TObject);
  private
    { Private declarations }
    form_CriticalSection: TCriticalSection;
  public
    { Public declarations }
  end;

  TLed = class
    private
      IsOn: Boolean;
      procedure SetLED(led_on: Boolean);
    public
      property Checked: Boolean read IsOn write SetLED;
    end;

    procedure HandleZeroRequest(axis_mask: Integer);
    procedure SetPCBOffsets(with_cam: Boolean);
    procedure SetFeederDefaultOffset(with_cam: Boolean);
    procedure SetSingleFeederPosition(my_Feeder: Integer; with_cam: Boolean);

    procedure MoveToCurrentFeeder(with_cam: Boolean);
    procedure MoveToCurrentPartCenter(with_cam: Boolean);
    function GetPartNameFromRow: String;
    procedure MoveCamRelative(pixels_X, pixels_Y: Integer);

var
  Form1: TForm1;
  PartsList: TStringList;
  SelectedRow, SelectedFeeder: Integer;
  CurrentJobName, CurrentPositionsName, CurrentFeedersName,
  MountedNozzle: String;
  PosTableSortColumn: Integer;

implementation

{$R *.dfm}

uses deviceselect, cam_view;

var
  LEDbusy: TLed;
  TimerBlinkToggle: Boolean;

procedure TLed.SetLED(led_on: boolean);
// liefert vorherigen Zustand zurück
begin
  if led_on and (not IsOn) then begin
    Form1.PanelBusy.Color:= clred;
    Form1.PanelBusy.Font.Color:= clWhite;
    Screen.Cursor:= crHourGlass;
  end;
  if (not led_on) and IsOn then begin
    Form1.PanelBusy.Color:= $00000040;
    Form1.PanelBusy.Font.Color:= clgray;
    Screen.Cursor:= crDefault;
  end;
  IsOn:= led_on;
end;

// #############################################################################

procedure DisplayMachinePosition;
begin
  with Form1 do begin
    MPosX.Caption:= FormatFloat('000.00', grbl_mpos.x);
    MPosY.Caption:= FormatFloat('000.00', grbl_mpos.y);
    MPosZ.Caption:= FormatFloat('000.00', grbl_mpos.z);
    MPosC.Caption:= FormatFloat('000.0', grbl_mpos.c);
  end;
end;

procedure DisplayWorkPosition;
begin
  with Form1 do begin
    PosX.Caption:= FormatFloat('000.00', grbl_wpos.x);
    PosY.Caption:= FormatFloat('000.00', grbl_wpos.y);
    PosZ.Caption:= FormatFloat('000.00', grbl_wpos.z);
    PosC.Caption:= FormatFloat('000.0', grbl_wpos.c);
  end;
end;

procedure ResetToolflags;
// Nach Homing, Connect etc: Unkalibrierter Zustand
begin
  WorkZeroXdone:= false;
  WorkZeroYdone:= false;
  WorkZeroZdone:= false;
  WorkZeroAllDone:= false;
end;


procedure SetAllbuttons;
begin
  WorkZeroAllDone:= WorkZeroXdone and WorkZeroYdone and WorkZeroZdone;
  with Form1 do begin
    BtnHomeCycle.Enabled:= grbl_is_connected;
    BtnClose.Enabled:= (ftdi_isopen or com_isopen);
    BtnRescan.Enabled:= not BtnClose.Enabled;
    // BtnRunJob.Enabled:= ((MachineState = idle) and HomingPerformed and WorkZeroAllDone);
    if (not HomingPerformed) and TimerBlinkToggle then
      BtnHomeCycle.Font.Color:= cllime
    else
      BtnHomeCycle.Font.Color:= clgreen;
  end;
end;

// #############################################################################

procedure HandleZeroRequest(axis_mask: Integer);
// wenn Zero-Button auf Maschinen-Panel gedrückt
var my_str, my_response: String;

begin
  if axis_mask = 0 then
    exit;
  if HomingPerformed then with Form1 do begin
    Memo1.lines.add('Zero request from machine panel');
    PlaySound('SYSTEMEXCLAMATION', 0, SND_ASYNC);
    if (axis_mask and 1 = 1) then begin
      WorkZero.X:= grbl_mpos.x;
      my_str:= 'G92 X0';
      my_response:= uppercase(grbl_SendWithShortTimeout(my_str));
      WorkZeroXdone:= true;
    end;

    if (axis_mask and 2 = 2) then begin
      WorkZero.Y:= grbl_mpos.y;
      my_str:= 'G92 Y0';
      my_response:= uppercase(grbl_SendWithShortTimeout(my_str));
      WorkZeroYdone:= true;
    end;

    if (axis_mask and 4 = 4) then begin
      WorkZero.Z:= grbl_mpos.z;
      my_str:= 'G92 Z0';
      my_response:= uppercase(grbl_SendWithShortTimeout(my_str));
      WorkZeroZdone:= true;
    end;

    if (axis_mask and 8 = 8) then begin
      WorkZero.C:= grbl_mpos.C;
      Jog.C:= WorkZero.C;
      my_str:= 'G92 C0';
      my_response:= uppercase(grbl_SendWithShortTimeout(my_str));
      Jog.C:= WorkZero.C;
    end;

    Form1.form_CriticalSection.Acquire;
    repeat
      GetStatus; // muss eingetroffen sein
    until MachineState <> zero;
    Form1.form_CriticalSection.Leave;

  end else
    Form1.Memo1.lines.add('WARNING: Zero request ignored - no Home Cycle performed');
end;

// #############################################################################

procedure WaitForIdle;
// Warte auf Idle
begin
  if grbl_is_connected then
    while (MachineState = run) do begin // noch beschäftigt?
      sleep(50);
      if not Form1.TimerStatus.enabled then begin
        Form1.form_CriticalSection.Acquire;
        GetStatus;
        Form1.form_CriticalSection.Leave;
      end;
      Application.processmessages;
      if isEmergency or isWaitExit then
        break;
    end;
end;

procedure ClearAlarmLock;
begin
  Form1.Memo1.lines.add('');
  HomingPerformed:= false;
  Form1.Memo1.lines.add('Unlock ALARM state');
  ResetToolflags;

  Form1.form_CriticalSection.Acquire;

  grbl_wait_for_timeout(200);
  grbl_sendRealTimeCmd(#24);   // Reset
  sleep(100);
  grbl_wait_for_timeout(50);
  grbl_sendStr('$X'+#13, false);   // Clear Lock
  grbl_wait_for_timeout(100);

  Form1.form_CriticalSection.Leave;

  Form1.Memo1.lines.add('Proceed with care!');
end;

// #############################################################################

procedure get_cam_offset(var cam_offs_x, cam_offs_y: Double);
// aus Defaults
begin
  with Form1.StringGrid3 do begin
    cam_offs_x:= StrToFloatDef(Cells[1,22], 10);
    cam_offs_y:= StrToFloatDef(Cells[1,23], 10);
  end;
end;

procedure get_pcb_offset(var pcb_zero_x, pcb_zero_y, pcb_zero_z, z_move_lift: Double);
// aus Defaults
begin
  with Form1.StringGrid3 do begin
    pcb_zero_x:= StrToFloatDef(Cells[1,3], 20);
    pcb_zero_y:= StrToFloatDef(Cells[1,4], 20);
    pcb_zero_z:= StrToFloatDef(Cells[1,5], -1);
    z_move_lift:= StrToFloatDef(Cells[1,14], 0);
  end;
end;

procedure get_feeder_zero(var feeder_zero_x, feeder_zero_y, feeder_zero_z, feeder_rot: Double);
// aus Defaults
begin
  with Form1.StringGrid3 do begin
    feeder_zero_x:= StrToFloatDef(Cells[1,6], 20);
    feeder_zero_y:= StrToFloatDef(Cells[1,7], 20);
    feeder_zero_z:= StrToFloatDef(Cells[1,8], -1);
    feeder_rot:= StrToFloatDef(Cells[1,9], 0);
  end;
end;

// #############################################################################
// ###########################  STRINGGRIDS  ###################################
// #############################################################################

procedure SaveStringGrid(StringGrid: TStringGrid; const FileName: TFileName);
// Save a TStringGrid to a file, min. 3 Cols
var
  f: TextFile;
  my_col, my_row: Integer;
begin
  AssignFile(f, FileName);
  Rewrite(f);
  with StringGrid do
  begin
    for my_row := 0 to RowCount - 1 do
    begin
      for my_col := 0 to ColCount - 1 do
      begin
        write(f, '"' + Cells[my_col, my_row] + '",')
      end;
      writeln(f);
    end;
  end;
  CloseFile(f);
end;

procedure LoadStringGrid(StringGrid: TStringGrid; const FileName: string);
var
  text_list, Line: TstringList;
  Row, Col: Integer;
  my_str: String;
begin
  StringGrid.RowCount := 0; // clear any previous data
  text_list := TstringList.Create;
  try
    Line := TstringList.Create;
    try
      Line.Delimiter := ',';
      text_list.LoadFromFile(FileName);
      StringGrid.RowCount := text_list.Count;
      for Row := 0 to text_list.Count - 1 do begin
        Line.DelimitedText := text_list[Row];
        for Col := 0 to StringGrid.ColCount - 1 do
          if Col < Line.Count then begin
            my_str:=  Line[Col];
            // Wenn Zahlenwert, Dezimalpunkte durch Komma ersetzen
            if (length(my_str) > 0) and (my_str[1] < #64) then
              my_str:= StringReplace(my_str, '.', ',', [rfReplaceAll, rfIgnoreCase]);
            StringGrid.Cells[Col, Row] := my_str;
          end;
      end;
      StringGrid.FixedRows := 1;
    finally
      Line.Free;
    end;
  finally
    text_list.Free;
  end;
end;

// #############################################################################

// verschiedene Hilfsroutinen

procedure sort_stringgrid(GenStrGrid: TStringGrid; ThatCol: Integer);
const
  // Define the Separator
  TheSeparator = '@';
var
  CountItem, I, J, K, ThePosition: integer;
  MyList: TStringList;
  MyString, TempString: string;
begin
  // Give the number of rows in the StringGrid
  CountItem := GenStrGrid.RowCount;
  //Create the List
  MyList := TStringList.Create;
  MyList.Sorted := False;
  try
    begin
      for I := 1 to (CountItem - 1) do
        MyList.Add(GenStrGrid.Rows[I].Strings[ThatCol] + TheSeparator +
          GenStrGrid.Rows[I].Text);
      //Sort the List
      Mylist.Sort;

      for K := 1 to Mylist.Count do
      begin
        //Take the String of the line (K – 1)
        MyString := MyList.Strings[(K - 1)];
        //Find the position of the Separator in the String
        ThePosition := Pos(TheSeparator, MyString);
        TempString := '';
        {Eliminate the Text of the column on which we have sorted the StringGrid}
        TempString := Copy(MyString, (ThePosition + 1), Length(MyString));
        MyList.Strings[(K - 1)] := '';
        MyList.Strings[(K - 1)] := TempString;
      end;

      // Refill the StringGrid
      for J := 1 to (CountItem - 1) do
        GenStrGrid.Rows[J].Text := MyList.Strings[(J - 1)];
    end;
  finally
    //Free the List
    MyList.Free;
  end;
end;

// #############################################################################

procedure get_vals_from_sg1row(my_row: Integer; var x, y, rot: Double; var feeder: Integer);
// 0_Name, 1_Value, 2_Package, 3_Place X, 4_Place Y, 5_Rotation, 6_Side, 7_Feeder
begin
  with Form1.StringGrid1 do begin
    x:= StrToFloatDef(Cells[3, my_row], 0);
    y:= StrToFloatDef(Cells[4, my_row], 0);
    rot:= StrToFloatDef(Cells[5, my_row], 0);
    feeder:= StrToIntDef(Cells[7, my_row], 0);
  end;
end;

function GetPartNameFromRow: String;
// 0_Name, 1_Value, 2_Package, 3_Place X, 4_Place Y, 5_Rotation, 6_Side, 7_Feeder
begin
 result:= Form1.StringGrid1.Cells[0, SelectedRow];
end;

procedure draw_simple_dropdown_in_sg(cb: TComboBox; rec: Trect; my_val: Integer);
// ComboBox-Inhalt in DropDownStringList-Abschnitt mit gleichem Parameter
var
  r: TRect;
begin
  with Form1 do
      with cb do begin
      // ComboBox aufbauen
      CopyRect(r, rec); // rec => r (Eck-Koordinaten an Hilfsrechteck übergeben)
      // Umrechnung der Eck-Koordinaten des Hilfsrechtecks:
      r.BottomRight := Parent.ScreenToClient
        (Form1.StringGrid1.ClientToScreen(r.BottomRight));
      r.TopLeft := Parent.ScreenToClient
        (Form1.StringGrid1.ClientToScreen(r.TopLeft));
      // Positionierung der ComboBoxButtonAssign (Left, Top, Width und Height werden zugewiesen):
      SetBounds(r.Left, r.Top, r.Right - r.Left, r.Bottom - r.Top);
      ItemIndex:= my_val;
      Visible := true;
      BringToFront; // Panel-Button in Vordergrund bringen
    end;
end;

procedure delete_sg_row(sg: TStringgrid);
var i: Integer;
begin
  for i := sg.Row to sg.RowCount - 2 do
    sg.Rows[i].Assign(sg.Rows[i + 1]);
  sg.RowCount := sg.RowCount - 1;
end;

function lookup_part(my_partvalue, my_package: String): Integer;
// PartName in Feeder-Liste enthalten?
// liefert Zeilennummer wenn gefunden, sonst -1
var my_line: Integer;
begin
  result:= -1;
  with Form1 do begin
    for my_line := 1 to StringGrid2.RowCount-1 do
      if (StringGrid2.Cells[1, my_line] = my_partvalue) and (StringGrid2.Cells[1, my_line] <> '')
      and (StringGrid2.Cells[2, my_line] = my_package) then begin
        result:= my_line;
        break;
      end;
  end;
end;

procedure refresh_feeder_combobox;
begin
  Form1.ComboBoxFeeder.ItemIndex:= StrToIntDef(Form1.StringGrid1.Cells[7, SelectedRow], 0);
end;

procedure rebuild_feeder_combobox;
var i: Integer;
begin
  with Form1.ComboBoxFeeder do begin
    Items.Clear;
    Items.Add('None');
    if Form1.StringGrid2.RowCount > 2 then
      for i:= 1 to Form1.StringGrid2.RowCount-2 do
        Items.Add(IntToStr(i));
  end;
  refresh_feeder_combobox;
end;

procedure get_tape_spacings(var tape_spacing_x, tape_spacing_y: Double);
begin
  with Form1.StringGrid3 do begin
    tape_spacing_x:= StrToFloatDef(Cells[1, 10], 0);
    tape_spacing_y:= StrToFloatDef(Cells[1, 11], 10);
  end;
end;

// #############################################################################

procedure TForm1.ComboBoxFeederChange(Sender: TObject);
begin
  if ComboBoxFeeder.ItemIndex = 0 then
    StringGrid1.Cells[7,SelectedRow]:= 'None'
  else begin
    StringGrid1.Cells[7, SelectedRow]:= IntToStr(ComboBoxFeeder.ItemIndex);
    if ComboBoxFeeder.ItemIndex < StringGrid2.RowCount then
      StringGrid2.Row:= ComboBoxFeeder.ItemIndex + 1
    else
      StringGrid2.Row:= 1; // None
  end;
end;

procedure TForm1.DefaultSpacing1Click(Sender: TObject);
var
  i: Integer;
  tape_spacing_x, tape_spacing_y: Double;
begin
  // Rebuild feeder locations
  // part_spacing:= StrToFloatDef(StringGrid3.Cells[1, 13], 4.0);
  get_tape_spacings(tape_spacing_x, tape_spacing_y);
  for i := 1 to StringGrid2.RowCount - 1 do begin
    StringGrid2.Cells[0, i] := IntToSTr(i-1);
    if tape_spacing_x > tape_spacing_y then
      StringGrid2.Cells[3, i]:= FloatToStr((i-2) * tape_spacing_x)  // X Location
    else
      StringGrid2.Cells[4, i]:= FloatToStr((i-2) * tape_spacing_y);  // Y Location
    StringGrid2.Cells[5, i]:= StringGrid3.Cells[1, 12];  // Part height
    StringGrid2.Cells[6, i]:= StringGrid3.Cells[1, 13];  // Part spacing on tape
    StringGrid2.Cells[7, i]:= '0';  // SPart Count
  end;
  for i := 0 to 2 do
    StringGrid2.Cells[i, 1] := 'None';
  for i := 3 to StringGrid2.ColCount - 1 do
    StringGrid2.Cells[i, 1] := '0';
end;

procedure TForm1.DeleteSelectedPart1Click(Sender: TObject);
begin
  with StringGrid1 do
  if (RowCount > 1) then begin
    Memo1.Lines.Add('Deleted Component ' + Cells[Row, 1]);
    delete_sg_row(StringGrid1);
  end;
end;

procedure TForm1.DeleteselectedTapeFeeder1Click(Sender: TObject);
var
  i: Integer;
  tape_spacing_x, tape_spacing_y: Double;
begin
  get_tape_spacings(tape_spacing_x, tape_spacing_y);
  if (StringGrid2.RowCount > 1) and (StringGrid2.Row > 1) then begin
    Memo1.Lines.Add('Deleted Tape/Feeder ' + IntToSTr(StringGrid2.Row - 1));
    delete_sg_row(StringGrid2);
    for i := 2 to StringGrid2.RowCount-1 do // Renumber
      StringGrid2.Cells[0, i] := IntToSTr(i-1);
    rebuild_feeder_combobox;
    ApplyFeederstoMatchingPartsClick(Sender);
    ResetPartPickupNumberClick(Sender);
  end;
end;

procedure TForm1.SetFeederOffsetCamatfirstPart1Click(Sender: TObject);
begin
  SetSingleFeederPosition(SelectedFeeder, true)
end;


procedure TForm1.SetFeederOffsetNozzleatfirstPart1Click(Sender: TObject);
begin
  SetSingleFeederPosition(SelectedFeeder, false);
end;

procedure TForm1.AddEmptyFeederClick(Sender: TObject);
var n: Integer;
  tape_spacing_x, tape_spacing_y: Double;
begin
  get_tape_spacings(tape_spacing_x, tape_spacing_y);
  n:= StringGrid2.RowCount;
  StringGrid2.RowCount:= n + 1;
  StringGrid2.Row:= n;
  StringGrid2.Cells[0, n]:= IntToStr(n - 1);
  StringGrid2.Cells[1, n]:= 'Value';
  StringGrid2.Cells[2, n]:= 'Package';
  StringGrid2.Cells[5, n]:= StringGrid3.Cells[1, 12];  // Default height of part
  StringGrid2.Cells[6, n]:= StringGrid3.Cells[1, 13];  // Default part Spacing on tape
  Memo1.Lines.Add('Added empty Tape/Feeder');
  ResetPartPickupNumberClick(Sender);
  rebuild_feeder_combobox;
end;

procedure TForm1.MoveCamTothisPart1Click(Sender: TObject);
begin
  MoveToCurrentPartCenter(true);
end;

procedure TForm1.MoveNozzletothisPart1Click(Sender: TObject);
begin
  MoveToCurrentPartCenter(false);
end;

procedure TForm1.MoveNozzletothisTapeFeeder1Click(Sender: TObject);
begin
  MoveToCurrentFeeder(false);
end;

procedure TForm1.MoveCamtothisTapeFeeder1Click(Sender: TObject);
begin
  MoveToCurrentFeeder(true);
end;

procedure TForm1.AddfromPartPositions1Click(Sender: TObject);
var n: Integer;
  my_partvalue, my_package: String;
  button_selected : Integer;
begin
// 0_Name, 1_Value, 2_Package, 3_Place X, 4_Place Y, 5_Rotation, 6_Side, 7_Feeder
  my_partvalue:= StringGrid1.Cells[1, SelectedRow];
  my_package:= StringGrid1.Cells[2, SelectedRow];
  button_selected:= mrOK;
  if lookup_part(my_partvalue, my_package) > 0 then
    button_selected := MessageDlg('Part Feeder already exists. Add anyway?',mtConfirmation, mbOKCancel, 0);
  if button_selected = mrOK then begin
    AddEmptyFeederClick(Sender);
    n:= StringGrid2.RowCount -1;
    ComboBoxFeeder.ItemIndex:= n;
    StringGrid2.Cells[1, n]:= my_partvalue;
    StringGrid2.Cells[2, n]:= my_package;

    StringGrid1.Cells[7, SelectedRow]:= StringGrid2.Cells[0, n]; // Feeder/Tape #
    ApplyFeederstoMatchingPartsClick(Sender);
    Memo1.Lines.Add('Feeder/Tape for part ' + my_partvalue + #32
      + my_package+ ' added: ' + StringGrid2.Cells[0, n]);
    rebuild_feeder_combobox;
    ResetPartPickupNumberClick(Sender);
  end;
end;

procedure TForm1.AddTapeFeeder1Click(Sender: TObject);
var n: Integer;
  tape_spacing_x, tape_spacing_y: Double;
begin
  get_tape_spacings(tape_spacing_x, tape_spacing_y);
  n:= StringGrid2.RowCount;
  StringGrid2.RowCount:= n + 1;
  StringGrid2.Row:= n;
  StringGrid2.Cells[0, n]:= IntToStr(n - 1);
  StringGrid2.Cells[1, n]:= 'Value';
  StringGrid2.Cells[2, n]:= 'Package';
  StringGrid2.Cells[5, n]:= StringGrid3.Cells[1, 12];  // Default height of part
  StringGrid2.Cells[6, n]:= StringGrid3.Cells[1, 13];  // Default part Spacing on tape
  Memo1.Lines.Add('Added empty Tape/Feeder');
  ResetPartPickupNumberClick(Sender);
  rebuild_feeder_combobox;
end;

procedure TForm1.ApplyJobDefaultsReload1Click(Sender: TObject);
var
  i: Integer;
begin
  CurrentPositionsName:= StringGrid3.Cells[1,1]; // Position File
  CurrentFeedersName:= StringGrid3.Cells[1,2]; // Feeder File

  if fileExists(CurrentPositionsName) then begin
    LoadStringGrid(StringGrid1, CurrentPositionsName);
  end;

  if fileExists(CurrentFeedersName) then begin
    LoadStringGrid(StringGrid2, CurrentFeedersName);
    ApplyFeederstoMatchingPartsClick(Sender);
    ResetPartPickupNumberClick(Sender);
    rebuild_feeder_combobox;
  end;
end;

procedure TForm1.ApplyFeederstoMatchingPartsClick(Sender: TObject);
var i, my_line: Integer;
  my_partvalue, my_package: String;
begin
// 0_Name, 1_Value, 2_Package, 3_Place X, 4_Place Y, 5_Rotation, 6_Side, 7_Feeder
  Memo1.Lines.Add('Apply Feeders to Component Position table');
  for i:= 1 to StringGrid1.RowCount-1 do begin
    StringGrid1.Cells[7,i]:= 'None'; // clear any previous data
    // In Feeder-Liste enthalten?
    my_partvalue:= StringGrid1.Cells[1,i];
    my_package:= StringGrid1.Cells[2,i];
    my_line:= lookup_part(my_partvalue, my_package);
// PartName in Feeder-Liste enthalten?
// liefert Zeilennummer wenn gefunden, sonst -1
    if my_line > 0 then begin
      StringGrid1.Row:= i;
      StringGrid1.Cells[7,i]:= StringGrid2.Cells[0, my_line];
    end;
  end;
  refresh_feeder_combobox;
  sort_stringgrid(StringGrid1,7);
  PartsList.Clear;
  PartsList.Add('Select Part...');
  for i:= 1 to StringGrid1.RowCount - 1 do
    PartsList.Add(StringGrid1.Cells[0, i]);
end;

procedure TForm1.ResetPartPickupNumberClick(Sender: TObject);
var i: Integer;
  tape_spacing_x, tape_spacing_y: Double;
begin
  if StringGrid2.RowCount > 1 then begin
    get_tape_spacings(tape_spacing_x, tape_spacing_y);

    for i := 2 to StringGrid2.RowCount-1 do begin
      StringGrid2.Cells[7, i]:= '0';
    end;
  end;
  Form1.Memo1.Lines.Add('Counter Reset done.');
end;


// #############################################################################
// ############################### STRING GRIDS ################################
// #############################################################################

procedure TForm1.StringGrid2DrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);
var balken_rect: TRect;
 aStr: String;
begin
  with StringGrid2, Canvas do
  begin
    if (ARow < 1) then begin
      // Tabelle erste Zeile fett
      Font.Style := [fsBold];
      Font.Color := clblack;
      if (ACol < 3) or (ARow = 0) then
        TextRect(Rect, Rect.Left + 2, Rect.Top + 2, Cells[ACol, ARow])
      else if (ACol = 2) and (ARow > 0) then begin
        TextRect(Rect, Rect.Left + 2, Rect.Top + 2, ' ');
      end;
          end else begin
      if (ARow = Row) and (ACol <> Col)  and (ACol < 9)then begin
        Brush.Color:= cl3Dlight;
        balken_rect:= Rect;
        InflateRect(balken_rect,3,0);
        FillRect(balken_rect);
        TextRect(Rect, Rect.Left + 2, Rect.Top + 2, Cells[ACol, ARow]);
      end;
      if (ACol = 9) and (ARow > 1) then begin
        balken_rect := Rect;
        Pen.Color := cl3Dlight;
        InflateRect(balken_rect, -2, -2);
        Brush.Color := clgray;
        FrameRect(balken_rect);
        Brush.Color := cl3Dlight;
        if Cells[9, ARow] = 'ON' then
            Font.Color:= clred
          else
            Font.Color:=clblack;
        Font.Style := [fsBold];
        FillRect(balken_rect);
        aStr:= Cells[ACol, ARow];
        balken_rect.Top := balken_rect.Top + 1; // adjust top to center vertical
        DrawText(Canvas.Handle, PChar(aStr), Length(aStr), balken_rect, DT_CENTER);
      end;
    end;
  end;
end;


procedure TForm1.StringGrid2MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var
  my_row, my_col: integer;
  my_val: Boolean;
  pt: TPoint;
begin
  StringGrid2.MouseToCell( X,Y, my_col, my_row );
  // Context-Menu
  if (ssRight in Shift) and (my_row > 1) then begin
    SelectedFeeder:= my_row;
    StringGrid2.Row:= my_row;
    pt.x := X + 15;
    pt.y := Y - 10;
    pt := StringGrid2.ClientToScreen(pt);
    PopupMenuFeeder.Popup(pt.X, pt.Y)
  end;
  // Enable-Buttons
  if (ssLeft in Shift) and (my_col = 9) and (my_row > 1) then with StringGrid2 do begin
    Col := my_col;
    Row := my_row;
    my_val:= Cells[my_col, my_row] = 'ON';
    if my_val then
      Cells[my_col, my_row]:= 'OFF'
    else
      Cells[my_col, my_row]:= 'ON';
  end;
end;


procedure TForm1.StringGrid2RowMoved(Sender: TObject; FromIndex,
  ToIndex: Integer);
var
  i: Integer;
begin
  for i := 1 to StringGrid2.RowCount - 1 do
    StringGrid2.Cells[0, i] := IntToSTr(i-1);
  ApplyFeederstoMatchingPartsClick(Sender);
  DefaultSpacing1Click(Sender);
  Memo1.Lines.Add('Warning: Feeders reset to default spacing!')
end;

procedure TForm1.StringGrid2SelectCell(Sender: TObject; ACol, ARow: Integer;
  var CanSelect: Boolean);
begin
  with StringGrid2 do begin
    if (ACol = 9) and (ARow > 1) then
      Options:= Options - [goEditing]
    else
      Options:= Options + [goEditing];
  end;
  SelectedFeeder:= ARow;
  StringGrid2.Invalidate;
end;

procedure TForm1.StringGrid3DrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);
begin
  with StringGrid3, Canvas do begin
    if (ARow = 0) then begin
      // Tabelle erste Zeile fett
      Font.Style := [fsBold];
      TextRect(Rect, Rect.Left + 2, Rect.Top + 2, Cells[ACol, ARow])
    end;
  end;
end;

procedure TForm1.StringGrid1DrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);
var balken_rect: TRect;
begin
  with StringGrid1, Canvas do
  begin
    if (ARow = 0) then begin
      // Tabelle erste Zeile fett
      Font.Style := [fsBold];
      if ACol = PosTableSortColumn then
        Font.Color := clred
      else
        Font.Color := clblack;
      if (ACol < 3) or (ARow = 0) then
        TextRect(Rect, Rect.Left + 2, Rect.Top + 2, Cells[ACol, ARow])
      else if (ACol = 2) and (ARow > 0) then begin
        TextRect(Rect, Rect.Left + 2, Rect.Top + 2, ' ');
      end;
    end;
    if (ARow = Row) and (ACol <> Col) then begin
      Brush.Color:= cl3Dlight;
      balken_rect:= Rect;
      InflateRect(balken_rect,3,0);
      FillRect(balken_rect);
//      brush.style := bsClear; // Transparente Schrift
      TextRect(Rect, Rect.Left + 2, Rect.Top + 2, Cells[ACol, ARow]);
    end;
  end;
end;

// Der folgende Eventhandler malt und versteckt die Bedienelemente,
// wenn sie aus dem StringGrid herausgescrollt werden:

procedure TForm1.StringGrid1TopLeftChanged(Sender: TObject);
var
  my_val: Integer;
  // my_type: String;
  my_rect: TRect;
begin
  // Auswahl-Dropdown MIDI-Datentyp
  my_val := StrToIntDef(StringGrid1.Cells[7, SelectedRow], 0);
  my_rect := StringGrid1.CellRect(7, SelectedRow);
  draw_simple_dropdown_in_sg(ComboBoxFeeder, my_rect, my_val);
end;


procedure TForm1.StringGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then begin
    StringGrid1TopLeftChanged(Sender);
  end;
end;


procedure TForm1.StringGrid1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var
  my_row, my_col: integer;
  pt: TPoint;
begin
  StringGrid1.MouseToCell( X,Y, my_col, my_row );
  // Context-Menu
  if (ssRight in Shift) and (my_row > 0) then begin
    SelectedFeeder:= my_row;
    StringGrid1.Row:= my_row;
    pt.x := X + 15;
    pt.y := Y - 10;
    pt := StringGrid1.ClientToScreen(pt);
    PopupMenuParts.Popup(pt.X, pt.Y)
  end;
end;

procedure TForm1.StringGrid1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
// Header angeklickt, nach dieser Spalte sortieren
var
  col, row: Integer;
begin
  if button = mbleft then begin
    StringGrid1.MouseToCell(X,Y,col,row);
    if (row = 0) then begin
      sort_stringgrid(StringGrid1, col);
      PosTableSortColumn:= col;
      ApplyFeederstoMatchingPartsClick(Sender);
    end;
  end;
end;


procedure TForm1.StringGrid1SelectCell(Sender: TObject; ACol, ARow: Integer;
  var CanSelect: Boolean);
begin
  SelectedRow := ARow;
  StringGrid1TopLeftChanged(Sender);
  // In Feeder-Liste enthalten?
  if ComboBoxFeeder.ItemIndex < StringGrid2.RowCount - 1 then
    StringGrid2.Row:= ComboBoxFeeder.ItemIndex + 1
  else
    StringGrid2.Row:= 1; // None
  StringGrid1.Invalidate;
end;

// #############################################################################


procedure TForm1.BtnEmergStopClick(Sender: TObject);
begin
  BtnEmergStop.Tag:= 1;
end;

// #############################################################################

function IsFormOpen(const FormName : string): Boolean;
var
  i: Integer;
begin
  Result := False;
  for i := Screen.FormCount - 1 downto 0 do
    if (Screen.Forms[i].Name = FormName) then begin
      Result := True;
      Break;
    end;
end;

procedure TForm1.FormCreate(Sender: TObject);
var
  grbl_ini:TRegistry;

begin
  grbl_ini:= TRegistry.Create;
  try
    grbl_ini.RootKey := HKEY_CURRENT_USER;
    grbl_ini.OpenKey('SOFTWARE\Make\GRBLplacer',true);
    if grbl_ini.ValueExists('MainFormTop') then
      Top:= grbl_ini.ReadInteger('MainFormTop');
    if grbl_ini.ValueExists('MainFormLeft') then
      Left:= grbl_ini.ReadInteger('MainFormLeft');
    if grbl_ini.ValueExists('MainFormWidth') then
      Width:= grbl_ini.ReadInteger('MainFormWidth');
    if grbl_ini.ValueExists('MainFormHeight') then
      Height:= grbl_ini.ReadInteger('MainFormHeight');
    if grbl_ini.ValueExists('MainFormJob') then
      CurrentJobName:= grbl_ini.ReadString('MainFormJob');
  finally
    grbl_ini.Free;
  end;

  PartsList:= TStringList.Create;
  grbl_CriticalSection:= TCriticalSection.Create;
  form_CriticalSection := TCriticalSection.Create;
  LEDbusy:= Tled.Create;
  if not fileExists(CurrentJobName) then
    CurrentJobName:= 'default.job';
  if fileExists(CurrentJobName) then begin
    LoadStringGrid(StringGrid3, CurrentJobName);
    ApplyJobDefaultsReload1Click(Sender);
    Memo1.lines.add('Loaded Feeders from');
    Memo1.lines.add(CurrentFeedersName);
    Memo1.lines.add('Loaded Positions from');
    Memo1.lines.add(CurrentPositionsName);
  end else
  SelectedRow:= 1;
  Form1.StringGrid1.Row:= 1;
  Form1.StringGrid2.Row:= 2;
  SelectedFeeder:= 2;
  PosTableSortColumn:= 7; // Default: nach Feeder sortieren
  ResetToolflags;
  SetAllbuttons;
  Form1.Caption := 'GRBL Placer [' + CurrentJobName + ']';
  MountedNozzle:= '';
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
var
  grbl_ini:TRegistry;
begin
  grbl_ini:= TRegistry.Create;
  try
    grbl_ini.RootKey := HKEY_CURRENT_USER;
    grbl_ini.OpenKey('SOFTWARE\Make\GRBLplacer', true);
    grbl_ini.WriteInteger('MainFormTop',Top);
    grbl_ini.WriteInteger('MainFormLeft',Left);
    grbl_ini.WriteInteger('MainFormHeight',Height);
    grbl_ini.WriteInteger('MainFormWidth',Width);
    grbl_ini.WriteInteger('MainFormLeft',Left);
    grbl_ini.WriteString('MainFormJob',CurrentJobName);
  finally
    grbl_ini.Free;
  end;
  PartsList.Free;
  TimerStatus.Enabled:= false;
  BtnCloseClick(Sender);
  if IsFormOpen('Form3') then
    Form3.Close;
end;

// #############################################################################
// ############################ OPEN/SAVE BUTTONS ##############################
// #############################################################################

procedure TForm1.BtnOpenFeederValuesClick(Sender: TObject);
begin
  OpenDialog1.Title := 'Open Feeder Values File:';
  OpenDialog1.FilterIndex := 4;
  OpenDialog1.DefaultExt := '*.fdr';
  OpenDialog1.FileName:= CurrentFeedersName;
  if OpenDialog1.Execute then begin
    CurrentFeedersName:= OpenDialog1.FileName;
    LoadStringGrid(StringGrid2, CurrentFeedersName);
    StringGrid3.Cells[1,2]:= CurrentFeedersName; // Feeder File
    Memo1.lines.add('Loaded Feeders from');
    Memo1.lines.add(CurrentFeedersName);
  end;
end;

procedure TForm1.BtnSaveFeederAsClick(Sender: TObject);
begin
  SaveDialog1.Title := 'Save Feeder Values File:';
  SaveDialog1.FilterIndex := 4;
  SaveDialog1.FileName:= CurrentFeedersName;
  SaveDialog1.DefaultExt := '*.fdr';
  if SaveDialog1.Execute then begin
    CurrentFeedersName:= SaveDialog1.FileName;
    BtnSaveFeedersClick(Sender);
  end;
end;

procedure TForm1.BtnSaveFeedersClick(Sender: TObject);
begin
  SaveStringGrid(StringGrid2, CurrentFeedersName);
  Memo1.lines.add('Saved Feeders to');
  Memo1.lines.add(CurrentFeedersName);
end;

// #############################################################################

procedure TForm1.BtnOpenPositionsClick(Sender: TObject);
begin
  OpenDialog1.Title := 'Open Component Postition File:';
  OpenDialog1.FilterIndex := 1;
  OpenDialog1.DefaultExt := '*.csv';
  OpenDialog1.FileName:= CurrentPositionsName;
  if OpenDialog1.Execute then begin
    LoadStringGrid(StringGrid1, OpenDialog1.FileName);
    StringGrid1TopLeftChanged(Sender);
    CurrentPositionsName:= OpenDialog1.FileName;
    StringGrid3.Cells[1,1]:= CurrentPositionsName; // position File
    ApplyFeederstoMatchingPartsClick(Sender);
    Memo1.lines.add('Loaded Positions from');
    Memo1.lines.add(CurrentPositionsName);
  end;
end;

procedure TForm1.BtnSavePositionsAsClick(Sender: TObject);
begin
  SaveDialog1.Title := 'Save Component Positions File:';
  SaveDialog1.FilterIndex := 1;
  SaveDialog1.DefaultExt := '*.csv';
  SaveDialog1.FileName :=  'default_pcb.csv';
  if SaveDialog1.Execute then begin
    CurrentPositionsName:= SaveDialog1.FileName;
    BtnSavePositionsClick(Sender);
  end;
end;

procedure TForm1.BtnSavePositionsClick(Sender: TObject);
begin
  SaveStringGrid(StringGrid1, CurrentPositionsName);
  Memo1.lines.add('Saved Positions to');
  Memo1.lines.add(CurrentPositionsName);
end;


// #############################################################################

procedure TForm1.BtnOpenJobClick(Sender: TObject);
begin
  OpenDialog1.Title := 'Open Job File:';
  OpenDialog1.FilterIndex := 3;
  OpenDialog1.DefaultExt := '*.job';
  OpenDialog1.FileName:=  CurrentJobName;
  if OpenDialog1.Execute then begin
    LoadStringGrid(StringGrid3, OpenDialog1.FileName);
    ApplyJobDefaultsReload1Click(Sender);
    CurrentJobName:= OpenDialog1.FileName;
    Form1.Caption := 'GRBL Placer [' + CurrentJobName + ']';
    Memo1.lines.add('Loaded Job from');
    Memo1.lines.add(CurrentJobName);
  end;
end;

procedure TForm1.BtnSaveJobAsClick(Sender: TObject);
begin
  SaveDialog1.Title := 'Save Job File:';
  SaveDialog1.FilterIndex := 3;
  SaveDialog1.FileName:=  CurrentJobName;
  SaveDialog1.DefaultExt := '*.job';
  if SaveDialog1.Execute then begin
    CurrentJobName:= SaveDialog1.FileName;
    BtnSaveJobClick(Sender);
  end;
end;

procedure TForm1.BtnSaveJobClick(Sender: TObject);
begin
  SaveStringGrid(StringGrid3, CurrentJobName);
  Memo1.lines.add('Saved Job to');
  Memo1.lines.add(CurrentJobName);
end;

// #############################################################################

procedure TForm1.Saveall1Click(Sender: TObject);
begin
  BtnSaveJobClick(Sender);
  BtnSaveFeedersClick(Sender);
  BtnSavePositionsClick(Sender);
end;

// #############################################################################
// #######################GRBL DEFAULT BUTTONS #############################
// #############################################################################

procedure TForm1.PanelAlarmClick(Sender: TObject);
begin
  BtnEmergStop.tag:= 0;
  BtnRunjob.tag:= 0;
  if MachineState = alarm then begin
    ClearAlarmLock;
    WaitForIdle;
    HomingPerformed:= true;
    HandleZeroRequest(15);
  end;
end;

procedure TForm1.PanelReadyClick(Sender: TObject);
begin
  // Clear HOLD runtime cmd
  Memo1.lines.add('Machine CONTINUE, Receive resumed');
  grbl_sendRealTimeCmd('~');
  PanelAlive.tag := 0;
  Memo1.lines.add('Clear HOLD state');
end;

procedure TForm1.QQuit1Click(Sender: TObject);
var Action: TCloseAction;
begin
  FormClose(Sender, Action);
  Application.Terminate;
end;

procedure OpenCOMport;
begin
  com_isopen:= COMopen(com_name);
  Form1.Memo1.lines.add('' + com_name + ' connected - please wait...');
  if com_isopen then begin
    COMSetup(trim(deviceselectbox.EditBaudrate.Text));
    Form1.DeviceView.Text:= 'Serial port ' + com_name;
    Form1.DeviceView.Font.Color:= clWindowText;
    Form1.DeviceView.Font.Style:= [];
    sleep(2000);  // Arduino Startup Time
  end;
end;

procedure OpenFTDIport;
var
  vid, pid: word;
  my_device: fDevice;
  my_description: String;
begin
// darf nicht in FormCreate stehen, wird dort durch Application.processmessages in mdelay() gestört
  if (ftdi_device_count > 0) then
    if ftdi.isPresentBySerial(ftdi_serial) then begin
      // Öffnet Device nach Seriennummer
      // Stellt sicher, dass das beim letzten Form1.Close
      // geöffnete Device auch weiterhin verfügbar ist.
      Form1.Memo1.lines.add('' + InitFTDIbySerial(ftdi_serial,deviceselectbox.EditBaudrate.Text)
        + ' - please wait...');
      ftdi.getDeviceInfo(my_device, pid, vid, my_description, ftdi_serial);
      Form1.DeviceView.Text:= ftdi_serial + ' - ' + my_description;
      Form1.DeviceView.Font.Color:= clWindowText;
      Form1.DeviceView.Font.Style:= [];
      ftdi_isopen:= true;
      sleep(500);  // Arduino Startup Time
    end;
end;

procedure PortOpenedCheck;
begin
  grbl_is_connected:= false;
  if ftdi_isopen or com_isopen then
    grbl_is_connected:= grbl_checkResponse;
end;

procedure TForm1.BtnConnectClick(Sender: TObject);
// Auswahl des Frosches unter FTDI-Devices
var i : Integer; LV : TListItem;
begin
// Alle verfügbaren COM-Ports prüfen, Ergebnisse in Array speichern
  Memo1.Lines.Clear;
  form_CriticalSection.Acquire;

  ResetToolflags;
  com_isopen:= false;
  ftdi_isopen:= false;
  grbl_is_connected:= false;
  com_name:='';
  SetUpFTDI;
  if ftdi_device_count > 0 then begin
    deviceselectbox.ListView1.Items.clear;
    for i := 0 to ftdi_device_count - 1 do begin
      LV := deviceselectbox.ListView1.Items.Add;
      LV.Caption := 'Device '+IntToStr(i);
      LV.SubItems.Add(ftdi_sernum_arr[i]);
      LV.SubItems.Add(ftdi_desc_arr[i]);
    end;
    deviceselectbox.ListView1.Items[0].Selected := true;
  end;
  deviceselectbox.ComboBoxCOMport.Items.clear;
  deviceselectbox.ComboBoxCOMport.Items.add('none (FTDI direct)');
  for i := 0 to 31 do begin
    if CheckCom(i) = 0 then begin
      deviceselectbox.ComboBoxCOMport.Items.add('COM' + IntToSTr(i));
    end;
  end;
  deviceselectbox.ComboBoxCOMport.ItemIndex:= 0; // Auswahl erzwingen
  deviceselectbox.ShowModal;
  if (deviceselectbox.ModalResult=MrOK) then begin
    if (deviceselectbox.ComboBoxCOMport.ItemIndex > 0) then begin
      com_selected_port:= deviceselectbox.ComboBoxCOMport.ItemIndex - 1;
      com_name:= deviceselectbox.ComboBoxCOMport.Text;
      OpenCOMport;
    end else if (ftdi_device_count > 0) then begin
      ftdi_selected_device:= deviceselectbox.ListView1.itemindex;
      ftdi_serial:= ftdi_sernum_arr[ftdi_selected_device];
      OpenFTDIport;
    end;
  end;
  PortOpenedCheck;
  BtnRescan.Enabled:= not grbl_is_connected;
  ResetToolflags;
  SetAllbuttons;

  form_CriticalSection.Leave;
  TimerStatus.Enabled:= grbl_is_connected;
end;


procedure MoveToCurrentFeeder(with_cam: Boolean);
var
  cam_offs_x, cam_offs_y: Double;
  tape_feeder: Integer;
  x, y, place_x, place_y, place_rot,
  pickup_x_origin, pickup_y_origin,
  pickup_x, pickup_y, pickup_z,
  tape_spacing_x, tape_spacing_y, part_spacing,
  pcb_zero_z, pcb_zero_x, pcb_zero_y, part_height,
  pickup_rot: Double;
  count, max_count: Integer;

begin
  if with_cam then
    get_cam_offset(cam_offs_x, cam_offs_y)
  else begin
    cam_offs_x:= 0;
    cam_offs_y:= 0;
  end;
  count:= StrToInt(Form1.StringGrid2.Cells[7, SelectedFeeder]);
  part_spacing:= StrToFloat(Form1.StringGrid2.Cells[6, SelectedFeeder]);
  get_tape_spacings(tape_spacing_x, tape_spacing_y); // from Defaults
  get_feeder_zero(pickup_x_origin, pickup_y_origin, pickup_z, pickup_rot); // from Defaults

  pickup_x:= pickup_x_origin + StrToFloat(Form1.StringGrid2.Cells[3, SelectedFeeder]);
  pickup_y:= pickup_y_origin + StrToFloat(Form1.StringGrid2.Cells[4, SelectedFeeder]);

  if tape_spacing_y > tape_spacing_x then
    // Tapes in Y-Richtung übereinander
    pickup_x:= pickup_x + part_spacing * count
  else
    // Tapes in X-Richtung nebeneinander
    pickup_y:= pickup_x + part_spacing * count;
  Form1.Memo1.Lines.Add('Move Cam to Feeder ' + Form1.StringGrid2.Cells[0, SelectedFeeder]);
  Form1.TimerStatus.Enabled:= false;
  WaitForIdle;
  grbl_wait_for_timeout(100);
  grbl_moveZ(-1, false);
  grbl_moveXY(pickup_x - cam_offs_x, pickup_y - cam_offs_y, false);
  WaitForIdle;
  Form1.TimerStatus.Enabled:= true;
end;

procedure MoveToCurrentPartCenter(with_cam: Boolean);
var tape_feeder: Integer;
 place_x, place_y, place_rot,
 pcb_zero_z, pcb_zero_x, pcb_zero_y,
 z_move_lift: Double;
 cam_offs_x, cam_offs_y: Double;
begin
  Form1.TimerStatus.Enabled:= false;
  WaitForIdle;
  grbl_wait_for_timeout(100);

  if with_cam then
    get_cam_offset(cam_offs_x, cam_offs_y)
  else begin
    cam_offs_x:= 0;
    cam_offs_y:= 0;
  end;
  get_pcb_offset(pcb_zero_x, pcb_zero_y, pcb_zero_z, z_move_lift);
  get_vals_from_sg1row(SelectedRow, place_x, place_y, place_rot, tape_feeder);

  Form1.Memo1.Lines.Add('Move Cam to Part ' + Form1.StringGrid1.Cells[0, SelectedRow]);
  grbl_moveZ(-1, false);
  grbl_moveXY(place_x + pcb_zero_x - cam_offs_x, place_y + pcb_zero_y - cam_offs_y, false);
  WaitForIdle;
  Form1.TimerStatus.Enabled:= true;
end;

procedure MoveCamRelative(pixels_X, pixels_Y: Integer);
var cam_scale: Double;
begin
  Form1.TimerStatus.Enabled:= false;
  WaitForIdle;
  grbl_wait_for_timeout(100);
  cam_scale:= StrToFloatDef(Form1.StringGrid3.Cells[1,24], 10);
  grbl_moveZ(-1, false);
  grbl_moveXY(grbl_wpos.x + (cam_scale * pixels_x), grbl_wpos.y + (cam_scale * pixels_y), false);
  WaitForIdle;
  Form1.TimerStatus.Enabled:= true;
end;

procedure SetFeederDefaultOffset(with_cam: Boolean);
// Setzt Job Defaults anhand Kamera-Position über Feeder 0,0
var
  cam_offs_x, cam_offs_y: Double;
begin
  if with_cam then
    get_cam_offset(cam_offs_x, cam_offs_y)
  else begin
    cam_offs_x:= 0;
    cam_offs_y:= 0;
  end;
  with Form1.StringGrid3 do begin
    Cells[1,6]:= FloatToStr(grbl_wpos.x + cam_offs_x);
    Cells[1,7]:= FloatToStr(grbl_wpos.y + cam_offs_y);
  end;
end;

procedure SetSingleFeederPosition(my_Feeder: Integer; with_cam: Boolean);
// Setzt aktuellen Feeder anhand Kamera-Position über erstem Bauteil
var tape_feeder: Integer;
 pickup_x_origin, pickup_y_origin,
 pickup_x, pickup_y, pickup_z,
 tape_spacing_x, tape_spacing_y, part_spacing,
 pickup_rot, z_move_lift, dwell_time: Double;
 cam_offs_x, cam_offs_y: Double;
begin
  if with_cam then
    get_cam_offset(cam_offs_x, cam_offs_y)
  else begin
    cam_offs_x:= 0;
    cam_offs_y:= 0;
  end;
  get_feeder_zero(pickup_x_origin, pickup_y_origin, pickup_z, pickup_rot);
  with Form1.StringGrid2 do begin
    Cells[3,my_Feeder]:= FloatToStr(grbl_wpos.x + cam_offs_x - pickup_x_origin);
    Cells[4,my_Feeder]:= FloatToStr(grbl_wpos.y + cam_offs_y - pickup_y_origin);
  end;
end;

procedure SetPCBoffsets(with_cam: Boolean);
// Job-PCB-Offset anhand aktueller Bauteilposition
var tape_feeder: Integer;
 place_x, place_y, place_rot: Double;
 cam_offs_x, cam_offs_y: Double;
begin
  get_vals_from_sg1row(SelectedRow, place_x, place_y, place_rot, tape_feeder);
  if with_cam then
    get_cam_offset(cam_offs_x, cam_offs_y)
  else begin
    cam_offs_x:= 0;
    cam_offs_y:= 0;
  end;
  with Form1.StringGrid3 do begin
    Cells[1,3]:= FloatToStr(grbl_wpos.x - place_x + cam_offs_x);
    Cells[1,4]:= FloatToStr(grbl_wpos.y - place_y + cam_offs_y);
  end;
end;

procedure TForm1.BtnSetOffsetsClick(Sender: TObject);
begin
  SetPCBOffsets(false);
end;


procedure TForm1.BtnRunJobClick(Sender: TObject);
var my_row, tape_feeder: Integer;
 x, y, place_x, place_y, place_rot,
 pickup_x_origin, pickup_y_origin,
 pickup_x, pickup_y, pickup_z,
 tape_spacing_x, tape_spacing_y, part_spacing,
 pcb_zero_z, pcb_zero_x, pcb_zero_y, part_height,
 pickup_rot, z_move_lift, dwell_time: Double;
 count, max_count: Integer;
 enabled: Boolean;
 vacOnStr, vacOffStr, blowOnStr, blowOffStr, relayOnStr, relayOffStr: String;
 buttonSelected: Integer;
 current_nozzle, last_nozzle: String;

begin
  TimerStatus.Enabled:= false;
  Memo1.Lines.Clear;
  Memo1.Lines.Add('Run Job');
  WaitForIdle;
  grbl_wait_for_timeout(100);
  BtnRunJob.Enabled:= false;
  BtnEmergStop.Tag:= 0;
  get_tape_spacings(tape_spacing_x, tape_spacing_y);
  get_pcb_offset(pcb_zero_x, pcb_zero_y, pcb_zero_z, z_move_lift);
  get_feeder_zero(pickup_x_origin, pickup_y_origin, pickup_z, pickup_rot);
  with StringGrid3 do begin
    vacOnStr:= StringGrid3.Cells[1,15];
    vacOffStr:= StringGrid3.Cells[1,16];
    blowOnStr:= StringGrid3.Cells[1,17];
    blowOffStr:= StringGrid3.Cells[1,18];
    relayOnStr:= StringGrid3.Cells[1,19];
    relayOffStr:= StringGrid3.Cells[1,20];
    dwell_time:= StrToFloatDef(Cells[1,21], 0.1);
  end;
  grbl_moveZ(-2, false);
  GetStatus;
  grbl_sendStr(relayOnStr + #13, true);  // Test
  current_nozzle:= MountedNozzle;
  for my_row := 1 to StringGrid1.RowCount-1 do begin
    get_vals_from_sg1row(my_row, place_x, place_y, place_rot, tape_feeder);
    place_rot:= place_rot + pickup_rot;
    if place_rot >= 360 then
      place_rot:= place_rot - 360;

    if tape_feeder > 0 then begin
      last_nozzle:= current_nozzle;
      current_nozzle:= StringGrid2.Cells[10, tape_feeder+1];
      if current_nozzle <> last_nozzle then begin
        // Nozzle wechseln
        Memo1.Lines.Add('Nozzle change to #' + current_nozzle);
        grbl_moveZ(-1, true);
        grbl_moveXY(1, 1, true);
        buttonSelected:= messagedlg('Change nozzle to #' + current_nozzle
         + ' and click OK when done', mtError, mbOKCancel, 0);
        if buttonSelected = mrCancel then
          break;
      end;

      StringGrid1.Row:= my_row;
      enabled:= StringGrid2.Cells[9, tape_feeder+1] = 'ON';
      max_count:= StrToInt(StringGrid2.Cells[8, tape_feeder+1]);
      count := StrToInt(StringGrid2.Cells[7, tape_feeder+1]);
      if count >= max_count then begin
        // Tape wechseln
        Memo1.Lines.Add('Strip empty, change #' + IntToStr(tape_feeder));
        grbl_moveZ(-2, true);
        grbl_moveXY(place_x + pcb_zero_x, place_y + pcb_zero_y, false);
        buttonSelected:= messagedlg('Tape #' + IntToStr(tape_feeder)
         + ' is empty - please change and click OK when done', mtError, mbOKCancel, 0);
        count:= 0;
        StringGrid2.Cells[7, tape_feeder+1]:= '0';
        if buttonSelected = mrCancel then
          break;
      end;
      if enabled then begin
        part_spacing:= StrToFloat(StringGrid2.Cells[6, tape_feeder+1]);
        part_height:= StrToFloat(StringGrid2.Cells[5, tape_feeder+1]);

        // Anfangsposition plus Feeder-Zeilen-Offset
        pickup_x:= pickup_x_origin + StrToFloat(Form1.StringGrid2.Cells[3, tape_feeder+1]);
        pickup_y:= pickup_y_origin + StrToFloat(Form1.StringGrid2.Cells[4, tape_feeder+1]);
        if tape_spacing_y > tape_spacing_x then
          // Tapes in Y-Richtung übereinander
          pickup_x:= pickup_x + part_spacing * count
        else
          // Tapes in X-Richtung nebeneinander
          pickup_y:= pickup_y + part_spacing * count;

        Memo1.Lines.Add('Pick part');
        grbl_moveXYC(pickup_x, pickup_y, 0, false);
        grbl_moveZ(pickup_z, false);
        grbl_sendStr(vacOnStr + #13, true);  // Vacuum ON
        grbl_sendStr('G4 P0.05' + #13, true); // Pause
        grbl_moveZ(pickup_z + z_move_lift, false);
        GetStatus;

        Memo1.Lines.Add('Place part');
        grbl_moveXYC(place_x + pcb_zero_x, place_y + pcb_zero_y, place_rot, false);
        grbl_moveZ(pcb_zero_z + part_height, false);
        grbl_sendStr(vacOffStr + #13, true);  // Vacuum OFF
        grbl_sendStr('G4 P' + FloatToStrDot(dwell_time) + #13, true);  // Pause
        grbl_sendStr(blowOnStr + #13, true);  // Vacuum ON
        grbl_sendStr('G4 P' + FloatToStrDot(dwell_time) + #13, true);  // Pause
        grbl_sendStr(blowOffStr + #13, true);  // Vacuum ON
        grbl_moveZ(pickup_z + z_move_lift, false);
        GetStatus;

        StringGrid2.Cells[7, tape_feeder+1]:= IntToSTr(count + 1);
      end;
      if BtnEmergStop.Tag > 0 then begin
        Memo1.Lines.Add('Job cancelled');
        break;
      end;
    end;
  end;
  grbl_moveZ(-2, false);
  grbl_sendStr(relayOffStr + #13, true);  // Test
  TimerStatus.Enabled:= true;
  WaitForIdle;
  BtnRunJob.Enabled:= true;
  Memo1.Lines.Add('Done.');
  MountedNozzle:= current_nozzle;
end;

procedure TForm1.BtnCamViewClick(Sender: TObject);
begin
  if not IsFormOpen('Form3') then
    Form3 := TForm3.Create(Self);
  Form3.Show;
end;

procedure TForm1.BtnCloseClick(Sender: TObject);
begin
  TimerStatus.Enabled:= false;
  grbl_wait_for_timeout(200);
  if com_isopen then
    COMClose;
  if ftdi_isopen then
    ftdi.closeDevice;
  ftdi_isopen:= false;
  com_isopen:= false;
  grbl_is_connected:= false;
  DeviceView.Text:= 'COM/USB disconnected';
  BtnRescan.Enabled:= true;
  PanelReady.Color:= $00004000;
  PanelReady.Font.Color:= clgray;
  PanelAlive.Color:= $00004000;
  PanelAlive.Font.Color:= clgray;
end;

procedure TForm1.BtnHomeCycleClick(Sender: TObject);
var
  my_response: String;
begin
  if not ftdi_isopen then begin
    Memo1.lines.add('');
    Memo1.lines.add('Home cycle skipped - not connected');
    exit;
  end;

  PanelAlive.tag:= 0;
  BtnEmergStop.tag:= 0;
  BtnRunjob.tag:= 0;
  Memo1.lines.add('');
  Memo1.lines.add('Home cycle initiated');
  LEDbusy.Checked:= true;
  ResetToolflags;

  TimerStatus.Enabled:= false;
  mDelay(100);
  form_CriticalSection.Acquire;

  grbl_wait_for_timeout(200);
  my_response:= grbl_sendStr('$h'+#13, true);

  form_CriticalSection.Leave;

  Memo1.lines.add(my_response);
  if my_response <> 'ok' then begin
    Memo1.lines.add('WARNING: Home Cycle failed - do not rely on machine position!');
    MessageDlg('Home Cycle failed. ALARM LOCK cleared,'
      + #13 + 'but do not rely on machine position.', mtWarning, [mbOK], 0);
    ClearAlarmlock;
  end;
  HomingPerformed:= true;
  Memo1.lines.add('Done.');
  Memo1.lines.add('');

  WaitForIdle;
  TimerStatus.Enabled:= true;
  HandleZeroRequest(15);
end;

// #############################################################################
// #############################################################################


procedure TForm1.TimerBlinkTimer(Sender: TObject);
begin
  TimerBlinkToggle:= not TimerBlinkToggle;

  SetAllButtons;
  if (MachineState = idle) then
    LEDbusy.Checked:= false;
end;


procedure TForm1.TimerStatusElapsed(Sender: TObject);
// alle 25 ms aufgerufen. Statemachine, über Semaphoren gesteuert.
var
  old_machine_state: t_mstates;

begin
  try
    TimerStatus.Tag:= 1;
    old_machine_state:= MachineState;
    TimerStatus.Enabled:= false;

    form_CriticalSection.Acquire;
    GetStatus; // muss eingetroffen sein
    form_CriticalSection.Leave;

    DisplayMachinePosition;
    DisplayWorkPosition;

    if (MachineState = alarm) and (old_machine_state <> alarm) then
      Form1.Memo1.lines.add('ALARM state, reset machine and perform home cycle');
    if (MachineState = hold) and (old_machine_state <> hold) then
      Form1.Memo1.lines.add('HOLD state, press CONTINUE or click READY panel');
    TimerStatus.Enabled:= true;
  finally
    TimerStatus.Tag:= 0;
  end;
end;



end.
