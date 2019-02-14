program PickPlace;

uses
  Vcl.Forms,
  PickPlace_main in 'PickPlace_main.pas' {Form1},
  blinklist in 'ftdiclass\blinklist.pas',
  bsearchtree in 'ftdiclass\bsearchtree.pas',
  FTDIchip in 'ftdiclass\FTDIchip.pas',
  FTDIdll in 'ftdiclass\FTDIdll.pas',
  FTDIthread in 'ftdiclass\FTDIthread.pas',
  FTDItypes in 'ftdiclass\FTDItypes.pas',
  deviceselect in 'deviceselect.pas' {deviceselectbox},
  grbl_com_minimal in 'grbl_com_minimal.pas',
  cam_view in 'cam_view.pas' {Form3},
  UGDIPlus in 'UGDIPlus.pas',
  VFrames in 'VFrames.pas',
  VSample in 'VSample.pas';

{$R *.res}

begin
  Application.Initialize;
  //Application.MainFormOnTaskbar := True;  // Führt dazu, dass CamView immer im Vordergrund ist!
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(Tdeviceselectbox, deviceselectbox);
  Application.Run;
end.
