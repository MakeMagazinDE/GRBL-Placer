unit cam_view;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls,  Buttons, StdCtrls, ComCtrls, Registry, MMsystem,
  VFrames;

type
  TForm3 = class(TForm)
    VideoBox: TPaintBox;
    TrackBar1: TTrackBar;
    StaticText1: TStaticText;
    StaticText6: TStaticText;
    OverlayColor: TPanel;
    BtnCamAtPart: TSpeedButton;
    ColorDialog1: TColorDialog;
    Label1: TLabel;
    BtnCamAtFeederZero: TSpeedButton;
    BtnMoveCamPart: TSpeedButton;
    Label3: TLabel;
    BtnMoveCamFeederZero: TSpeedButton;
    Label5: TLabel;
    Label2: TLabel;
    Label6: TLabel;
    BtnCamAtFeederPart: TSpeedButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnCamAtFeederClick(Sender: TObject);
    procedure BtnCamAtPartClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure OverlayColorClick(Sender: TObject);
    procedure BtnMoveCamFeederClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BtnMoveCamPartClick(Sender: TObject);
    procedure VideoBoxMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure VideoBoxMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure VideoBoxMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure BtnCamAtFeederPartClick(Sender: TObject);

  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
    fVideoImage: TVideoImage;
    fVideoBitmap: TBitmap;
    procedure OnNewVideoFrame(Sender : TObject; Width, Height: integer; DataPtr: pointer);
  end;

var
  Form3: TForm3;
  fActivated, fCamPresent, CamIsOn : boolean;
  overlay_color: Tcolor;
  CamMouseDown: Boolean;
  CamMouseX, CamMouseY: Integer;
  CamMouseDistanceX, CamMouseDistanceY: Integer;

implementation

uses PickPlace_main;

{$R *.dfm}

var
  DeviceList: TStringList;

procedure TForm3.OnNewVideoFrame(Sender : TObject; Width, Height: integer; DataPtr: pointer);
var
  r : integer;
  bm_center_x, bm_center_y: Integer;
begin
  // Retreive latest video image
  if not fActivated then
    exit;
  fVideoImage.GetBitmap(fVideoBitmap);
  with fVideoBitmap do begin
    // Paint a crosshair onto video image
    bm_center_x:= VideoBox.width div 2;
    bm_center_y:= VideoBox.height div 2;
    Canvas.Brush.Style := bsClear;
    Canvas.Pen.Width   := 1;
    Canvas.Pen.Color:= overlay_color;
    Canvas.moveto(0, bm_center_y);
    Canvas.lineto(Width,  bm_center_y);
    Canvas.moveto(bm_center_x, 0);
    Canvas.lineto(bm_center_x, Height);
    r := (VideoBox.height * TrackBar1.Position div 256);
    Canvas.ellipse(bm_center_x -r, bm_center_y -r,
        bm_center_x +r, bm_center_y +r);
    if CamMouseDown then begin
      Canvas.Pen.Color:= clyellow;
      Canvas.moveto(bm_center_x, bm_center_y);
      Canvas.lineto(CamMouseX, CamMouseY);
      Canvas.ellipse(CamMouseX -3, CamMouseY -3,
          CamMouseX +3, CamMouseY +3);
      CamMouseDistanceX:= CamMouseX - bm_center_x;
      CamMouseDistanceY:= bm_center_y - CamMouseY;
    end;
    VideoBox.Canvas.Draw(0, 0, fVideoBitmap);
  end;
end;

procedure TForm3.OverlayColorClick(Sender: TObject);
begin
  ColorDialog1.Color:= OverlayColor.Color;
  if not ColorDialog1.Execute then Exit;
  OverlayColor.Color:= ColorDialog1.Color;
  overlay_color:= OverlayColor.Color;
end;


procedure TForm3.BtnCamAtFeederPartClick(Sender: TObject);
begin
  SetSingleFeederPosition(SelectedFeeder, true)
end;

