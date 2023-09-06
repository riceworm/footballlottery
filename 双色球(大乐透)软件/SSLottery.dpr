program SSLottery;

uses
  Forms,
  Windows,
  Foot in 'Foot.pas' {Main},
  querynow in 'querynow.pas' {qnow},
  buyinfo in 'buyinfo.pas' {buy},
  start in 'start.pas' {fstart},
  editjg in 'editjg.pas' {Form1},
  about in 'about.pas' {Form2},
  hezuo in 'hezuo.pas' {Form3};

{$R *.res}

begin

  if OpenMutex(MUTEX_ALL_ACCESS,True,'sslottery')>0 then
  begin
    Application.MessageBox(pchar('本程序已经运行!!!'),'提示信息',MB_OK+MB_IconInformation);
  end
  else
  begin
    CreateMutex(nil,True,'sslottery');
    Application.Initialize;
    fstart:=Tfstart.create(application);
    fstart.ShowModal;
    Application.Title := '双色球发发发 V4.8';
  Application.CreateForm(TMain, Main);
  Application.CreateForm(Tqnow, qnow);
  Application.CreateForm(Tbuy, buy);
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm3, Form3);
  Application.Run;
    CloseHandle(OpenMutex(MUTEX_ALL_ACCESS,True,'sslottery'));
  end;
end.