procedure TForm3.FormShow(Sender: TObject);
begin
  fActivated:= false;
  // Create instance of our video image class.
  fVideoImage:= TVideoImage.Create;
  // Tell fVideoImage where to paint the images it receives from the camera
  // (Only in case we do not want to modify the images by ourselves)
  fVideoImage.SetDisplayCanvas(VideoBox.Canvas);
  fVideoBitmap:= TBitmap.create;
  fVideoBitmap.Height:= VideoBox.Height;
  fVideoBitmap.Width:= VideoBox.Width;


  // Create instance of our video image class.
  fVideoImage:= TVideoImage.Create;
  // Tell fVideoImage where to paint the images it receives from the camera
  // (Only in case we do not want to modify the images by ourselves)
  fVideoImage.SetDisplayCanvas(VideoBox.Canvas);

  overlay_color:= OverlayColor.Color;

  DeviceList := TStringList.Create;
  fVideoImage.GetListOfDevices(DeviceList);
  if DeviceList.Count < 1 then begin
    // If no camera has been found
    fCamPresent:= false;
    DeviceList.Free;
    Label1.Caption:='No Webcam/Video Device found';
  end else begin
    fCamPresent:= true;
    fVideoImage:= TVideoImage.Create;
    fVideoImage.OnNewVideoFrame := OnNewVideoFrame;
    fActivated:= true;
    fVideoImage.VideoStart(DeviceList[0]);
    Label1.Caption:='';
  end;
end;

procedure TForm3.FormCreate(Sender: TObject);
var
  grbl_ini:TRegistry;

begin
  CamMouseDown:= false;
  grbl_ini:= TRegistry.Create;
  try
    grbl_ini.RootKey := HKEY_CURRENT_USER;
    grbl_ini.OpenKey('SOFTWARE\Make\GRBLplacer',true);
    if grbl_ini.ValueExists('CamFormTop') then
      Top:= grbl_ini.ReadInteger('CamFormTop');
    if grbl_ini.ValueExists('CamFormLeft') then
      Left:= grbl_ini.ReadInteger('CamFormLeft');
    if grbl_ini.ValueExists('CamFormWidth') then
      Width:= grbl_ini.ReadInteger('CamFormWidth');
    if grbl_ini.ValueExists('CamFormHeight') then
      Height:= grbl_ini.ReadInteger('CamFormHeight');
  finally
    grbl_ini.Free;
  end;
  BtnMoveCamPart.Caption:= GetPartNameFromRow + ' Center';
  BtnCamAtPart.Caption:= 'Set PCB Offs to ' + GetPartNameFromRow;
  Show;
end;

procedure TForm3.FormClose(Sender: TObject; var Action: TCloseAction);
var
  grbl_ini:TRegistry;
begin
  grbl_ini:= TRegistry.Create;
  try
    grbl_ini.RootKey := HKEY_CURRENT_USER;
    grbl_ini.OpenKey('SOFTWARE\Make\GRBLplacer', true);
    grbl_ini.WriteInteger('CamFormTop',Top);
    grbl_ini.WriteInteger('CamFormLeft',Left);
    grbl_ini.WriteInteger('CamFormWidth',Width);
    grbl_ini.WriteInteger('CamFormHeight',Height);
  finally
    grbl_ini.Free;
  end;

  if fCamPresent then begin
    if fActivated then begin
      fVideoImage.VideoStop;
      fVideoImage.Free;
    end;
  end;
  fActivated := false;
end;

// #############################################################################

procedure TForm3.BtnCamAtPartClick(Sender: TObject);
begin
  SetPCBOffsets(true);
end;

procedure TForm3.BtnCamAtFeederClick(Sender: TObject);
var x,y: Double;
begin
  SetFeederDefaultOffset(true);
end;

// #############################################################################

procedure TForm3.BtnMoveCamFeederClick(Sender: TObject);
var x,y: Double;
begin
  MoveToCurrentFeeder(true);
end;

procedure TForm3.BtnMoveCamPartClick(Sender: TObject);
begin
  MoveToCurrentPartCenter(true);
end;


// #############################################################################

procedure TForm3.VideoBoxMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  CamMouseDown:= true;
  CamMouseX:= X;
  CamMouseY:= Y;
end;

procedure TForm3.VideoBoxMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  CamMouseX:= X;
  CamMouseY:= Y;
end;

procedure TForm3.VideoBoxMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  CamMouseDown:= false;
  MoveCamRelative(CamMouseDistanceX, CamMouseDistanceY);
end;

end.
