unit Foot;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ToolWin, ComCtrls, ExtCtrls, Buttons, ImgList,
  StdCtrls, TeeProcs, TeEngine, Chart, Grids, ValEdit, OleCtrls, SHDocVw,db,adodb,shellapi,
  Series,printers, System.ImageList,  Vcl.Styles,Vcl.Themes;

type

  TPanel=Class(ExtCtrls.TPanel)
  protected
    procedure Paint; override;
  End;

type
  TMain = class(TForm)
    Mnu_00: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    N10: TMenuItem;
    N11: TMenuItem;
    N12: TMenuItem;
    N13: TMenuItem;
    N14: TMenuItem;
    N15: TMenuItem;
    N16: TMenuItem;
    N20: TMenuItem;
    N21: TMenuItem;
    N22: TMenuItem;
    N23: TMenuItem;
    N26: TMenuItem;
    N30: TMenuItem;
    N31: TMenuItem;
    N34: TMenuItem;
    Panel1: TPanel;
    StatusBar1: TStatusBar;
    Lbl_52: TPanel;
    Panel3: TPanel;
    ToolBar1: TToolBar;
    Panel4: TPanel;
    Lbl_2: TLabel;
    btn_set: TButton;
    Panel5: TPanel;
    Lbl_1: TLabel;
    Cmb_Number: TComboBox;
    Lbl_Result: TLabel;
    Panel6: TPanel;
    Panel9: TPanel;
    Panel10: TPanel;
    Lbl_3: TLabel;
    btn_filter: TButton;
    Splitter1: TSplitter;
    Panel11: TPanel;
    Panel12: TPanel;
    Lbl_4: TLabel;
    btn_result: TButton;
    Panel13: TPanel;
    Lbl_62: TLabel;
    Panel14: TPanel;
    Lbl_60: TLabel;
    Lbl_Res: TLabel;
    Lbl_61: TLabel;
    VLE_RES: TValueListEditor;
    pgc_01: TPageControl;
    TabSheet1: TTabSheet;
    Panel15: TPanel;
    Mnu_01: TPopupMenu;
    N36: TMenuItem;
    N37: TMenuItem;
    N38: TMenuItem;
    N40: TMenuItem;
    N41: TMenuItem;
    N43: TMenuItem;
    Mnu_02: TPopupMenu;
    Mnu_03: TPopupMenu;
    N49: TMenuItem;
    N50: TMenuItem;
    N51: TMenuItem;
    N52: TMenuItem;
    N53: TMenuItem;
    N13121: TMenuItem;
    N13111: TMenuItem;
    N56: TMenuItem;
    N57: TMenuItem;
    N58: TMenuItem;
    Btn_Any: TBitBtn;
    ImageList1: TImageList;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    ToolButton7: TToolButton;
    ToolButton8: TToolButton;
    Panel16: TPanel;
    web: TWebBrowser;
    Panel18: TPanel;
    Lbl_59: TLabel;
    Panel19: TPanel;
    cmb_001: TComboBox;
    cmb_003: TComboBox;
    chk_01: TCheckBox;
    chk_02: TCheckBox;
    chk_03: TCheckBox;
    chk_04: TCheckBox;
    chk_05: TCheckBox;
    chk_06: TCheckBox;
    Lbl_50: TLabel;
    Lbl_51: TLabel;
    Lbl_53: TLabel;
    Lbl_54: TLabel;
    Lbl_55: TLabel;
    Lbl_56: TLabel;
    Panel23: TPanel;
    Lbl_58: TLabel;
    Panel24: TPanel;
    Lbl_33: TLabel;
    Lbl_31: TLabel;
    Lbl_34: TLabel;
    Edt_No: TEdit;
    Cmb_No: TComboBox;
    Lbl_35: TLabel;
    Spb_ok: TSpeedButton;
    dopen: TOpenDialog;
    dsave: TSaveDialog;
    N61: TMenuItem;
    N62: TMenuItem;
    N66: TMenuItem;
    N67: TMenuItem;
    cmb_002: TComboBox;
    cmb_004: TComboBox;
    cmb_005: TComboBox;
    cmb_006: TComboBox;
    cmb_007: TComboBox;
    cmb_008: TComboBox;
    N69: TMenuItem;
    N70: TMenuItem;
    cmb_009: TComboBox;
    cmb_010: TComboBox;
    cmb_011: TComboBox;
    cmb_012: TComboBox;
    N32: TMenuItem;
    N25: TMenuItem;
    N74: TMenuItem;
    N75: TMenuItem;
    N24: TMenuItem;
    Pal_01: TPanel;
    Pal_02: TPanel;
    Pal_03: TPanel;
    Pal_04: TPanel;
    Pal_05: TPanel;
    Pal_06: TPanel;
    Pal_07: TPanel;
    Pal_08: TPanel;
    Pal_09: TPanel;
    Pal_10: TPanel;
    Pal_17: TPanel;
    Pal_18: TPanel;
    Pal_11: TPanel;
    Pal_12: TPanel;
    Pal_13: TPanel;
    Pal_14: TPanel;
    Pal_15: TPanel;
    Pal_16: TPanel;
    Pal_19: TPanel;
    Pal_20: TPanel;
    Pal_21: TPanel;
    Pal_22: TPanel;
    Pal_23: TPanel;
    Pal_24: TPanel;
    Pal_25: TPanel;
    Pal_26: TPanel;
    Pal_27: TPanel;
    Pal_28: TPanel;
    Pal_29: TPanel;
    Pal_30: TPanel;
    Pal_31: TPanel;
    Pal_32: TPanel;
    Pal_33: TPanel;
    Lbl_10: TLabel;
    Lbl_15: TLabel;
    Lbl_11: TLabel;
    Lbl_12: TLabel;
    Lbl_13: TLabel;
    Lbl_14: TLabel;
    Lbl_16: TLabel;
    Lbl_17: TLabel;
    Lbl_18: TLabel;
    Lbl_19: TLabel;
    Pal_013: TPanel;
    Pal_014: TPanel;
    Pal_010: TPanel;
    Pal_009: TPanel;
    Pal_005: TPanel;
    Pal_006: TPanel;
    Pal_002: TPanel;
    Pal_001: TPanel;
    Pal_003: TPanel;
    Pal_007: TPanel;
    Pal_011: TPanel;
    Pal_015: TPanel;
    Pal_016: TPanel;
    Pal_012: TPanel;
    Pal_008: TPanel;
    Pal_004: TPanel;
    N39: TMenuItem;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel17: TPanel;
    Cmb_01: TComboBox;
    Cmb_02: TComboBox;
    Panel25: TPanel;
    Panel26: TPanel;
    TabSheet2: TTabSheet;
    Lbl_57: TLabel;
    Panel20: TPanel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Panel21: TPanel;
    N641: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    Mmo_Any: TMemo;
    N17: TMenuItem;
    N18: TMenuItem;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    N2251: TMenuItem;
    Button9: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Pal_01Click(Sender: TObject);
    procedure Pal_02Click(Sender: TObject);
    procedure Pal_03Click(Sender: TObject);
    procedure Pal_04Click(Sender: TObject);
    procedure Pal_05Click(Sender: TObject);
    procedure Pal_06Click(Sender: TObject);
    procedure Pal_07Click(Sender: TObject);
    procedure Pal_08Click(Sender: TObject);
    procedure Pal_09Click(Sender: TObject);
    procedure Pal_10Click(Sender: TObject);
    procedure Pal_11Click(Sender: TObject);
    procedure Pal_12Click(Sender: TObject);
    procedure Pal_13Click(Sender: TObject);
    procedure Pal_14Click(Sender: TObject);
    procedure Pal_15Click(Sender: TObject);
    procedure Pal_16Click(Sender: TObject);
    procedure Pal_17Click(Sender: TObject);
    procedure Pal_18Click(Sender: TObject);
    procedure Pal_19Click(Sender: TObject);
    procedure Pal_20Click(Sender: TObject);
    procedure Pal_21Click(Sender: TObject);
    procedure Pal_22Click(Sender: TObject);
    procedure Pal_23Click(Sender: TObject);
    procedure Pal_24Click(Sender: TObject);
    procedure Pal_25Click(Sender: TObject);
    procedure Pal_26Click(Sender: TObject);
    procedure Pal_27Click(Sender: TObject);
    procedure Pal_28Click(Sender: TObject);
    procedure Pal_29Click(Sender: TObject);
    procedure Pal_30Click(Sender: TObject);
    procedure Pal_31Click(Sender: TObject);
    procedure Pal_32Click(Sender: TObject);
    procedure Pal_33Click(Sender: TObject);
    procedure Pal_001Click(Sender: TObject);
    procedure Pal_002Click(Sender: TObject);
    procedure Pal_003Click(Sender: TObject);
    procedure Pal_004Click(Sender: TObject);
    procedure Pal_005Click(Sender: TObject);
    procedure Pal_006Click(Sender: TObject);
    procedure Pal_007Click(Sender: TObject);
    procedure Pal_008Click(Sender: TObject);
    procedure Pal_009Click(Sender: TObject);
    procedure Pal_010Click(Sender: TObject);
    procedure Pal_011Click(Sender: TObject);
    procedure Pal_012Click(Sender: TObject);
    procedure Pal_013Click(Sender: TObject);
    procedure Pal_014Click(Sender: TObject);
    procedure Pal_015Click(Sender: TObject);
    procedure Pal_016Click(Sender: TObject);
    procedure btn_setClick(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure btn_filterClick(Sender: TObject);
    procedure btn_resultClick(Sender: TObject);
    procedure N36Click(Sender: TObject);
    procedure N12Click(Sender: TObject);
    procedure N14Click(Sender: TObject);
    procedure N40Click(Sender: TObject);
    procedure N41Click(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure N13Click(Sender: TObject);
    procedure N37Click(Sender: TObject);
    procedure Cmb_NumberChange(Sender: TObject);
    procedure Panel8Click(Sender: TObject);
    procedure Panel25Click(Sender: TObject);
    procedure Panel17Click(Sender: TObject);
    procedure Panel26Click(Sender: TObject);
    procedure N39Click(Sender: TObject);
    procedure N49Click(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure N9Click(Sender: TObject);
    procedure N10Click(Sender: TObject);
    procedure ToolButton7Click(Sender: TObject);
    procedure N51Click(Sender: TObject);
    procedure N52Click(Sender: TObject);
    procedure N70Click(Sender: TObject);
    procedure N58Click(Sender: TObject);
    procedure N25Click(Sender: TObject);
    procedure N69Click(Sender: TObject);
    procedure Spb_okClick(Sender: TObject);
    procedure N56Click(Sender: TObject);
    procedure N20Click(Sender: TObject);
    procedure ToolButton6Click(Sender: TObject);
    procedure ToolButton8Click(Sender: TObject);
    procedure N15Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure chk_01Click(Sender: TObject);
    procedure chk_02Click(Sender: TObject);
    procedure chk_03Click(Sender: TObject);
    procedure chk_04Click(Sender: TObject);
    procedure chk_05Click(Sender: TObject);
    procedure chk_06Click(Sender: TObject);
    procedure N13121Click(Sender: TObject);
    procedure N13111Click(Sender: TObject);
    procedure N641Click(Sender: TObject);
    procedure N61Click(Sender: TObject);
    procedure N62Click(Sender: TObject);
    procedure ToolButton5Click(Sender: TObject);
    procedure N30Click(Sender: TObject);
    procedure N34Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N24Click(Sender: TObject);
    procedure N18Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure N2251Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
  private
    { Private declarations }
  public
//    procedure WMCLOSE(var MSG:TMessage);Message WM_Close;
    { Public declarations }
  end;

var
  Main: TMain;
  CStlRedBall,CStlBlueBall:TStrings;
  mainflag:boolean;
  CStrAbsoPath:string;

implementation
uses querynow,buyinfo,editjg,about,hezuo;


{$R *.dfm}

procedure TPanel.Paint;
const
  Alignments: array[TAlignment] of Longint = (DT_LEFT, DT_RIGHT, DT_CENTER);
  VerticalAlignments: array[TVerticalAlignment] of Longint = (DT_TOP, DT_BOTTOM, DT_VCENTER);
var
  Rect: TRect;
  LColor: TColor;
  LStyle: TCustomStyleServices;
  LDetails: TThemedElementDetails;
  TopColor        : TColor;
  BottomColor     : TColor;
  LBaseColor      : TColor;
  LBaseTopColor   : TColor;
  LBaseBottomColor: TColor;
  Flags: Longint;

  procedure AdjustColors(Bevel: TPanelBevel);
  begin
    TopColor := LBaseTopColor;
    if Bevel = bvLowered then
      TopColor := LBaseBottomColor;
    BottomColor := LBaseBottomColor;
    if Bevel = bvLowered then
      BottomColor := LBaseTopColor;
  end;

begin
  Rect := GetClientRect;

  LBaseColor := Color;//use the color property value to get the background color.
  LBaseTopColor := clBtnHighlight;
  LBaseBottomColor := clBtnShadow;
  LStyle := StyleServices;
  if LStyle.Enabled then
  begin
    LDetails := LStyle.GetElementDetails(tpPanelBevel);
    if LStyle.GetElementColor(LDetails, ecEdgeHighLightColor, LColor) and (LColor <> clNone) then
      LBaseTopColor := LColor;
    if LStyle.GetElementColor(LDetails, ecEdgeShadowColor, LColor) and (LColor <> clNone) then
      LBaseBottomColor := LColor;
  end;

  if BevelOuter <> bvNone then
  begin
    AdjustColors(BevelOuter);
    Frame3D(Canvas, Rect, TopColor, BottomColor, BevelWidth);
  end;
  if not (LStyle.Enabled and (csParentBackground in ControlStyle)) then
    Frame3D(Canvas, Rect, LBaseColor, LBaseColor, BorderWidth)
  else
    InflateRect(Rect, -Integer(BorderWidth), -Integer(BorderWidth));
  if BevelInner <> bvNone then
  begin
    AdjustColors(BevelInner);
    Frame3D(Canvas, Rect, TopColor, BottomColor, BevelWidth);
  end;
  with Canvas do
  begin
    if not LStyle.Enabled or not ParentBackground then
    begin
      Brush.Color := LBaseColor;
      FillRect(Rect);
    end;

    if ShowCaption and (Caption <> '') then
    begin
      Brush.Style := bsClear;
      Font := Self.Font;
      Flags := DT_EXPANDTABS or DT_SINGLELINE or
        VerticalAlignments[VerticalAlignment] or Alignments[Alignment];
      Flags := DrawTextBiDiModeFlags(Flags);
      if LStyle.Enabled then
      begin
        LDetails := LStyle.GetElementDetails(tpPanelBackground);
        if not LStyle.GetElementColor(LDetails, ecTextColor, LColor) or (LColor = clNone) then
          LColor := Font.Color;
        LStyle.DrawText(Handle, LDetails, Caption, Rect, TTextFormatFlags(Flags), LColor)
      end
      else
        DrawText(Handle, Caption, -1, Rect, Flags);
    end;
  end;
end;

function SplitString(const pStrSource,pStrSplitChar:String):TStringlist;
var
     StrTemp,StrNull:string;
     i:integer;
begin
     Result:=TStringlist.Create;
     StrTemp:=Trim(pStrSource);
     if(Length(trim(StrTemp))>1)
     then begin
           i:=pos(pStrSplitChar,StrTemp);
           while i<>0 do
           begin
                if (length(trim(Copy(StrTemp,0,i-1)))<>0) then
                     Result.Add(Copy(StrTemp,0,i-1));
                delete(StrTemp,1,i);
                i:=pos(pStrSplitChar,StrTemp);
           end;
     end;
     result.Add(StrTemp);
end;

function SetStr_NullChar(AStrPar:String;AIntLen:Integer):String;
var
     DIntLen:Integer;
     DIntI  :Integer;
     DStrNil:String;
begin
     if   AIntLen>Length(AStrPar)
     then begin
          DIntLen:=AIntLen-length(AStrPar);
          for DIntI:=1 to DIntLen do
          begin
               DStrNil:=DStrNil+' ';
          end;
          AStrPar:=AStrPar+DStrNil
     end
     else
         AStrPar:=copy(AStrPar,0,AIntLen-1);
     result:=AStrPar;
end;
//*****************************************************************************//
function fRedBall(pstrBallNo:String):boolean;
begin
     result:=true;
end;

function fBlueBall(pstrBallNo:String):boolean;
begin
     result:=true;
end;

function fInitData():boolean;
var
     StlData:TStrings;
     i:integer;
     StrTemp:String;
begin
     StlData:=TStringList.Create;
     StlData.LoadFromFile(CStrAbsoPath+'\SSData\ssr.ssr');
     for  i:=0 to StlData.Count -1 do
     begin
          StrTemp:='';
          StrTemp:=StlData.Strings[i];
          StrTemp:=Copy(StrTemp,0,Pos('=',StrTemp)-1);
          Main.Cmb_Number.Items.Add(StrTemp);
     end;
     Main.Cmb_Number.ItemIndex:=-1;
     result:=true;
end;
//*****************************************************************************//
procedure TMain.FormCreate(Sender: TObject);
var
     StlTitle:TStrings;
begin
     CStlRedBall:=TStringList.Create;
     CStlBlueBall:=TStringList.Create;
     CStrAbsoPath:=ExtractFilePath(ParamStr(0));//获取当前执行文件的绝对路径//getcurrentdir();
     try  fInitData; except end;
     mainflag:=true;

     if mainflag=false then
        Application.MessageBox(pchar('系统提示:本软件尚未注册，部分操作功能将不予开放!'),'提示信息',MB_OK+MB_IconInformation);

    // sqlpath:= 'Provider=Microsoft.Jet.OLEDB.4.0;Data Source='+ExtractFilePath(ParamStr(0))+'FBLotteryData\FBLottery.mdb;Jet OLEDB:Database Password='+'檇檇张琪檇檇'+';Persist Security Info=False';

     Web.Navigate(ExtractFilePath(ParamStr(0))+'bin\title.htm');
     StlTitle:=TStringList.Create;
     StlTitle.Add(' 序    号 ');
     StlTitle.Add(' 投注号码 ');
     VLE_RES.TitleCaptions:=StlTitle;
     freeandnil(StlTitle);
end;





procedure TMain.Pal_01Click(Sender: TObject);
begin
     if   pal_01.Color=clBtnFace    then  pal_01.Color:=clRed
     else
     if   pal_01.Color=clRed        then  pal_01.Color:=clBtnFace;
     fRedBall('1');
end;

procedure TMain.Pal_02Click(Sender: TObject);
begin
     if   pal_02.Color=clBtnFace    then  pal_02.Color:=clRed
     else
     if   pal_02.Color=clRed        then  pal_02.Color:=clBtnFace;
     fRedBall('2');
end;

procedure TMain.Pal_03Click(Sender: TObject);
begin
     if   pal_03.Color=clBtnFace    then  pal_03.Color:=clRed
     else
     if   pal_03.Color=clRed        then  pal_03.Color:=clBtnFace;
     fRedBall('3');
end;

procedure TMain.Pal_04Click(Sender: TObject);
begin
     if   pal_04.Color=clBtnFace    then  pal_04.Color:=clRed
     else
     if   pal_04.Color=clRed        then  pal_04.Color:=clBtnFace;
     fRedBall('4');
end;

procedure TMain.Pal_05Click(Sender: TObject);
begin
     if   pal_05.Color=clBtnFace    then  pal_05.Color:=clRed
     else
     if   pal_05.Color=clRed        then  pal_05.Color:=clBtnFace;
     fRedBall('5');
end;

procedure TMain.Pal_06Click(Sender: TObject);
begin
     if   pal_06.Color=clBtnFace    then  pal_06.Color:=clRed
     else
     if   pal_06.Color=clRed        then  pal_06.Color:=clBtnFace;
     fRedBall('6');
end;

procedure TMain.Pal_07Click(Sender: TObject);
begin
     if   pal_07.Color=clBtnFace    then  pal_07.Color:=clRed
     else
     if   pal_07.Color=clRed        then  pal_07.Color:=clBtnFace;
     fRedBall('7');
end;

procedure TMain.Pal_08Click(Sender: TObject);
begin
     if   pal_08.Color=clBtnFace    then  pal_08.Color:=clRed
     else
     if   pal_08.Color=clRed        then  pal_08.Color:=clBtnFace;
     fRedBall('8');
end;

procedure TMain.Pal_09Click(Sender: TObject);
begin
     if   pal_09.Color=clBtnFace    then  pal_09.Color:=clRed
     else
     if   pal_09.Color=clRed        then  pal_09.Color:=clBtnFace;
     fRedBall('9');
end;

procedure TMain.Pal_10Click(Sender: TObject);
begin
     if   pal_10.Color=clBtnFace    then  pal_10.Color:=clRed
     else
     if   pal_10.Color=clRed        then  pal_10.Color:=clBtnFace;
     fRedBall('10');
end;

procedure TMain.Pal_11Click(Sender: TObject);
begin
     if   pal_11.Color=clBtnFace    then  pal_11.Color:=clRed
     else
     if   pal_11.Color=clRed        then  pal_11.Color:=clBtnFace;
     fRedBall('11');
end;

procedure TMain.Pal_12Click(Sender: TObject);
begin
     if   pal_12.Color=clBtnFace    then  pal_12.Color:=clRed
     else
     if   pal_12.Color=clRed        then  pal_12.Color:=clBtnFace;
     fRedBall('12');
end;

procedure TMain.Pal_13Click(Sender: TObject);
begin
     if   pal_13.Color=clBtnFace    then  pal_13.Color:=clRed
     else
     if   pal_13.Color=clRed        then  pal_13.Color:=clBtnFace;
     fRedBall('13');
end;

procedure TMain.Pal_14Click(Sender: TObject);
begin
     if   pal_14.Color=clBtnFace    then  pal_14.Color:=clRed
     else
     if   pal_14.Color=clRed        then  pal_14.Color:=clBtnFace;
     fRedBall('14');
end;

procedure TMain.Pal_15Click(Sender: TObject);
begin
     if   pal_15.Color=clBtnFace    then  pal_15.Color:=clRed
     else
     if   pal_15.Color=clRed        then  pal_15.Color:=clBtnFace;
     fRedBall('15');
end;

procedure TMain.Pal_16Click(Sender: TObject);
begin
     if   pal_16.Color=clBtnFace    then  pal_16.Color:=clRed
     else
     if   pal_16.Color=clRed        then  pal_16.Color:=clBtnFace;
     fRedBall('16');
end;

procedure TMain.Pal_17Click(Sender: TObject);
begin
     if   pal_17.Color=clBtnFace    then  pal_17.Color:=clRed
     else
     if   pal_17.Color=clRed        then  pal_17.Color:=clBtnFace;
     fRedBall('17');
end;

procedure TMain.Pal_18Click(Sender: TObject);
begin
     if   pal_18.Color=clBtnFace    then  pal_18.Color:=clRed
     else
     if   pal_18.Color=clRed        then  pal_18.Color:=clBtnFace;
     fRedBall('18');
end;

procedure TMain.Pal_19Click(Sender: TObject);
begin
     if   pal_19.Color=clBtnFace    then  pal_19.Color:=clRed
     else
     if   pal_19.Color=clRed        then  pal_19.Color:=clBtnFace;
     fRedBall('19');
end;

procedure TMain.Pal_20Click(Sender: TObject);
begin
     if   pal_20.Color=clBtnFace    then  pal_20.Color:=clRed
     else
     if   pal_20.Color=clRed        then  pal_20.Color:=clBtnFace;
     fRedBall('20');
end;

procedure TMain.Pal_21Click(Sender: TObject);
begin
     if   pal_21.Color=clBtnFace    then  pal_21.Color:=clRed
     else
     if   pal_21.Color=clRed        then  pal_21.Color:=clBtnFace;
     fRedBall('21');
end;

procedure TMain.Pal_22Click(Sender: TObject);
begin
     if   pal_22.Color=clBtnFace    then  pal_22.Color:=clRed
     else
     if   pal_22.Color=clRed        then  pal_22.Color:=clBtnFace;
     fRedBall('22');
end;

procedure TMain.Pal_23Click(Sender: TObject);
begin
     if   pal_23.Color=clBtnFace    then  pal_23.Color:=clRed
     else
     if   pal_23.Color=clRed        then  pal_23.Color:=clBtnFace;
     fRedBall('23');
end;

procedure TMain.Pal_24Click(Sender: TObject);
begin
     if   pal_24.Color=clBtnFace    then  pal_24.Color:=clRed
     else
     if   pal_24.Color=clRed        then  pal_24.Color:=clBtnFace;
     fRedBall('24');
end;

procedure TMain.Pal_25Click(Sender: TObject);
begin
     if   pal_25.Color=clBtnFace    then  pal_25.Color:=clRed
     else
     if   pal_25.Color=clRed        then  pal_25.Color:=clBtnFace;
     fRedBall('25');
end;

procedure TMain.Pal_26Click(Sender: TObject);
begin
     if   pal_26.Color=clBtnFace    then  pal_26.Color:=clRed
     else
     if   pal_26.Color=clRed        then  pal_26.Color:=clBtnFace;
     fRedBall('26');
end;

procedure TMain.Pal_27Click(Sender: TObject);
begin
     if   pal_27.Color=clBtnFace    then  pal_27.Color:=clRed
     else
     if   pal_27.Color=clRed        then  pal_27.Color:=clBtnFace;
     fRedBall('27');
end;

procedure TMain.Pal_28Click(Sender: TObject);
begin
     if   pal_28.Color=clBtnFace    then  pal_28.Color:=clRed
     else
     if   pal_28.Color=clRed        then  pal_28.Color:=clBtnFace;
     fRedBall('28');
end;

procedure TMain.Pal_29Click(Sender: TObject);
begin
     if   pal_29.Color=clBtnFace    then  pal_29.Color:=clRed
     else
     if   pal_29.Color=clRed        then  pal_29.Color:=clBtnFace;
     fRedBall('29');
end;

procedure TMain.Pal_30Click(Sender: TObject);
begin
     if   pal_30.Color=clBtnFace    then  pal_30.Color:=clRed
     else
     if   pal_30.Color=clRed        then  pal_30.Color:=clBtnFace;
     fRedBall('30');
end;

procedure TMain.Pal_31Click(Sender: TObject);
begin
     if   pal_31.Color=clBtnFace    then  pal_31.Color:=clRed
     else
     if   pal_31.Color=clRed        then  pal_31.Color:=clBtnFace;
     fRedBall('31');
end;

procedure TMain.Pal_32Click(Sender: TObject);
begin
     if   pal_32.Color=clBtnFace    then  pal_32.Color:=clRed
     else
     if   pal_32.Color=clRed        then  pal_32.Color:=clBtnFace;
     fRedBall('32');
end;

procedure TMain.Pal_33Click(Sender: TObject);
begin
     if   pal_33.Color=clBtnFace    then  pal_33.Color:=clRed
     else
     if   pal_33.Color=clRed        then  pal_33.Color:=clBtnFace;
     fRedBall('33');
end;

procedure TMain.Pal_001Click(Sender: TObject);
begin
     if   pal_001.Color=clBtnFace   then  pal_001.Color:=clBlue
     else
     if   pal_001.Color=clBlue      then  pal_001.Color:=clBtnFace;
     fBlueBall('1');
end;

procedure TMain.Pal_002Click(Sender: TObject);
begin
     if   pal_002.Color=clBtnFace   then  pal_002.Color:=clBlue
     else
     if   pal_002.Color=clBlue      then  pal_002.Color:=clBtnFace;
     fBlueBall('2');
end;

procedure TMain.Pal_003Click(Sender: TObject);
begin
     if   pal_003.Color=clBtnFace   then  pal_003.Color:=clBlue
     else
     if   pal_003.Color=clBlue      then  pal_003.Color:=clBtnFace;
     fBlueBall('3');
end;

procedure TMain.Pal_004Click(Sender: TObject);
begin
     if   pal_004.Color=clBtnFace   then  pal_004.Color:=clBlue
     else
     if   pal_004.Color=clBlue      then  pal_004.Color:=clBtnFace;
     fBlueBall('4');
end;

procedure TMain.Pal_005Click(Sender: TObject);
begin
     if   pal_005.Color=clBtnFace   then  pal_005.Color:=clBlue
     else
     if   pal_005.Color=clBlue      then  pal_005.Color:=clBtnFace;
     fBlueBall('5');
end;

procedure TMain.Pal_006Click(Sender: TObject);
begin
     if   pal_006.Color=clBtnFace   then  pal_006.Color:=clBlue
     else
     if   pal_006.Color=clBlue      then  pal_006.Color:=clBtnFace;
     fBlueBall('6');
end;

procedure TMain.Pal_007Click(Sender: TObject);
begin
     if   pal_007.Color=clBtnFace   then  pal_007.Color:=clBlue
     else
     if   pal_007.Color=clBlue      then  pal_007.Color:=clBtnFace;
     fBlueBall('7');
end;

procedure TMain.Pal_008Click(Sender: TObject);
begin
     if   pal_008.Color=clBtnFace   then  pal_008.Color:=clBlue
     else
     if   pal_008.Color=clBlue      then  pal_008.Color:=clBtnFace;
     fBlueBall('8');
end;

procedure TMain.Pal_009Click(Sender: TObject);
begin
     if   pal_009.Color=clBtnFace   then  pal_009.Color:=clBlue
     else
     if   pal_009.Color=clBlue      then  pal_009.Color:=clBtnFace;
     fBlueBall('9');
end;

procedure TMain.Pal_010Click(Sender: TObject);
begin
     if   pal_010.Color=clBtnFace   then  pal_010.Color:=clBlue
     else
     if   pal_010.Color=clBlue      then  pal_010.Color:=clBtnFace;
     fBlueBall('10');
end;

procedure TMain.Pal_011Click(Sender: TObject);
begin
     if   pal_011.Color=clBtnFace   then  pal_011.Color:=clBlue
     else
     if   pal_011.Color=clBlue      then  pal_011.Color:=clBtnFace;
     fBlueBall('11');
end;

procedure TMain.Pal_012Click(Sender: TObject);
begin
     if   pal_012.Color=clBtnFace   then  pal_012.Color:=clBlue
     else
     if   pal_012.Color=clBlue      then  pal_012.Color:=clBtnFace;
     fBlueBall('12');
end;

procedure TMain.Pal_013Click(Sender: TObject);
begin
     if   pal_013.Color=clBtnFace   then  pal_013.Color:=clBlue
     else
     if   pal_013.Color=clBlue      then  pal_013.Color:=clBtnFace;
     fBlueBall('13');
end;

procedure TMain.Pal_014Click(Sender: TObject);
begin
     if   pal_014.Color=clBtnFace   then  pal_014.Color:=clBlue
     else
     if   pal_014.Color=clBlue      then  pal_014.Color:=clBtnFace;
     fBlueBall('14');
end;

procedure TMain.Pal_015Click(Sender: TObject);
begin
     if   pal_015.Color=clBtnFace   then  pal_015.Color:=clBlue
     else
     if   pal_015.Color=clBlue      then  pal_015.Color:=clBtnFace;
     fBlueBall('15');
end;

procedure TMain.Pal_016Click(Sender: TObject);
begin
     if   pal_016.Color=clBtnFace   then  pal_016.Color:=clBlue
     else
     if   pal_016.Color=clBlue      then  pal_016.Color:=clBtnFace;
     fBlueBall('16');
end;

procedure TMain.btn_setClick(Sender: TObject);
begin
    try   Mnu_01.Popup(btn_set.ClientOrigin.X,btn_set.ClientOrigin.Y+btn_set.Height); except end;
end;

procedure TMain.btn_filterClick(Sender: TObject);
begin
     try  Mnu_02.Popup(btn_filter.ClientOrigin.X,btn_filter.ClientOrigin.Y+btn_filter.Height); except end;
end;

procedure TMain.btn_resultClick(Sender: TObject);
begin
     try  Mnu_03.Popup(btn_result.ClientOrigin.X,btn_result.ClientOrigin.Y+btn_result.Height); except end;
end;

procedure TMain.ToolButton1Click(Sender: TObject);
var
     StrFanAn,StrICO:String;
     StlSave:TStrings;
begin
     StrFanAn:='';
     StlSave:=TStringList.Create;
     if   pal_01.color=clred
     then begin
          if   StrFanAn=''     then     StrFanAn:=' 1'
          else StrFanAn:=StrFanAn+'_ 1';
     end;

     if   pal_02.color=clred
     then begin
          if   StrFanAn=''     then     StrFanAn:=' 2'
          else StrFanAn:=StrFanAn+'_ 2';
     end;

     if   pal_03.color=clred
     then begin
          if   StrFanAn=''     then     StrFanAn:=' 3'
          else StrFanAn:=StrFanAn+'_ 3';
     end;

     if   pal_04.color=clred
     then begin
          if   StrFanAn=''     then     StrFanAn:=' 4'
          else StrFanAn:=StrFanAn+'_ 4';
     end;

     if   pal_05.color=clred
     then begin
          if   StrFanAn=''     then     StrFanAn:=' 5'
          else StrFanAn:=StrFanAn+'_ 5';
     end;

     if   pal_06.color=clred
     then begin
          if   StrFanAn=''     then     StrFanAn:=' 6'
          else StrFanAn:=StrFanAn+'_ 6';
     end;

     if   pal_07.color=clred
     then begin
          if   StrFanAn=''     then     StrFanAn:=' 7'
          else StrFanAn:=StrFanAn+'_ 7';
     end;

     if   pal_08.color=clred
     then begin
          if   StrFanAn=''     then     StrFanAn:=' 8'
          else StrFanAn:=StrFanAn+'_ 8';
     end;

     if   pal_09.color=clred
     then begin
          if   StrFanAn=''     then     StrFanAn:=' 9'
          else StrFanAn:=StrFanAn+'_ 9';
     end;

     if   pal_10.color=clred
     then begin
          if   StrFanAn=''     then     StrFanAn:='10'
          else StrFanAn:=StrFanAn+'_10';
     end;

     if   pal_11.color=clred
     then begin
          if   StrFanAn=''     then     StrFanAn:='11'
          else StrFanAn:=StrFanAn+'_11';
     end;

     if   pal_12.color=clred
     then begin
          if   StrFanAn=''     then     StrFanAn:='12'
          else StrFanAn:=StrFanAn+'_12';
     end;

     if   pal_13.color=clred
     then begin
          if   StrFanAn=''     then     StrFanAn:='13'
          else StrFanAn:=StrFanAn+'_13';
     end;

     if   pal_14.color=clred
     then begin
          if   StrFanAn=''     then     StrFanAn:='14'
          else StrFanAn:=StrFanAn+'_14';
     end;

     if   pal_15.color=clred
     then begin
          if   StrFanAn=''     then     StrFanAn:='15'
          else StrFanAn:=StrFanAn+'_15';
     end;

     if   pal_16.color=clred
     then begin
          if   StrFanAn=''     then     StrFanAn:='16'
          else StrFanAn:=StrFanAn+'_16';
     end;

     if   pal_17.color=clred
     then begin
          if   StrFanAn=''     then     StrFanAn:='17'
          else StrFanAn:=StrFanAn+'_17';
     end;

     if   pal_18.color=clred
     then begin
          if   StrFanAn=''     then     StrFanAn:='18'
          else StrFanAn:=StrFanAn+'_18';
     end;

     if   pal_19.color=clred
     then begin
          if   StrFanAn=''     then     StrFanAn:='19'
          else StrFanAn:=StrFanAn+'_19';
     end;

     if   pal_20.color=clred
     then begin
          if   StrFanAn=''     then     StrFanAn:='20'
          else StrFanAn:=StrFanAn+'_20';
     end;

     if   pal_21.color=clred
     then begin
          if   StrFanAn=''     then     StrFanAn:='21'
          else StrFanAn:=StrFanAn+'_21';
     end;

     if   pal_22.color=clred
     then begin
          if   StrFanAn=''     then     StrFanAn:='22'
          else StrFanAn:=StrFanAn+'_22';
     end;

     if   pal_23.color=clred
     then begin
          if   StrFanAn=''     then     StrFanAn:='23'
          else StrFanAn:=StrFanAn+'_23';
     end;

     if   pal_24.color=clred
     then begin
          if   StrFanAn=''     then     StrFanAn:='24'
          else StrFanAn:=StrFanAn+'_24';
     end;

     if   pal_25.color=clred
     then begin
          if   StrFanAn=''     then     StrFanAn:='25'
          else StrFanAn:=StrFanAn+'_25';
     end;

     if   pal_26.color=clred
     then begin
          if   StrFanAn=''     then     StrFanAn:='26'
          else StrFanAn:=StrFanAn+'_26';
     end;

     if   pal_27.color=clred
     then begin
          if   StrFanAn=''     then     StrFanAn:='27'
          else StrFanAn:=StrFanAn+'_27';
     end;

     if   pal_28.color=clred
     then begin
          if   StrFanAn=''     then     StrFanAn:='28'
          else StrFanAn:=StrFanAn+'_28';
     end;

     if   pal_29.color=clred
     then begin
          if   StrFanAn=''     then     StrFanAn:='29'
          else StrFanAn:=StrFanAn+'_29';
     end;

     if   pal_30.color=clred
     then begin
          if   StrFanAn=''     then     StrFanAn:='30'
          else StrFanAn:=StrFanAn+'_30';
     end;

     if   pal_31.color=clred
     then begin
          if   StrFanAn=''     then     StrFanAn:='31'
          else StrFanAn:=StrFanAn+'_31';
     end;

     if   pal_32.color=clred
     then begin
          if   StrFanAn=''     then     StrFanAn:='32'
          else StrFanAn:=StrFanAn+'_32';
     end;

     if   pal_33.color=clred
     then begin
          if   StrFanAn=''     then     StrFanAn:='33'
          else StrFanAn:=StrFanAn+'_33';
     end;

     StrFanAn:=StrFanAn+'  +  ';

     if   pal_001.color=clblue
     then begin
          if   StrFanAn=''     then     StrFanAn:=' 1'
          else StrFanAn:=StrFanAn+' 1';
     end;

     if   pal_002.color=clblue
     then begin
          if   StrFanAn=''     then     StrFanAn:=' 2'
          else StrFanAn:=StrFanAn+'_ 2';
     end;

     if   pal_003.color=clblue
     then begin
          if   StrFanAn=''     then     StrFanAn:=' 3'
          else StrFanAn:=StrFanAn+'_ 3';
     end;

     if   pal_004.color=clblue
     then begin
          if   StrFanAn=''     then     StrFanAn:=' 4'
          else StrFanAn:=StrFanAn+'_ 4';
     end;

     if   pal_005.color=clblue
     then begin
          if   StrFanAn=''     then     StrFanAn:=' 5'
          else StrFanAn:=StrFanAn+'_ 5';
     end;

     if   pal_006.color=clblue
     then begin
          if   StrFanAn=''     then     StrFanAn:=' 6'
          else StrFanAn:=StrFanAn+'_ 6';
     end;

     if   pal_007.color=clblue
     then begin
          if   StrFanAn=''     then     StrFanAn:=' 7'
          else StrFanAn:=StrFanAn+'_ 7';
     end;

     if   pal_008.color=clblue
     then begin
          if   StrFanAn=''     then     StrFanAn:=' 8'
          else StrFanAn:=StrFanAn+'_ 8';
     end;

     if   pal_009.color=clblue
     then begin
          if   StrFanAn=''     then     StrFanAn:=' 9'
          else StrFanAn:=StrFanAn+'_ 9';
     end;

     if   pal_010.color=clblue
     then begin
          if   StrFanAn=''     then     StrFanAn:='10'
          else StrFanAn:=StrFanAn+'_10';
     end;

     if   pal_011.color=clblue
     then begin
          if   StrFanAn=''     then     StrFanAn:='11'
          else StrFanAn:=StrFanAn+'_11';
     end;

     if   pal_012.color=clblue
     then begin
          if   StrFanAn=''     then     StrFanAn:='12'
          else StrFanAn:=StrFanAn+'_12';
     end;

     if   pal_013.color=clblue
     then begin
          if   StrFanAn=''     then     StrFanAn:='13'
          else StrFanAn:=StrFanAn+'_13';
     end;

     if   pal_014.color=clblue
     then begin
          if   StrFanAn=''     then     StrFanAn:='14'
          else StrFanAn:=StrFanAn+'_14';
     end;

     if   pal_015.color=clblue
     then begin
          if   StrFanAn=''     then     StrFanAn:='15'
          else StrFanAn:=StrFanAn+'_15';
     end;

     if   pal_016.color=clblue
     then begin
          if   StrFanAn=''     then     StrFanAn:='16'
          else StrFanAn:=StrFanAn+'_16';
     end;

     with dsave  do
     begin
          Filter:= '双色球投注方案(*.ssf)|*.ssf';
          Title := '保存投注方案';
          if   not Execute then Exit;
          StlSave.Add(StrFanAn);
          StrICO:=copy(dsave.FileName,length(dsave.FileName)-3,4);
          StrICO:=lowercase(StrICO);
          if   (StrICO='.ssf')
          then begin
               StlSave.SaveToFile(dsave.filename);
          end
          else
               StlSave.SaveToFile(dsave.FileName+'.ssf');
     end;
     freeandnil(StlSave)
end;


procedure TMain.N36Click(Sender: TObject);
begin
     ToolButton1Click(nil);
end;

procedure TMain.N12Click(Sender: TObject);
begin
     pal_01.color:=clBtnFace; pal_02.color:=clBtnFace; pal_03.color:=clBtnFace; pal_04.color:=clBtnFace;
     pal_05.color:=clBtnFace; pal_06.color:=clBtnFace; pal_07.color:=clBtnFace; pal_08.color:=clBtnFace;
     pal_09.color:=clBtnFace; pal_10.color:=clBtnFace; pal_11.color:=clBtnFace; pal_12.color:=clBtnFace;
     pal_13.color:=clBtnFace; pal_14.color:=clBtnFace; pal_15.color:=clBtnFace; pal_16.color:=clBtnFace;
     pal_17.color:=clBtnFace; pal_18.color:=clBtnFace; pal_19.color:=clBtnFace; pal_20.color:=clBtnFace;
     pal_21.color:=clBtnFace; pal_22.color:=clBtnFace; pal_23.color:=clBtnFace; pal_24.color:=clBtnFace;
     pal_25.color:=clBtnFace; pal_26.color:=clBtnFace; pal_27.color:=clBtnFace; pal_28.color:=clBtnFace;
     pal_29.color:=clBtnFace; pal_30.color:=clBtnFace; pal_31.color:=clBtnFace; pal_32.color:=clBtnFace;
     pal_33.color:=clBtnFace;
     pal_001.color:=clBtnFace; pal_002.color:=clBtnFace; pal_003.color:=clBtnFace; pal_004.color:=clBtnFace;
     pal_005.color:=clBtnFace; pal_006.color:=clBtnFace; pal_007.color:=clBtnFace; pal_008.color:=clBtnFace;
     pal_009.color:=clBtnFace; pal_010.color:=clBtnFace; pal_011.color:=clBtnFace; pal_012.color:=clBtnFace;
     pal_013.color:=clBtnFace; pal_014.color:=clBtnFace; pal_015.color:=clBtnFace; pal_016.color:=clBtnFace;
end;

procedure TMain.N14Click(Sender: TObject);
begin
     ToolButton1Click(nil);
end;

procedure TMain.N40Click(Sender: TObject);
begin
     N12Click(nil);
end;

procedure TMain.N41Click(Sender: TObject);
begin
     pal_01.color:=clred; pal_02.color:=clred; pal_03.color:=clred; pal_04.color:=clred;
     pal_05.color:=clred; pal_06.color:=clred; pal_07.color:=clred; pal_08.color:=clred;
     pal_09.color:=clred; pal_10.color:=clred; pal_11.color:=clred; pal_12.color:=clred;
     pal_13.color:=clred; pal_14.color:=clred; pal_15.color:=clred; pal_16.color:=clred;
     pal_17.color:=clred; pal_18.color:=clred; pal_19.color:=clred; pal_20.color:=clred;
     pal_21.color:=clred; pal_22.color:=clred; pal_23.color:=clred; pal_24.color:=clred;
     pal_25.color:=clred; pal_26.color:=clred; pal_27.color:=clred; pal_28.color:=clred;
     pal_29.color:=clred; pal_30.color:=clred; pal_31.color:=clred; pal_32.color:=clred;
     pal_33.color:=clred;
     pal_001.color:=clblue; pal_002.color:=clblue; pal_003.color:=clblue; pal_004.color:=clblue;
     pal_005.color:=clblue; pal_006.color:=clblue; pal_007.color:=clblue; pal_008.color:=clblue;
     pal_009.color:=clblue; pal_010.color:=clblue; pal_011.color:=clblue; pal_012.color:=clblue;
     pal_013.color:=clblue; pal_014.color:=clblue; pal_015.color:=clblue; pal_016.color:=clblue;

end;

procedure TMain.ToolButton2Click(Sender: TObject);
var
     StrTemp,StrRed,StrBlue:String;
     StlSave,StlRecv:TStrings;
     IntCheck,i:integer;
begin
     N12Click(nil);
     StlSave:=TStringList.Create;
     StlRecv:=TStringList.Create;
     with dopen do
     begin
          Filter := '双色球投注方案(*.ssf)|*.ssf';
          Title := '导入投注方案';
          if not Execute then Exit;
          if(copy(dopen.FileName,length(dopen.FileName)-3,1)='.') and (UpperCase(copy(dopen.FileName,length(dopen.FileName)-2,3))='SSF') then
            StlSave.LoadFromFile(dopen.FileName)
          else
            Application.MessageBox(pchar('您导入的文件不是一个有效的投注方案(*.ssf)!'),'提示',MB_OK+MB_IconInformation);
     end;

     if stlsave.Count >0
     then begin
          StrRed:=Trim(copy(stlsave.strings[0],0,pos('+',stlsave.strings[0])-1));
          StrBlue:=Trim(copy(stlsave.strings[0],pos('+',stlsave.strings[0])+1,length(stlsave.strings[0])));
     end;

     StlRecv.Clear;
     if StrRed<>''
     then begin
          StlRecv:=SplitString(StrRed,'_');
          if stlrecv.Count>0
          then begin
               for i:=0 to stlrecv.count-1
               do   begin
                    StrTemp:=Trim(stlrecv.Strings[i]);
                    if   StrTemp='' then IntCheck:=0
                    else IntCheck:=StrToInt(Trim(StrTemp));
                    case IntCheck of
                         1:pal_01.color:=clred;
                         2:pal_02.color:=clred;
                         3:pal_03.color:=clred;
                         4:pal_04.color:=clred;
                         5:pal_05.color:=clred;
                         6:pal_06.color:=clred;
                         7:pal_07.color:=clred;
                         8:pal_08.color:=clred;
                         9:pal_09.color:=clred;
                         10:pal_10.color:=clred;
                         11:pal_11.color:=clred;
                         12:pal_12.color:=clred;
                         13:pal_13.color:=clred;
                         14:pal_14.color:=clred;
                         15:pal_15.color:=clred;
                         16:pal_16.color:=clred;
                         17:pal_17.color:=clred;
                         18:pal_18.color:=clred;
                         19:pal_19.color:=clred;
                         20:pal_20.color:=clred;
                         21:pal_21.color:=clred;
                         22:pal_22.color:=clred;
                         23:pal_23.color:=clred;
                         24:pal_24.color:=clred;
                         25:pal_25.color:=clred;
                         26:pal_26.color:=clred;
                         27:pal_27.color:=clred;
                         28:pal_28.color:=clred;
                         29:pal_29.color:=clred;
                         30:pal_30.color:=clred;
                         31:pal_31.color:=clred;
                         32:pal_32.color:=clred;
                         33:pal_33.color:=clred;
                    end;
               end;
           end;
     end;

     StlRecv.Clear;
     if StrBlue<>''
     then begin
          StlRecv:=SplitString(StrBlue,'_');
          if stlrecv.Count>0
          then begin
               for i:=0 to stlrecv.count-1
               do   begin
                    StrTemp:=Trim(stlrecv.Strings[i]);
                    if   StrTemp='' then IntCheck:=0
                    else IntCheck:=StrToInt(Trim(StrTemp));
                    case IntCheck of
                         1:pal_001.color:=clblue;
                         2:pal_002.color:=clblue;
                         3:pal_003.color:=clblue;
                         4:pal_004.color:=clblue;
                         5:pal_005.color:=clblue;
                         6:pal_006.color:=clblue;
                         7:pal_007.color:=clblue;
                         8:pal_008.color:=clblue;
                         9:pal_009.color:=clblue;
                         10:pal_010.color:=clblue;
                         11:pal_011.color:=clblue;
                         12:pal_012.color:=clblue;
                         13:pal_013.color:=clblue;
                         14:pal_014.color:=clblue;
                         15:pal_015.color:=clblue;
                         16:pal_016.color:=clblue;
                    end;
               end;
           end;
     end;
end;

procedure TMain.N13Click(Sender: TObject);
begin
     ToolButton2Click(nil);
end;

procedure TMain.N37Click(Sender: TObject);
begin
     ToolButton2Click(nil);
end;

procedure TMain.Cmb_NumberChange(Sender: TObject);
var
     StlData:TStrings;
     StrTemp,StrTempX,StrRed,StrBlue:String;
     IntCheck,i:integer;
     StlRecv:TStrings;
begin
     N12Click(nil);
     StlData:=TStringList.Create;
     StlRecv:=TStringList.Create;
     StlData.LoadFromFile(CStrAbsoPath+'\SSData\ssr.ssr');
     for  i:=0 to StlData.Count -1 do
     begin
          StrTemp:='';
          StrTemp:=StlData.Strings[i];
          StrTemp:=Copy(StrTemp,0,Pos('=',StrTemp)-1);
          if StrTemp=Cmb_Number.Items.Strings[Cmb_Number.ItemIndex]
          then begin
               StrTemp:=Trim(Copy(StlData.Strings[i],Pos('=',StlData.Strings[i])+1,length(StlData.Strings[i])));
               break;
          end;
     end;

     if Trim(StrTemp)<>''
     then begin
          StrRed:=Trim(copy(StrTemp,0,pos('+',StrTemp)-1));
          StrBlue:=Trim(copy(StrTemp,pos('+',StrTemp)+1,length(StrTemp)));
     end;

     StrTemp:=StringReplace(StrTemp,'_',' ',[rfReplaceAll]);
     Lbl_Result.Caption:='中 奖 号 码∶ '+StrTemp;


     StlRecv.Clear;
     if StrRed<>''
     then begin
          StlRecv:=SplitString(StrRed,'_');
          if stlrecv.Count>0
          then begin
               for i:=0 to stlrecv.count-1
               do   begin
                    StrTempX:=Trim(stlrecv.Strings[i]);
                    if   StrTempX='' then IntCheck:=0
                    else IntCheck:=StrToInt(Trim(StrTempX));
                    case IntCheck of
                         1:pal_01.color:=clred;
                         2:pal_02.color:=clred;
                         3:pal_03.color:=clred;
                         4:pal_04.color:=clred;
                         5:pal_05.color:=clred;
                         6:pal_06.color:=clred;
                         7:pal_07.color:=clred;
                         8:pal_08.color:=clred;
                         9:pal_09.color:=clred;
                         10:pal_10.color:=clred;
                         11:pal_11.color:=clred;
                         12:pal_12.color:=clred;
                         13:pal_13.color:=clred;
                         14:pal_14.color:=clred;
                         15:pal_15.color:=clred;
                         16:pal_16.color:=clred;
                         17:pal_17.color:=clred;
                         18:pal_18.color:=clred;
                         19:pal_19.color:=clred;
                         20:pal_20.color:=clred;
                         21:pal_21.color:=clred;
                         22:pal_22.color:=clred;
                         23:pal_23.color:=clred;
                         24:pal_24.color:=clred;
                         25:pal_25.color:=clred;
                         26:pal_26.color:=clred;
                         27:pal_27.color:=clred;
                         28:pal_28.color:=clred;
                         29:pal_29.color:=clred;
                         30:pal_30.color:=clred;
                         31:pal_31.color:=clred;
                         32:pal_32.color:=clred;
                         33:pal_33.color:=clred;
                    end;
               end;
           end;
     end;

     StlRecv.Clear;
     if StrBlue<>''
     then begin
          StlRecv:=SplitString(StrBlue,'_');
          if stlrecv.Count>0
          then begin
               for i:=0 to stlrecv.count-1
               do   begin
                    StrTempX:=Trim(stlrecv.Strings[i]);
                    if   StrTempX='' then IntCheck:=0
                    else IntCheck:=StrToInt(Trim(StrTempX));
                    case IntCheck of
                         1:pal_001.color:=clblue;
                         2:pal_002.color:=clblue;
                         3:pal_003.color:=clblue;
                         4:pal_004.color:=clblue;
                         5:pal_005.color:=clblue;
                         6:pal_006.color:=clblue;
                         7:pal_007.color:=clblue;
                         8:pal_008.color:=clblue;
                         9:pal_009.color:=clblue;
                         10:pal_010.color:=clblue;
                         11:pal_011.color:=clblue;
                         12:pal_012.color:=clblue;
                         13:pal_013.color:=clblue;
                         14:pal_014.color:=clblue;
                         15:pal_015.color:=clblue;
                         16:pal_016.color:=clblue;
                    end;
               end;
           end;
     end;
end;
procedure TMain.Panel17Click(Sender: TObject);
begin
     pal_01.color:=clBtnFace; pal_02.color:=clBtnFace; pal_03.color:=clBtnFace; pal_04.color:=clBtnFace;
     pal_05.color:=clBtnFace; pal_06.color:=clBtnFace; pal_07.color:=clBtnFace; pal_08.color:=clBtnFace;
     pal_09.color:=clBtnFace; pal_10.color:=clBtnFace; pal_11.color:=clBtnFace; pal_12.color:=clBtnFace;
     pal_13.color:=clBtnFace; pal_14.color:=clBtnFace; pal_15.color:=clBtnFace; pal_16.color:=clBtnFace;
     pal_17.color:=clBtnFace; pal_18.color:=clBtnFace; pal_19.color:=clBtnFace; pal_20.color:=clBtnFace;
     pal_21.color:=clBtnFace; pal_22.color:=clBtnFace; pal_23.color:=clBtnFace; pal_24.color:=clBtnFace;
     pal_25.color:=clBtnFace; pal_26.color:=clBtnFace; pal_27.color:=clBtnFace; pal_28.color:=clBtnFace;
     pal_29.color:=clBtnFace; pal_30.color:=clBtnFace; pal_31.color:=clBtnFace; pal_32.color:=clBtnFace;
     pal_33.color:=clBtnFace;
end;

procedure TMain.Panel8Click(Sender: TObject);
var
     intNo,IntCount,IntCheck:Integer;
begin
     randomize;
     Panel17Click(nil);
     IntCount:=0;
     IntCheck:=StrToInt(Trim(Cmb_01.Items.Strings[Cmb_01.ItemIndex]));
     while IntCheck<>IntCount do
     begin
           IntNo:=Random(34);
           case IntNo of
           1:
                if   pal_01.color<>clred
                then begin
                     pal_01.color:=clred;
                     IntCount:=IntCount+1;
                end;
           2:
                if   pal_02.color<>clred
                then begin
                     pal_02.color:=clred;
                     IntCount:=IntCount+1;
                end;
           3:
                if   pal_03.color<>clred
                then begin
                     pal_03.color:=clred;
                     IntCount:=IntCount+1;
                end;
           4:
                if   pal_04.color<>clred
                then begin
                     pal_04.color:=clred;
                     IntCount:=IntCount+1;
                end;
           5:
                if   pal_05.color<>clred
                then begin
                     pal_05.color:=clred;
                     IntCount:=IntCount+1;
                end;
           6:
                if   pal_06.color<>clred
                then begin
                     pal_06.color:=clred;
                     IntCount:=IntCount+1;
                end;
           7:
                if   pal_07.color<>clred
                then begin
                     pal_07.color:=clred;
                     IntCount:=IntCount+1;
                end;
           8:
                if   pal_08.color<>clred
                then begin
                     pal_08.color:=clred;
                     IntCount:=IntCount+1;
                end;
           9:
                if   pal_09.color<>clred
                then begin
                     pal_09.color:=clred;
                     IntCount:=IntCount+1;
                end;
           10:
                if   pal_10.color<>clred
                then begin
                     pal_10.color:=clred;
                     IntCount:=IntCount+1;
                end;
           11:
                if   pal_11.color<>clred
                then begin
                     pal_11.color:=clred;
                     IntCount:=IntCount+1;
                end;
           12:
                if   pal_12.color<>clred
                then begin
                     pal_12.color:=clred;
                     IntCount:=IntCount+1;
                end;
           13:
                if   pal_13.color<>clred
                then begin
                     pal_13.color:=clred;
                     IntCount:=IntCount+1;
                end;
           14:
                if   pal_14.color<>clred
                then begin
                     pal_14.color:=clred;
                     IntCount:=IntCount+1;
                end;
           15:
                if   pal_15.color<>clred
                then begin
                     pal_15.color:=clred;
                     IntCount:=IntCount+1;
                end;
           16:
                if   pal_16.color<>clred
                then begin
                     pal_16.color:=clred;
                     IntCount:=IntCount+1;
                end;
           17:
                if   pal_17.color<>clred
                then begin
                     pal_17.color:=clred;
                     IntCount:=IntCount+1;
                end;
           18:
                if   pal_18.color<>clred
                then begin
                     pal_18.color:=clred;
                     IntCount:=IntCount+1;
                end;
           19:
                if   pal_19.color<>clred
                then begin
                     pal_19.color:=clred;
                     IntCount:=IntCount+1;
                end;
           20:
                if   pal_20.color<>clred
                then begin
                     pal_20.color:=clred;
                     IntCount:=IntCount+1;
                end;
           21:
                if   pal_21.color<>clred
                then begin
                     pal_21.color:=clred;
                     IntCount:=IntCount+1;
                end;
           22:
                if   pal_22.color<>clred
                then begin
                     pal_22.color:=clred;
                     IntCount:=IntCount+1;
                end;
           23:
                if   pal_23.color<>clred
                then begin
                     pal_23.color:=clred;
                     IntCount:=IntCount+1;
                end;
           24:
                if   pal_24.color<>clred
                then begin
                     pal_24.color:=clred;
                     IntCount:=IntCount+1;
                end;
           25:
                if   pal_25.color<>clred
                then begin
                     pal_25.color:=clred;
                     IntCount:=IntCount+1;
                end;
           26:
                if   pal_26.color<>clred
                then begin
                     pal_26.color:=clred;
                     IntCount:=IntCount+1;
                end;
           27:
                if   pal_27.color<>clred
                then begin
                     pal_27.color:=clred;
                     IntCount:=IntCount+1;
                end;
           28:
                if   pal_28.color<>clred
                then begin
                     pal_28.color:=clred;
                     IntCount:=IntCount+1;
                end;
           29:
                if   pal_29.color<>clred
                then begin
                     pal_29.color:=clred;
                     IntCount:=IntCount+1;
                end;
           30:
                if   pal_30.color<>clred
                then begin
                     pal_30.color:=clred;
                     IntCount:=IntCount+1;
                end;
           31:
                if   pal_31.color<>clred
                then begin
                     pal_31.color:=clred;
                     IntCount:=IntCount+1;
                end;
           32:
                if   pal_32.color<>clred
                then begin
                     pal_32.color:=clred;
                     IntCount:=IntCount+1;
                end;
           33:
                if   pal_33.color<>clred
                then begin
                     pal_33.color:=clred;
                     IntCount:=IntCount+1;
                end;
           end;
     end;
end;

procedure TMain.Panel26Click(Sender: TObject);
begin
     pal_001.color:=clBtnFace; pal_002.color:=clBtnFace; pal_003.color:=clBtnFace; pal_004.color:=clBtnFace;
     pal_005.color:=clBtnFace; pal_006.color:=clBtnFace; pal_007.color:=clBtnFace; pal_008.color:=clBtnFace;
     pal_009.color:=clBtnFace; pal_010.color:=clBtnFace; pal_011.color:=clBtnFace; pal_012.color:=clBtnFace;
     pal_013.color:=clBtnFace; pal_014.color:=clBtnFace; pal_015.color:=clBtnFace; pal_016.color:=clBtnFace;
end;

procedure TMain.Panel25Click(Sender: TObject);
var
     intNo,IntCount,IntCheck:Integer;
begin
     randomize;
     Panel26Click(nil);
     IntCount:=0;
     IntCheck:=StrToInt(Trim(Cmb_02.Items.Strings[Cmb_02.ItemIndex]));
     while IntCheck<>IntCount do
     begin
           IntNo:=Random(17);
           case IntNo of
           1:
                if   pal_001.color<>clblue
                then begin
                     pal_001.color:=clblue;
                     IntCount:=IntCount+1;
                end;
           2:
                if   pal_002.color<>clblue
                then begin
                     pal_002.color:=clblue;
                     IntCount:=IntCount+1;
                end;
           3:
                if   pal_003.color<>clblue
                then begin
                     pal_003.color:=clblue;
                     IntCount:=IntCount+1;
                end;
           4:
                if   pal_004.color<>clblue
                then begin
                     pal_004.color:=clblue;
                     IntCount:=IntCount+1;
                end;
           5:
                if   pal_005.color<>clblue
                then begin
                     pal_005.color:=clblue;
                     IntCount:=IntCount+1;
                end;
           6:
                if   pal_006.color<>clblue
                then begin
                     pal_006.color:=clblue;
                     IntCount:=IntCount+1;
                end;
           7:
                if   pal_007.color<>clblue
                then begin
                     pal_007.color:=clblue;
                     IntCount:=IntCount+1;
                end;
           8:
                if   pal_008.color<>clblue
                then begin
                     pal_008.color:=clblue;
                     IntCount:=IntCount+1;
                end;
           9:
                if   pal_009.color<>clblue
                then begin
                     pal_009.color:=clblue;
                     IntCount:=IntCount+1;
                end;
           10:
                if   pal_010.color<>clblue
                then begin
                     pal_010.color:=clblue;
                     IntCount:=IntCount+1;
                end;
           11:
                if   pal_011.color<>clblue
                then begin
                     pal_011.color:=clblue;
                     IntCount:=IntCount+1;
                end;
           12:
                if   pal_012.color<>clblue
                then begin
                     pal_012.color:=clblue;
                     IntCount:=IntCount+1;
                end;
           13:
                if   pal_013.color<>clblue
                then begin
                     pal_013.color:=clblue;
                     IntCount:=IntCount+1;
                end;
           14:
                if   pal_014.color<>clblue
                then begin
                     pal_014.color:=clblue;
                     IntCount:=IntCount+1;
                end;
           15:
                if   pal_015.color<>clblue
                then begin
                     pal_015.color:=clblue;
                     IntCount:=IntCount+1;
                end;
           16:
                if   pal_016.color<>clblue
                then begin
                     pal_016.color:=clblue;
                     IntCount:=IntCount+1;
                end;
           end;
     end;
end;

procedure TMain.N39Click(Sender: TObject);
begin
     randomize;
     Panel8Click(nil);
     Panel25Click(nil);
end;

procedure TMain.N49Click(Sender: TObject);
var
     StlRedBall,StlBluBall,StlResult:TStrings;
     i,a1,a2,a3,a4,a5,a6,intSum,intCount,intIndex:integer;
     b1,b2,b3,b4,b5,b6:integer;
     StrTemp:String;
     BolAddFlag:boolean;
begin
     StlRedBall:=TStringList.Create;
     StlBluBall:=TStringList.Create;
     StlResult:=TStringList.Create;
     if  pal_01.Color= clred then StlRedBall.Add('1');
     if  pal_02.Color= clred then StlRedBall.Add('2');
     if  pal_03.Color= clred then StlRedBall.Add('3');
     if  pal_04.Color= clred then StlRedBall.Add('4');
     if  pal_05.Color= clred then StlRedBall.Add('5');
     if  pal_06.Color= clred then StlRedBall.Add('6');
     if  pal_07.Color= clred then StlRedBall.Add('7');
     if  pal_08.Color= clred then StlRedBall.Add('8');
     if  pal_09.Color= clred then StlRedBall.Add('9');
     if  pal_10.Color= clred then StlRedBall.Add('10');
     if  pal_11.Color= clred then StlRedBall.Add('11');
     if  pal_12.Color= clred then StlRedBall.Add('12');
     if  pal_13.Color= clred then StlRedBall.Add('13');
     if  pal_14.Color= clred then StlRedBall.Add('14');
     if  pal_15.Color= clred then StlRedBall.Add('15');
     if  pal_16.Color= clred then StlRedBall.Add('16');
     if  pal_17.Color= clred then StlRedBall.Add('17');
     if  pal_18.Color= clred then StlRedBall.Add('18');
     if  pal_19.Color= clred then StlRedBall.Add('19');
     if  pal_20.Color= clred then StlRedBall.Add('20');
     if  pal_21.Color= clred then StlRedBall.Add('21');
     if  pal_22.Color= clred then StlRedBall.Add('22');
     if  pal_23.Color= clred then StlRedBall.Add('23');
     if  pal_24.Color= clred then StlRedBall.Add('24');
     if  pal_25.Color= clred then StlRedBall.Add('25');
     if  pal_26.Color= clred then StlRedBall.Add('26');
     if  pal_27.Color= clred then StlRedBall.Add('27');
     if  pal_28.Color= clred then StlRedBall.Add('28');
     if  pal_29.Color= clred then StlRedBall.Add('29');
     if  pal_30.Color= clred then StlRedBall.Add('30');
     if  pal_31.Color= clred then StlRedBall.Add('31');
     if  pal_32.Color= clred then StlRedBall.Add('32');
     if  pal_33.Color= clred then StlRedBall.Add('33');

     if  pal_001.Color= clblue then StlBluBall.Add('1');
     if  pal_002.Color= clblue then StlBluBall.Add('2');
     if  pal_003.Color= clblue then StlBluBall.Add('3');
     if  pal_004.Color= clblue then StlBluBall.Add('4');
     if  pal_005.Color= clblue then StlBluBall.Add('5');
     if  pal_006.Color= clblue then StlBluBall.Add('6');
     if  pal_007.Color= clblue then StlBluBall.Add('7');
     if  pal_008.Color= clblue then StlBluBall.Add('8');
     if  pal_009.Color= clblue then StlBluBall.Add('9');
     if  pal_010.Color= clblue then StlBluBall.Add('10');
     if  pal_011.Color= clblue then StlBluBall.Add('11');
     if  pal_012.Color= clblue then StlBluBall.Add('12');
     if  pal_013.Color= clblue then StlBluBall.Add('13');
     if  pal_014.Color= clblue then StlBluBall.Add('14');
     if  pal_015.Color= clblue then StlBluBall.Add('15');
     if  pal_016.Color= clblue then StlBluBall.Add('16');

     if   stlredball.Count >5
     then begin
          if stlbluball.count>0
          then begin
               for i:=0 to stlbluball.Count -1 do
               begin
                    for a1:=0 to stlredball.Count-1  do
                       for a2:=a1+1 to stlredball.Count-1 do
                          for a3:=a2+1 to stlredball.Count-1 do
                             for a4:=a3+1 to stlredball.Count-1 do
                                for a5:=a4+1 to stlredball.Count-1 do
                                    for a6:=a5+1 to stlredball.Count-1 do
                                    begin
                                         b1:=StrToInt(Trim(stlredball.Strings[a1]));
                                         b2:=StrToInt(Trim(stlredball.Strings[a2]));
                                         b3:=StrToInt(Trim(stlredball.Strings[a3]));
                                         b4:=StrToInt(Trim(stlredball.Strings[a4]));
                                         b5:=StrToInt(Trim(stlredball.Strings[a5]));
                                         b6:=StrToInt(Trim(stlredball.Strings[a6]));

                                         BolAddFlag:=True;
                                         if BolAddFlag then
                                         begin
                                              if chk_01.Checked
                                              then begin
                                                   if (b1<StrToInt(cmb_001.Items.Strings[cmb_001.ItemIndex]))
                                                   or (b1>StrToInt(cmb_002.Items.Strings[cmb_002.ItemIndex]))
                                                   then begin
                                                        BolAddFlag:=false;
                                                   end;
                                                   if (b1=StrToInt(cmb_001.Items.Strings[cmb_001.ItemIndex]))
                                                   or (b1=StrToInt(cmb_002.Items.Strings[cmb_002.ItemIndex]))
                                                   then begin
                                                        BolAddFlag:=True;
                                                   end;
                                              end;
                                         end;

                                         if BolAddFlag then
                                         begin
                                              if chk_02.Checked
                                              then begin
                                                   if (b6<StrToInt(cmb_003.Items.Strings[cmb_003.ItemIndex]))
                                                   or (b6>StrToInt(cmb_004.Items.Strings[cmb_004.ItemIndex]))
                                                   then begin
                                                        BolAddFlag:=false;
                                                   end;
                                              end;
                                         end;

                                         if BolAddFlag then
                                         begin
                                              intSum:=0;
                                              if chk_03.Checked
                                              then begin
                                                   intSum:=b1+b2+b3+b4+b5+b6;
                                                   if (intsum<StrToInt(cmb_005.Items.Strings[cmb_005.ItemIndex]))
                                                   or (intsum>StrToInt(cmb_006.Items.Strings[cmb_006.ItemIndex]))
                                                   then begin
                                                        BolAddFlag:=false;
                                                   end;
                                                   if (intsum=StrToInt(cmb_005.Items.Strings[cmb_005.ItemIndex]))
                                                   or (intsum=StrToInt(cmb_006.Items.Strings[cmb_006.ItemIndex]))
                                                   then begin
                                                        BolAddFlag:=True;
                                                   end;
                                              end;
                                         end;

                                         if BolAddFlag then
                                         begin
                                              intCount:=0;
                                              if chk_04.Checked
                                              then begin
                                                   if odd(StrToInt(Trim(stlredball.Strings[a1]))) then intCount:=intCount+1;
                                                   if odd(StrToInt(Trim(stlredball.Strings[a2]))) then intCount:=intCount+1;
                                                   if odd(StrToInt(Trim(stlredball.Strings[a3]))) then intCount:=intCount+1;
                                                   if odd(StrToInt(Trim(stlredball.Strings[a4]))) then intCount:=intCount+1;
                                                   if odd(StrToInt(Trim(stlredball.Strings[a5]))) then intCount:=intCount+1;
                                                   if odd(StrToInt(Trim(stlredball.Strings[a6]))) then intCount:=intCount+1;

                                                   if (intCount<StrToInt(cmb_007.Items.Strings[cmb_007.ItemIndex]))
                                                   or (intCount>StrToInt(cmb_008.Items.Strings[cmb_008.ItemIndex]))
                                                   then begin
                                                        BolAddFlag:=false;
                                                   end;
                                                   if (intCount=StrToInt(cmb_007.Items.Strings[cmb_007.ItemIndex]))
                                                   or (intCount=StrToInt(cmb_008.Items.Strings[cmb_008.ItemIndex]))
                                                   then begin
                                                        BolAddFlag:=True;
                                                   end;
                                              end;
                                         end;

                                         if BolAddFlag then
                                         begin
                                              intCount:=0;
                                              if chk_05.Checked
                                              then begin
                                                   if odd(StrToInt(Trim(stlredball.Strings[a1])))=false then intCount:=intCount+1;
                                                   if odd(StrToInt(Trim(stlredball.Strings[a2])))=false then intCount:=intCount+1;
                                                   if odd(StrToInt(Trim(stlredball.Strings[a3])))=false then intCount:=intCount+1;
                                                   if odd(StrToInt(Trim(stlredball.Strings[a4])))=false then intCount:=intCount+1;
                                                   if odd(StrToInt(Trim(stlredball.Strings[a5])))=false then intCount:=intCount+1;
                                                   if odd(StrToInt(Trim(stlredball.Strings[a6])))=false then intCount:=intCount+1;
                                                   if (intCount<StrToInt(cmb_009.Items.Strings[cmb_009.ItemIndex]))
                                                   or (intCount>StrToInt(cmb_010.Items.Strings[cmb_010.ItemIndex]))
                                                   then begin
                                                        BolAddFlag:=false;
                                                   end;
                                                   if (intCount=StrToInt(cmb_009.Items.Strings[cmb_009.ItemIndex]))
                                                   or (intCount=StrToInt(cmb_010.Items.Strings[cmb_010.ItemIndex]))
                                                   then begin
                                                        BolAddFlag:=True;
                                                   end;

                                             end;
                                         end;

                                         if BolAddFlag then
                                         begin
                                              intCount:=0;
                                              if chk_06.Checked
                                              then begin
                                                   if (strtoint(Trim(stlredball.Strings[a2]))-strtoint(Trim(stlredball.Strings[a1])))=1 then intCount:=intCount+1;
                                                   if (strtoint(Trim(stlredball.Strings[a3]))-strtoint(Trim(stlredball.Strings[a2])))=1 then intCount:=intCount+1;
                                                   if (strtoint(Trim(stlredball.Strings[a4]))-strtoint(Trim(stlredball.Strings[a3])))=1 then intCount:=intCount+1;
                                                   if (strtoint(Trim(stlredball.Strings[a5]))-strtoint(Trim(stlredball.Strings[a4])))=1 then intCount:=intCount+1;
                                                   if (strtoint(Trim(stlredball.Strings[a6]))-strtoint(Trim(stlredball.Strings[a5])))=1 then intCount:=intCount+1;

                                                   if (intCount<StrToInt(cmb_011.Items.Strings[cmb_011.ItemIndex]))
                                                   or (intCount>StrToInt(cmb_012.Items.Strings[cmb_012.ItemIndex]))
                                                   then begin
                                                        BolAddFlag:=false;
                                                   end;
                                                   if (intCount=StrToInt(cmb_011.Items.Strings[cmb_011.ItemIndex]))
                                                   or (intCount=StrToInt(cmb_012.Items.Strings[cmb_012.ItemIndex]))
                                                   then begin
                                                        BolAddFlag:=True;
                                                   end;
                                              end;
                                         end;


//******************************************************************************//

                                         {if BolAddFlag then
                                         begin
                                              if b1<3 then BolAddFlag:=False;
                                         end;

                                         if BolAddFlag then
                                         begin
                                              if b6>29 then BolAddFlag:=False;
                                         end;

                                         if BolAddFlag then
                                         begin
                                              if StrToInt(Trim(stlredball.Strings[a1]))>14 then BolAddFlag:=False;
                                              if StrToInt(Trim(stlredball.Strings[a2]))>21 then BolAddFlag:=False;
                                              if StrToInt(Trim(stlredball.Strings[a3]))>27 then BolAddFlag:=False;
                                         end;

                                         if BolAddFlag then
                                         begin
                                              intSum:=0;
                                              intSum:=b1+b2+b3+b4+b5+b6;
                                              if (intsum<100) or (intsum>115)then    BolAddFlag:=false;
                                         end; }

                                         if BolAddFlag then
                                         begin
                                              intCount:=0;
                                              if odd(StrToInt(Trim(stlredball.Strings[a1])))=false then intCount:=intCount+1;
                                              if odd(StrToInt(Trim(stlredball.Strings[a2])))=false then intCount:=intCount+1;
                                              if odd(StrToInt(Trim(stlredball.Strings[a3])))=false then intCount:=intCount+1;
                                              if odd(StrToInt(Trim(stlredball.Strings[a4])))=false then intCount:=intCount+1;
                                              if odd(StrToInt(Trim(stlredball.Strings[a5])))=false then intCount:=intCount+1;
                                              if odd(StrToInt(Trim(stlredball.Strings[a6])))=false then intCount:=intCount+1;
//                                              if intCount<>2 then   BolAddFlag:=False;
                                              if intCount<>3 then   BolAddFlag:=False;
                                         end;

                                         if BolAddFlag then
                                         begin
                                              intCount:=0;
                                              if(b1=1)or(b1=2)or(b1=7)or(b1=15)or(b1=19)or(b1=20) then  intCount:=intCount+1;
                                              if(b2=1)or(b2=2)or(b2=7)or(b2=15)or(b2=19)or(b2=20) then  intCount:=intCount+1;
                                              if(b3=1)or(b3=2)or(b3=7)or(b3=15)or(b3=19)or(b3=20) then  intCount:=intCount+1;
                                              if(b4=1)or(b4=2)or(b4=7)or(b4=15)or(b4=19)or(b4=20) then  intCount:=intCount+1;
                                              if(b5=1)or(b5=2)or(b5=7)or(b5=15)or(b5=19)or(b5=20) then  intCount:=intCount+1;
                                              if(b6=1)or(b6=2)or(b6=7)or(b6=15)or(b6=19)or(b6=20) then  intCount:=intCount+1;
                                              if intCount>2  then   BolAddFlag:=false;
                                         end;

                                         if BolAddFlag then
                                         begin
                                              intCount:=0;
                                              if (strtoint(Trim(stlredball.Strings[a2]))-strtoint(Trim(stlredball.Strings[a1])))=1 then
                                                intCount:=intCount+1;
                                              if (strtoint(Trim(stlredball.Strings[a3]))-strtoint(Trim(stlredball.Strings[a2])))=1 then
                                                intCount:=intCount+1;
                                              if (strtoint(Trim(stlredball.Strings[a4]))-strtoint(Trim(stlredball.Strings[a3])))=1 then
                                                intCount:=intCount+1;
                                              if (strtoint(Trim(stlredball.Strings[a5]))-strtoint(Trim(stlredball.Strings[a4])))=1 then
                                                intCount:=intCount+1;
                                              if (strtoint(Trim(stlredball.Strings[a6]))-strtoint(Trim(stlredball.Strings[a5])))=1 then
                                                intCount:=intCount+1;
                                              if intCount>1  then   BolAddFlag:=false;
                                         end;

//******************************************************************************//

                                         if BolAddFlag
                                         then begin
                                               intIndex:=intIndex+1;
                                               strTemp:='';
                                               if length(Trim(stlredball.Strings[a1]))=1
                                               then
                                                    StrTemp:=' '+stlredball.Strings[a1]
                                               else
                                                    StrTemp:=stlredball.Strings[a1];

                                               if length(Trim(stlredball.Strings[a2]))=1
                                               then
                                                    StrTemp:=StrTemp+'  '+stlredball.Strings[a2]
                                               else
                                                    StrTemp:=StrTemp+' '+stlredball.Strings[a2];

                                               if length(Trim(stlredball.Strings[a3]))=1
                                               then
                                                    StrTemp:=StrTemp+'  '+stlredball.Strings[a3]
                                               else
                                                    StrTemp:=StrTemp+' '+stlredball.Strings[a3];

                                               if length(Trim(stlredball.Strings[a4]))=1
                                               then
                                                    StrTemp:=StrTemp+'  '+stlredball.Strings[a4]
                                               else
                                                    StrTemp:=StrTemp+' '+stlredball.Strings[a4];

                                               if length(Trim(stlredball.Strings[a5]))=1
                                               then
                                                    StrTemp:=StrTemp+'  '+stlredball.Strings[a5]
                                               else
                                                    StrTemp:=StrTemp+' '+stlredball.Strings[a5];

                                               if length(Trim(stlredball.Strings[a6]))=1
                                               then
                                                    StrTemp:=StrTemp+'  '+stlredball.Strings[a6]
                                               else
                                                    StrTemp:=StrTemp+' '+stlredball.Strings[a6];

                                               if length(Trim(stlbluball.Strings[i]))=1
                                               then
                                                    StrTemp:=StrTemp+' +  '+stlbluball.Strings[i]
                                               else
                                                    StrTemp:=StrTemp+' + '+stlbluball.Strings[i];

                                               StlResult.Add(IntToStr(intIndex)+'='+StrTemp);
                                         end;     
                                    end;
               end;
          end
          else begin
               Application.MessageBox(pchar('请选择蓝球!'),'提示',MB_OK+MB_IconInformation);
          end;
     end
     else begin
               Application.MessageBox(pchar('请选择红球!'),'提示',MB_OK+MB_IconInformation);
     end;
     VLE_RES.Strings:=StlResult;
     Lbl_Res.Caption:=inttostr(VLE_RES.RowCount-1);
end;

procedure TMain.N8Click(Sender: TObject);
begin
     try  about.Form2.ShowModal;except end;
end;

procedure TMain.N9Click(Sender: TObject);
var
     strFileName:String;
begin
     strFileName:=CStrAbsoPath+'bin\help.chm';
     try  shellexecute(0, 'open', pchar(strFileName), nil, nil, sw_shownormal) ; except  end;
end;

procedure TMain.N10Click(Sender: TObject);
begin
     try  hezuo.Form3.ShowModal ;except end;  
end;

procedure TMain.ToolButton7Click(Sender: TObject);
begin
     N9Click(nil);
end;

procedure TMain.N51Click(Sender: TObject);
var
     StrICO:String;
     StlResult:TStrings;
begin
     StlResult:=TStringList.Create;
     StlResult:=VLE_RES.Strings;
     with dsave do
     begin
          Filter := '双色球投注结果(*.ssr)|*.ssr';
          Title  := '保存投注结果';
          if not Execute then Exit;
          StrICO:=copy(dsave.FileName,length(dsave.FileName)-3,4);
          StrICO:=lowercase(StrICO);
          if StrICO='.ssr'
          then begin
               StlResult.SaveToFile(dsave.filename);
          end
          else
               StlResult.SaveToFile(dsave.FileName+'.ssr');
     end;
end;

procedure TMain.N52Click(Sender: TObject);
var
     StlResult:TStrings;
begin
     StlResult:=TStringList.Create;
     with dopen do
     begin
          Filter := '双色球投注结果(*.ssr)|*.ssr';
          Title  := '调出投注结果';
          if not Execute then Exit;
          if(copy(dopen.FileName,length(dopen.FileName)-3,1)='.')and (UpperCase(copy(dopen.FileName,length(dopen.FileName)-2,3))='SSR') then
               StlResult.LoadFromFile(dopen.FileName)
          else
               Application.MessageBox(pchar('您导入的文件不是一个有效的投注结果文件(*.ssr)!'),'提示',MB_OK+MB_IconInformation);
     end;
     VLE_RES.Strings.Clear;
     VLE_RES.Strings:=StlResult;
     Lbl_Res.Caption:=inttostr(VLE_RES.RowCount-1);
     freeandnil(StlResult);
end;

procedure TMain.N70Click(Sender: TObject);
begin
     if VLE_RES.RowCount>2
     then begin
          try VLE_RES.DeleteRow(VLE_RES.Row);except end;
          Lbl_Res.Caption:=inttostr(VLE_RES.RowCount-1);
     end;
end;

procedure TMain.N58Click(Sender: TObject);
begin
     VLE_RES.Strings.Clear;
end;

procedure TMain.N25Click(Sender: TObject);
var
     StrICO,StrTemp,StrTempBlue:String;
     StlResult,Stl_1:TStrings;
     i,count:Integer;
begin
     StlResult:=TStringList.Create;
     Stl_1:=TStringList.Create;     
     for i:=0 to VLE_RES.Strings.Count -1 do
     begin
          StrTemp:=VLE_RES.Strings[i];
          StrTempBlue:=Trim(Copy(StrTemp,Pos('+',StrTemp)+1,length(StrTemp)));
          StrTemp:=copy(StrTemp,pos('=',StrTemp)+1,Pos('+',StrTemp)-3);
          StrTemp:=StringReplace(StrTemp,' ','_',[rfReplaceAll]);
          Stl_1.Clear;
          Stl_1:=splitstring(StrTemp,'_');

          StrTemp:=StringReplace(StrTemp,' ','_',[rfReplaceAll]);
          StrTemp:='';
          if length(Trim(stl_1[0]))=1
          then  StrTemp:='0'+stl_1[0]
          else  StrTemp:=stl_1[0];
          if length(Trim(stl_1[1]))=1
          then  StrTemp:=StrTemp+' 0'+stl_1[1]
          else  StrTemp:=StrTemp+' '+stl_1[1];
          if length(Trim(stl_1[2]))=1
          then  StrTemp:=StrTemp+' 0'+stl_1[2]
          else  StrTemp:=StrTemp+' '+stl_1[2];
          if length(Trim(stl_1[3]))=1
          then  StrTemp:=StrTemp+' 0'+stl_1[3]
          else  StrTemp:=StrTemp+' '+stl_1[3];
          if length(Trim(stl_1[4]))=1
          then  StrTemp:=StrTemp+' 0'+stl_1[4]
          else  StrTemp:=StrTemp+' '+stl_1[4];
          if length(Trim(stl_1[5]))=1
          then  StrTemp:=StrTemp+' 0'+stl_1[5]
          else  StrTemp:=StrTemp+' '+stl_1[5];

          if length(Trim(StrTempBlue))=1
          then  StrTemp:=StrTemp+' + 0'+StrTempBlue
          else  StrTemp:=StrTemp+' + '+StrTempBlue;

          StlResult.Add(StrTemp);

          {if i<10 then
          StlResult.Add('000000'+IntToStr(i)+'  :  '+StrTemp)
          else
          if (100>i)and(i>10) then
          StlResult.Add('00000'+IntToStr(i)+'  :  '+StrTemp)
          else
          if (1000>i)and(i>100) then
          StlResult.Add('0000'+IntToStr(i)+'  :  '+StrTemp)
          else
          if (10000>i)and(i>1000) then
          StlResult.Add('000'+IntToStr(i)+'  :  '+StrTemp)
          else
          if (100000>i)and(i>10000) then
          StlResult.Add('00'+IntToStr(i)+'  :  '+StrTemp)
          else
          if (1000000>i)and(i>100000) then
          StlResult.Add('0'+IntToStr(i)+'  :  '+StrTemp)
          else
          if (i=10) then
          StlResult.Add('00000'+IntToStr(i)+'  :  '+StrTemp)
          else
          if (i=100) then
          StlResult.Add('0000'+IntToStr(i)+'  :  '+StrTemp)
          else
          if (i=1000) then
          StlResult.Add('000'+IntToStr(i)+'  :  '+StrTemp)
          else
          if (i=10000) then
          StlResult.Add('00'+IntToStr(i)+'  :  '+StrTemp)
          else
          if (i=100000) then
          StlResult.Add('0'+IntToStr(i)+'  :  '+StrTemp)
          else
          if (i=1000000) then
          StlResult.Add(IntToStr(i)+'  :  '+StrTemp)
          else
          }
         // StlResult.Add(IntToStr(i)+'  :  '+StrTemp);

     end;



     with dsave do
     begin
          Filter := '双色球投注结果(*.txt)|*.txt';
          Title  := '保存投注结果';
          if not Execute then Exit;
          StrICO:=copy(dsave.FileName,length(dsave.FileName)-3,4);
          StrICO:=lowercase(StrICO);
          if StrICO='.txt'
          then begin
               StlResult.SaveToFile(dsave.filename);
          end
          else
               StlResult.SaveToFile(dsave.FileName+'.txt');
     end;
end;

procedure TMain.N69Click(Sender: TObject);
var
     Stl_1,Stl_2,Stl_3:TStrings;
     k,i:integer;
     StrTemp:String;
begin
     Stl_1:=TStringList.Create;
     Stl_2:=TStringList.Create;
     Stl_2:=TStringList.Create;
     Stl_1:=VLE_RES.Strings;
     with dopen do
     begin
          Filter := '投注结果(*.ssr)|*.ssr';
          Title  := '调出投注结果';
          if not Execute then Exit;
          if (copy(dopen.FileName,length(dopen.FileName)-3,1)='.') then
               Stl_2.LoadFromFile(dopen.FileName);
     end;
     k:=0;
     for i:=0 to Stl_1.Count-1 do
     begin
          k:=k+1;
          StrTemp:=Stl_1.Strings[i];
          StrTemp:=trim(copy(StrTemp,pos('=',StrTemp)+1,length(StrTemp)));
          Stl_2.Add(inttostr(k)+'='+StrTemp);
     end;
     for i:=0 to Stl_2.Count-1 do
     begin
          k:=k+1;
          StrTemp:=Stl_2.Strings[i];
          StrTemp:=trim(copy(StrTemp,pos('=',StrTemp)+1,length(StrTemp)));
          Stl_2.Add(inttostr(k)+'='+StrTemp);
     end;
     VLE_RES.Strings.Clear;
     VLE_RES.Strings:=Stl_2;
     Lbl_Res.Caption:=inttostr(VLE_RES.RowCount-1);
     freeandnil(Stl_2);
end;

procedure TMain.Spb_okClick(Sender: TObject);
var
     StrTemp,StrErrInfo:string;
     i:integer;
     bolFlag:boolean;
begin
     bolFlag:=false;
     StrTemp:=trim(Edt_No.Text);
     if(length(StrTemp)>0) then
     begin
          setlength(StrTemp,length(StrTemp));
          for i:=1 to length(StrTemp) do
          begin
               bolFlag:=false;
               if StrTemp[i]='0' then    bolFlag:=true;
               if StrTemp[i]='1' then    bolFlag:=true;
               if StrTemp[i]='2' then    bolFlag:=true;
               if StrTemp[i]='3' then    bolFlag:=true;
               if StrTemp[i]='4' then    bolFlag:=true;
               if StrTemp[i]='5' then    bolFlag:=true;
               if StrTemp[i]='6' then    bolFlag:=true;
               if StrTemp[i]='7' then    bolFlag:=true;
               if StrTemp[i]='8' then    bolFlag:=true;
               if StrTemp[i]='9' then    bolFlag:=true;

               if bolFlag=false
               then begin
                    StrErrInfo:='非法字符'+''''+StrTemp[i]+'''';
                    Application.MessageBox(pchar(StrErrInfo),'错误提示',MB_OK+MB_IconInformation);
               end;
          end;
          if bolFlag
          then begin
               if (strtoint(trim(Edt_No.Text))>1)
               then begin
                    Cmb_No.Clear;
                    for i:=1 to strtoint(trim(StrTemp)) do
                    begin
                         Cmb_No.Items.Add(inttostr(i));
                    end;
                    Cmb_No.Enabled:=true;
                    Cmb_No.ItemIndex:=0;
               end;
          end;
     end;
end;

procedure TMain.N56Click(Sender: TObject);
var
     i,j,k,m,n:integer;
     StlResult:TStrings;
begin
     StlResult:=TStringList.Create;
     if VLE_RES.RowCount>2
     then begin
          m:=0;
          n:=0;
          j:=strtoint(trim(Edt_No.Text));
          k:=Cmb_No.ItemIndex+1;
          for i:=0 to VLE_RES.RowCount-2 do
          begin
               m:=m+1;
               n:=n+1;
               if (n=k) then   StlResult.Add(VLE_RES.Strings.Strings[i]);
               if(m=j)
               then begin
                 m:=0;
                 n:=0;
               end;
          end;
          VLE_RES.Strings.Clear;
          VLE_RES.Strings:=StlResult;
          Lbl_Res.Caption:=inttostr(VLE_RES.RowCount-1);
          freeandnil(StlResult);
     end;
end;

procedure TMain.ToolButton6Click(Sender: TObject);
begin
     try   buyinfo.buy.ShowModal;except end;
end;

procedure TMain.N20Click(Sender: TObject);
begin
     ToolButton6Click(nil);
end;


procedure TMain.ToolButton8Click(Sender: TObject);
begin
     close();
end;

procedure TMain.N15Click(Sender: TObject);
begin
     close();
end;

procedure TMain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     VLE_RES.Strings.Clear;
     web.Free;
     postquitmessage(wm_quit);
end;

procedure TMain.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
     if Application.MessageBox('是否要退出系统?','提示',MB_OKcancel+MB_IconInformation)=mrcancel
     then begin
          canclose:=false;
     end
     else
     begin
          VLE_RES.Strings.Clear;
          web.Free;
          PostQuitMessage(WM_Quit);
     end;
end;

procedure TMain.chk_01Click(Sender: TObject);
begin
     if(chk_01.Checked)
     then begin
          cmb_001.Enabled:=true;
          cmb_002.Enabled:=true;
     end
     else
     begin
          cmb_001.Enabled:=false;
          cmb_002.Enabled:=false;
     end;
end;

procedure TMain.chk_02Click(Sender: TObject);
begin
     if(chk_02.Checked)
     then begin
          cmb_003.Enabled:=true;
          cmb_004.Enabled:=true;
     end
     else
     begin
          cmb_003.Enabled:=false;
          cmb_004.Enabled:=false;
     end;
end;

procedure TMain.chk_03Click(Sender: TObject);
begin
     if(chk_03.Checked)
     then begin
          cmb_005.Enabled:=true;
          cmb_006.Enabled:=true;
     end
     else
     begin
          cmb_005.Enabled:=false;
          cmb_006.Enabled:=false;
     end;
end;

procedure TMain.chk_04Click(Sender: TObject);
begin
     if(chk_04.Checked)
     then begin
          cmb_007.Enabled:=true;
          cmb_008.Enabled:=true;
     end
     else
     begin
          cmb_007.Enabled:=false;
          cmb_008.Enabled:=false;
     end;
end;

procedure TMain.chk_05Click(Sender: TObject);
begin
     if(chk_05.Checked)
     then begin
          cmb_009.Enabled:=true;
          cmb_010.Enabled:=true;
     end
     else
     begin
          cmb_009.Enabled:=false;
          cmb_010.Enabled:=false;
     end;
end;

procedure TMain.chk_06Click(Sender: TObject);
begin
     if(chk_06.Checked)
     then begin
          cmb_011.Enabled:=true;
          cmb_012.Enabled:=true;
     end
     else
     begin
          cmb_011.Enabled:=false;
          cmb_012.Enabled:=false;
     end;
end;

function checkvalue(Nom:Integer):boolean;
var
     temp1,temp:String;
     StrTemp_1,StrTemp_2,StrTempRed_1,StrTempBlue_1,StrTempRed_2,StrTempBlue_2:String;
     Stl_1,StlCheck_1,StlCheck_2:TStrings;
     i,j,k,m,n,intCount:integer;
     addflag:boolean;
begin
     Stl_1:=TStringList.Create;
     Stl_1:=main.VLE_RES.Strings;

     if Stl_1.Count >1 then
     begin
          i:=0;
          k:=1;
          while i<>Stl_1.Count do
          begin
               if k<Stl_1.Count then
               begin

                     StlCheck_1:=TStringList.Create;
                     StlCheck_2:=TStringList.Create;

                     StrTemp_1:=Stl_1.Strings[i];
                     StrTemp_2:=Stl_1.Strings[k];

                     StrTempBlue_1:=Trim(Copy(StrTemp_1,Pos('+',StrTemp_1)+1,length(StrTemp_1)));
                     StrTempRed_1:=Copy(StrTemp_1,Pos('=',StrTemp_1)+1,Pos('+',StrTemp_1)-3);
                     StrTempRed_1:=StringReplace(StrTempRed_1,' ','_',[rfReplaceAll]);
                     StlCheck_1.Clear;
                     StlCheck_1:=splitstring(StrTempRed_1,'_');


                     StrTempBlue_2:=Trim(Copy(StrTemp_2,Pos('+',StrTemp_2)+1,length(StrTemp_2)));
                     StrTempRed_2:=Copy(StrTemp_2,Pos('=',StrTemp_2)+1,Pos('+',StrTemp_2)-3);
                     StrTempRed_2:=StringReplace(StrTempRed_2,' ','_',[rfReplaceAll]);
                     StlCheck_2.Clear;
                     StlCheck_2:=splitstring(StrTempRed_2,'_');

                     intCount:=0;
                     for n:=0 to 5 do
                     begin
                          for m:=0 to 5 do
                          begin
                               if (Trim(StlCheck_1[n])<>'') and (Trim(StlCheck_1[n])<>'') then
                               begin
                                    if StrToInt(StlCheck_1[n])=StrToInt(StlCheck_2[m]) then
                                        intCount:=intCount+1;
                               end;
                          end;
                     end;

                     FreeAndNil(StlCheck_1);
                     FreeAndNil(StlCheck_2);

                     if (intCount=Nom) or (intCount>Nom) then
                     begin
                          Stl_1.Delete(k);
                     end
                     else
                         k:=k+1;

               end;

               if k=Stl_1.count  then
               begin
                    i:=i+1;
//                  Main.StatusBar1.Panels[1].Text:=IntToStr(i);
                    k:=i+1;
               end;
           end;
     end;
     Main.StatusBar1.Panels[1].Text:='';   
     Main.Lbl_Res.Caption:=inttostr(Main.VLE_RES.RowCount-1);
end;

procedure TMain.N13121Click(Sender: TObject);
begin
     checkvalue(5);
end;

procedure TMain.N13111Click(Sender: TObject);
begin
     checkvalue(4);
end;


procedure TMain.N641Click(Sender: TObject);
begin
     checkvalue(3);
end;


procedure TMain.N61Click(Sender: TObject);
var
     StlData:TStrings;
     StrICN,StrData:String;
begin
     StlData:=TStringList.Create;
     if chk_01.Checked
     then StrData:='1=1'
     else StrData:='1=0';

     StlData.Add(StrData);
     if chk_02.Checked
     then StrData:='2=1'
     else StrData:='2=0';

     StlData.Add(StrData);
     if chk_03.Checked
     then StrData:='3=1'
     else StrData:='3=0';

     StlData.Add(StrData);
     if chk_04.Checked
     then StrData:='4=1'
     else StrData:='4=0';

     StlData.Add(StrData);
     if chk_05.Checked
     then StrData:='5=1'
     else StrData:='5=0';

     StlData.Add(StrData);
     if chk_06.Checked
     then StrData:='6=1'
     else StrData:='6=0';

     StlData.Add(StrData);

     StrData:='11='+inttostr(cmb_001.ItemIndex);
     StlData.Add(StrData);
     StrData:='12='+inttostr(cmb_002.ItemIndex);
     StlData.Add(StrData);

     StrData:='13='+inttostr(cmb_003.ItemIndex);
     StlData.Add(StrData);
     StrData:='14='+inttostr(cmb_004.ItemIndex);
     StlData.Add(StrData);

     StrData:='15='+inttostr(cmb_005.ItemIndex);
     StlData.Add(StrData);
     StrData:='16='+inttostr(cmb_006.ItemIndex);
     StlData.Add(StrData);

     StrData:='17='+inttostr(cmb_007.ItemIndex);
     StlData.Add(StrData);
     StrData:='18='+inttostr(cmb_008.ItemIndex);
     StlData.Add(StrData);

     StrData:='19='+inttostr(cmb_009.ItemIndex);
     StlData.Add(StrData);
     StrData:='20='+inttostr(cmb_010.ItemIndex);
     StlData.Add(StrData);

     StrData:='21='+inttostr(cmb_011.ItemIndex);
     StlData.Add(StrData);
     StrData:='22='+inttostr(cmb_012.ItemIndex);
     StlData.Add(StrData);

     with dsave do
     begin
          Filter := '双色球过滤方案(*.sst)|*.sst';
          Title := '保存过滤方案';
          if not Execute then Exit;
          StrICN:=copy(dsave.FileName,length(dsave.FileName)-3,4);
          StrICN:=lowercase(StrICN);
          if(StrICN='.sst')
          then StlData.SaveToFile(dsave.filename)
          else StlData.SaveToFile(dsave.FileName+'.sst');
     end;
     freeandnil(StlData);
end;

procedure TMain.N62Click(Sender: TObject);
var
     StlData:TStrings;
     i:integer;
begin
     StlData:=TStringList.Create;
     with dopen do
     begin
          Filter := '双色球过滤方案(*.sst)|*.sst';
          Title := '导入过滤方案';
          if not Execute then Exit;
          if(copy(dopen.FileName,length(dopen.FileName)-3,1)='.') and (UpperCase(copy(dopen.FileName,length(dopen.FileName)-2,3))='SST') then
               StlData.LoadFromFile(dopen.FileName)
          else
               Application.MessageBox(pchar('您导入的文件不是一个有效的过滤方案(*.sst)!'),'提示',MB_OK+MB_IconInformation);
     end;

     if(StlData.Count>0)
     then begin
          if StlData.Count=18
          then begin
               if StlData.Values[StlData.Names[0]]='1'
               then chk_01.Checked:=true
               else chk_01.Checked:=false;

               if StlData.Values[StlData.Names[1]]='1'
               then chk_02.Checked:=true
               else chk_02.Checked:=false;

               if StlData.Values[StlData.Names[2]]='1'
               then chk_03.Checked:=true
               else chk_03.Checked:=false;

               if StlData.Values[StlData.Names[3]]='1'
               then chk_04.Checked:=true
               else chk_04.Checked:=false;
               
               if StlData.Values[StlData.Names[4]]='1'
               then chk_05.Checked:=true
               else chk_05.Checked:=false;

               if StlData.Values[StlData.Names[5]]='1'
               then chk_06.Checked:=true
               else chk_06.Checked:=false;

               cmb_001.ItemIndex:=strtoint(StlData.Values[StlData.Names[6]]);
               cmb_002.ItemIndex:=strtoint(StlData.Values[StlData.Names[7]]);
               cmb_003.ItemIndex:=strtoint(StlData.Values[StlData.Names[8]]);
               cmb_004.ItemIndex:=strtoint(StlData.Values[StlData.Names[9]]);
               cmb_005.ItemIndex:=strtoint(StlData.Values[StlData.Names[10]]);
               cmb_006.ItemIndex:=strtoint(StlData.Values[StlData.Names[11]]);
               cmb_007.ItemIndex:=strtoint(StlData.Values[StlData.Names[12]]);
               cmb_008.ItemIndex:=strtoint(StlData.Values[StlData.Names[13]]);
               cmb_009.ItemIndex:=strtoint(StlData.Values[StlData.Names[14]]);
               cmb_010.ItemIndex:=strtoint(StlData.Values[StlData.Names[15]]);
               cmb_011.ItemIndex:=strtoint(StlData.Values[StlData.Names[16]]);
               cmb_012.ItemIndex:=strtoint(StlData.Values[StlData.Names[17]]);
          end;
     end;
end;

procedure TMain.ToolButton5Click(Sender: TObject);
var
     StrFileName:String;
begin
     StrFileName:=CStrAbsoPath+'Update.exe';
     try
          shellexecute(0, 'open', pchar(StrFileName) , nil, nil, sw_shownormal) ;
     except
     end;
end;

procedure TMain.N30Click(Sender: TObject);
var
     StrFileName:String;
begin
     StrFileName:=CStrAbsoPath+'Update.exe';
     if mainflag
     then begin
     try
          shellexecute(0, 'open', pchar(StrFileName), nil, nil, sw_shownormal) ;
     except
     end;
     end
     else
          Application.MessageBox(pchar('对不起，本功能只对注册版软件提供!'),'提示信息',MB_OK+MB_IconInformation);
end;

procedure TMain.N34Click(Sender: TObject);
begin
     N30Click(nil);
end;

procedure TMain.N3Click(Sender: TObject);
begin
     try   editjg.Form1.ShowModal;except end;
end;

procedure TMain.N24Click(Sender: TObject);
var
     StrFilePath:String;
begin
     StrFilePath:=ExtractFilePath(ParamStr(0));
     StrFilePath:=StrFilePath+'INFBLottery.exe';
     try
          shellexecute(0, 'open', pchar(StrFilePath) , nil, nil, sw_shownormal) ;
     except
     end;
end;

procedure TMain.N18Click(Sender: TObject);
var
     StrFilePath:String;
begin
     StrFilePath:=ExtractFilePath(ParamStr(0));
     StrFilePath:=StrFilePath+'FBLottery.exe';
     try
          shellexecute(0, 'open', pchar(StrFilePath) , nil, nil, sw_shownormal) ;
     except
     end;
end;
procedure TMain.Button4Click(Sender: TObject);
var
     StlRedBall,StlBluBall,StlResult:TStrings;
     i,a1,a2,a3,a4,a5,a6,intSum,intCount,intIndex:integer;
     b1,b2,b3,b4,b5,b6:integer;
     StrTemp:String;
     BolAddFlag:boolean;
begin
     StlRedBall:=TStringList.Create;
      StlResult:=TStringList.Create;
     if  pal_01.Color= clred then StlRedBall.Add('1');
     if  pal_02.Color= clred then StlRedBall.Add('2');
     if  pal_03.Color= clred then StlRedBall.Add('3');
     if  pal_04.Color= clred then StlRedBall.Add('4');
     if  pal_05.Color= clred then StlRedBall.Add('5');
     if  pal_06.Color= clred then StlRedBall.Add('6');
     if  pal_07.Color= clred then StlRedBall.Add('7');
     if  pal_08.Color= clred then StlRedBall.Add('8');
     if  pal_09.Color= clred then StlRedBall.Add('9');
     if  pal_10.Color= clred then StlRedBall.Add('10');
     if  pal_11.Color= clred then StlRedBall.Add('11');
     if  pal_12.Color= clred then StlRedBall.Add('12');
     if  pal_13.Color= clred then StlRedBall.Add('13');
     if  pal_14.Color= clred then StlRedBall.Add('14');
     if  pal_15.Color= clred then StlRedBall.Add('15');
     if  pal_16.Color= clred then StlRedBall.Add('16');
     if  pal_17.Color= clred then StlRedBall.Add('17');
     if  pal_18.Color= clred then StlRedBall.Add('18');
     if  pal_19.Color= clred then StlRedBall.Add('19');
     if  pal_20.Color= clred then StlRedBall.Add('20');
     if  pal_21.Color= clred then StlRedBall.Add('21');
     if  pal_22.Color= clred then StlRedBall.Add('22');

     if   stlredball.Count >4
     then begin
          for a1:=0 to stlredball.Count-1  do
             for a2:=a1+1 to stlredball.Count-1 do
                for a3:=a2+1 to stlredball.Count-1 do
                   for a4:=a3+1 to stlredball.Count-1 do
                      for a5:=a4+1 to stlredball.Count-1 do
                      begin
                           b1:=StrToInt(Trim(stlredball.Strings[a1]));
                           b2:=StrToInt(Trim(stlredball.Strings[a2]));
                           b3:=StrToInt(Trim(stlredball.Strings[a3]));
                           b4:=StrToInt(Trim(stlredball.Strings[a4]));
                           b5:=StrToInt(Trim(stlredball.Strings[a5]));
                           BolAddFlag:=true;

//******************************************************************************//
{
                           if BolAddFlag then
                           begin
                                intsum:=0;
                                if (b1=1) or(b1=2) or(b1=5) or(b1=7) or(b1=12) then intsum:=intsum+1;
                                if (b2=1) or(b2=2) or(b2=5) or(b2=7) or(b2=12) then intsum:=intsum+1;
                                if (b3=1) or(b3=2) or(b3=5) or(b3=7) or(b3=12) then intsum:=intsum+1;
                                if (b4=1) or(b4=2) or(b4=5) or(b4=7) or(b4=12) then intsum:=intsum+1;
                                if (b5=1) or(b5=2) or(b5=5) or(b5=7) or(b5=12) then intsum:=intsum+1;
                                if (intsum=0) or (intsum>2) then  BolAddFlag:=false;

                           end;


                           if BolAddFlag then
                           begin
                                if StrToInt(Trim(stlredball.Strings[a1]))>11 then BolAddFlag:=False;
                                if StrToInt(Trim(stlredball.Strings[a2]))>17 then BolAddFlag:=False;
                                if StrToInt(Trim(stlredball.Strings[a5]))<13 then BolAddFlag:=False;
                           end;
                           if BolAddFlag then
                           begin
                                intSum:=0;
                                intSum:=b1+b2+b3+b4+b5+b6;
                                if (intsum<30) or (intsum>90)then    BolAddFlag:=false;
                           end;

                           if BolAddFlag then
                           begin
                                intCount:=0;
                                if odd(StrToInt(Trim(stlredball.Strings[a1])))=false then intCount:=intCount+1;
                                if odd(StrToInt(Trim(stlredball.Strings[a2])))=false then intCount:=intCount+1;
                                if odd(StrToInt(Trim(stlredball.Strings[a3])))=false then intCount:=intCount+1;
                                if odd(StrToInt(Trim(stlredball.Strings[a4])))=false then intCount:=intCount+1;
                                if odd(StrToInt(Trim(stlredball.Strings[a5])))=false then intCount:=intCount+1;
//                                if (intCount=0)or(intCount=1)or(intCount=4)or(intCount=5)  then   BolAddFlag:=False;
                                if intCount<>3   then   BolAddFlag:=False;
                           end;

                           if BolAddFlag then
                           begin
                                intCount:=0;
                                if (strtoint(Trim(stlredball.Strings[a2]))-strtoint(Trim(stlredball.Strings[a1])))=1 then
                                  intCount:=intCount+1;
                                if (strtoint(Trim(stlredball.Strings[a3]))-strtoint(Trim(stlredball.Strings[a2])))=1 then
                                  intCount:=intCount+1;
                                if (strtoint(Trim(stlredball.Strings[a4]))-strtoint(Trim(stlredball.Strings[a3])))=1 then
                                  intCount:=intCount+1;
                                if (strtoint(Trim(stlredball.Strings[a5]))-strtoint(Trim(stlredball.Strings[a4])))=1 then
                                  intCount:=intCount+1;
                                if (strtoint(Trim(stlredball.Strings[a6]))-strtoint(Trim(stlredball.Strings[a5])))=1 then
                                  intCount:=intCount+1;
                                if intCount>1  then   BolAddFlag:=false;
                           end;
}
//******************************************************************************//


                           {
                           intSum:=b1+b2+b3+b4+b5;
                           if (intsum<40) or(intsum>80)
                           then begin
                                BolAddFlag:=false;
                           end;
                           if (b2-b1=1)or (b3-b2=1) or (b4-b3=1) or(b5-b4=1) then
                                   BolAddFlag:=false;
                           }
//                           if b5<20   then  BolAddFlag:=false;
//                           if b1>2    then  boladdflag:=false;

                           if BolAddFlag
                           then begin
                                intIndex:=intIndex+1;
                                strTemp:='';
                                if length(Trim(stlredball.Strings[a1]))=1
                                then
                                     StrTemp:=' 0'+stlredball.Strings[a1]
                                else
                                     StrTemp:=' '+stlredball.Strings[a1];
                                if length(Trim(stlredball.Strings[a2]))=1
                                then
                                     StrTemp:=StrTemp+' 0'+stlredball.Strings[a2]
                                else
                                     StrTemp:=StrTemp+' '+stlredball.Strings[a2];
                                if length(Trim(stlredball.Strings[a3]))=1
                                then
                                     StrTemp:=StrTemp+' 0'+stlredball.Strings[a3]
                                else
                                     StrTemp:=StrTemp+' '+stlredball.Strings[a3];
                                if length(Trim(stlredball.Strings[a4]))=1
                                then
                                     StrTemp:=StrTemp+' 0'+stlredball.Strings[a4]
                                else
                                     StrTemp:=StrTemp+' '+stlredball.Strings[a4];
                                if length(Trim(stlredball.Strings[a5]))=1
                                then
                                     StrTemp:=StrTemp+' 0'+stlredball.Strings[a5]
                                else
                                     StrTemp:=StrTemp+' '+stlredball.Strings[a5];

                                StlResult.Add(IntToStr(intIndex)+'='+StrTemp);
                           end;
                      end;
     end;
     VLE_RES.Strings:=StlResult;
     Lbl_Res.Caption:=inttostr(VLE_RES.RowCount-1);
end;

procedure TMain.Button5Click(Sender: TObject);
var
     intNo,IntCount,IntCheck:Integer;
begin
     randomize;
     Panel17Click(nil);
     IntCount:=0;
     IntCheck:=StrToInt(Trim(Cmb_01.Items.Strings[Cmb_01.ItemIndex]));
     if intcheck>22 then
        intcheck:=22;
     while IntCheck<>IntCount do
     begin
           IntNo:=Random(23);
           case IntNo of
           1:
                if   pal_01.color<>clred
                then begin
                     pal_01.color:=clred;
                     IntCount:=IntCount+1;
                end;
           2:
                if   pal_02.color<>clred
                then begin
                     pal_02.color:=clred;
                     IntCount:=IntCount+1;
                end;
           3:
                if   pal_03.color<>clred
                then begin
                     pal_03.color:=clred;
                     IntCount:=IntCount+1;
                end;
           4:
                if   pal_04.color<>clred
                then begin
                     pal_04.color:=clred;
                     IntCount:=IntCount+1;
                end;
           5:
                if   pal_05.color<>clred
                then begin
                     pal_05.color:=clred;
                     IntCount:=IntCount+1;
                end;
           6:
                if   pal_06.color<>clred
                then begin
                     pal_06.color:=clred;
                     IntCount:=IntCount+1;
                end;
           7:
                if   pal_07.color<>clred
                then begin
                     pal_07.color:=clred;
                     IntCount:=IntCount+1;
                end;
           8:
                if   pal_08.color<>clred
                then begin
                     pal_08.color:=clred;
                     IntCount:=IntCount+1;
                end;
           9:
                if   pal_09.color<>clred
                then begin
                     pal_09.color:=clred;
                     IntCount:=IntCount+1;
                end;
           10:
                if   pal_10.color<>clred
                then begin
                     pal_10.color:=clred;
                     IntCount:=IntCount+1;
                end;
           11:
                if   pal_11.color<>clred
                then begin
                     pal_11.color:=clred;
                     IntCount:=IntCount+1;
                end;
           12:
                if   pal_12.color<>clred
                then begin
                     pal_12.color:=clred;
                     IntCount:=IntCount+1;
                end;
           13:
                if   pal_13.color<>clred
                then begin
                     pal_13.color:=clred;
                     IntCount:=IntCount+1;
                end;
           14:
                if   pal_14.color<>clred
                then begin
                     pal_14.color:=clred;
                     IntCount:=IntCount+1;
                end;
           15:
                if   pal_15.color<>clred
                then begin
                     pal_15.color:=clred;
                     IntCount:=IntCount+1;
                end;
           16:
                if   pal_16.color<>clred
                then begin
                     pal_16.color:=clred;
                     IntCount:=IntCount+1;
                end;
           17:
                if   pal_17.color<>clred
                then begin
                     pal_17.color:=clred;
                     IntCount:=IntCount+1;
                end;
           18:
                if   pal_18.color<>clred
                then begin
                     pal_18.color:=clred;
                     IntCount:=IntCount+1;
                end;
           19:
                if   pal_19.color<>clred
                then begin
                     pal_19.color:=clred;
                     IntCount:=IntCount+1;
                end;
           20:
                if   pal_20.color<>clred
                then begin
                     pal_20.color:=clred;
                     IntCount:=IntCount+1;
                end;
           21:
                if   pal_21.color<>clred
                then begin
                     pal_21.color:=clred;
                     IntCount:=IntCount+1;
                end;
           22:
                if   pal_22.color<>clred
                then begin
                     pal_22.color:=clred;
                     IntCount:=IntCount+1;
                end;
           end;
     end;
end;
function eecheckvalue(Nom:Integer):boolean;
var
     temp1,temp:String;
     StrTemp_1,StrTemp_2,StrTempRed_1,StrTempBlue_1,StrTempRed_2,StrTempBlue_2:String;
     Stl_1,StlCheck_1,StlCheck_2:TStrings;
     i,j,k,m,n,intCount:integer;
     addflag:boolean;
begin
     Stl_1:=TStringList.Create;
     Stl_1:=main.VLE_RES.Strings;

     if Stl_1.Count >1 then
     begin
          i:=0;
          k:=1;
          while i<>Stl_1.Count do
          begin
               if k<Stl_1.Count then
               begin

                     StlCheck_1:=TStringList.Create;
                     StlCheck_2:=TStringList.Create;

                     StrTemp_1:=Stl_1.Strings[i];
                     StrTemp_2:=Stl_1.Strings[k];

                     StrTempRed_1:=Copy(StrTemp_1,Pos('=',StrTemp_1)+1,length(StrTemp_1));
                     StrTempRed_1:=StringReplace(StrTempRed_1,' ','_',[rfReplaceAll]);
                     StlCheck_1.Clear;
                     StlCheck_1:=splitstring(StrTempRed_1,'_');

                     StrTempRed_2:=Copy(StrTemp_2,Pos('=',StrTemp_2)+1,length(StrTemp_2));
                     StrTempRed_2:=StringReplace(StrTempRed_2,' ','_',[rfReplaceAll]);
                     StlCheck_2.Clear;
                     StlCheck_2:=splitstring(StrTempRed_2,'_');

                     intCount:=0;
                     for n:=0 to 4 do
                     begin
                          for m:=0 to 4 do
                          begin
                               if (Trim(StlCheck_1[n])<>'') and (Trim(StlCheck_1[n])<>'') then
                               begin
                                    if StrToInt(StlCheck_1[n])=StrToInt(StlCheck_2[m]) then
                                        intCount:=intCount+1;
                               end;
                          end;
                     end;

                     FreeAndNil(StlCheck_1);
                     FreeAndNil(StlCheck_2);

                     if (intCount=Nom) or (intCount>Nom) then
                     begin
                          Stl_1.Delete(k);
                     end
                     else
                         k:=k+1;

               end;

               if k=Stl_1.count  then
               begin
                    i:=i+1;
                    k:=i+1;
               end;
           end;
     end;
     Main.StatusBar1.Panels[1].Text:='';   
     Main.Lbl_Res.Caption:=inttostr(Main.VLE_RES.RowCount-1);
end;

procedure TMain.Button6Click(Sender: TObject);
begin
     eecheckvalue(4);
end;

procedure TMain.Button7Click(Sender: TObject);
begin
     eecheckvalue(3);
end;

procedure TMain.Button8Click(Sender: TObject);
var
     StrRes:String;
     i,k:integer;
begin
     randomize;
     for i:=0 to 7 do
     begin
          k:=Random(10);
          StrRes:=StrRes+IntToStr(k);
     end;
     showmessage(StrRes);

end;

procedure TMain.N2251Click(Sender: TObject);
var
     StrICO,StrTemp,StrTempBlue:String;
     StlResult,Stl_1:TStrings;
     i,count:Integer;
begin
     StlResult:=TStringList.Create;
     Stl_1:=TStringList.Create;     
     for i:=0 to VLE_RES.Strings.Count -1 do
     begin
          StrTemp:=VLE_RES.Strings[i];
          StrTemp:=Trim(copy(StrTemp,pos('=',StrTemp)+1,length(StrTemp)));
          StrTemp:=StringReplace(StrTemp,' ','_',[rfReplaceAll]);
          Stl_1.Clear;
          Stl_1:=splitstring(StrTemp,'_');

          StrTemp:=StringReplace(StrTemp,' ','_',[rfReplaceAll]);
          StrTemp:='';
          if length(Trim(stl_1[0]))=1
          then  StrTemp:='0'+stl_1[0]
          else  StrTemp:=stl_1[0];
          if length(Trim(stl_1[1]))=1
          then  StrTemp:=StrTemp+' 0'+stl_1[1]
          else  StrTemp:=StrTemp+' '+stl_1[1];
          if length(Trim(stl_1[2]))=1
          then  StrTemp:=StrTemp+' 0'+stl_1[2]
          else  StrTemp:=StrTemp+' '+stl_1[2];
          if length(Trim(stl_1[3]))=1
          then  StrTemp:=StrTemp+' 0'+stl_1[3]
          else  StrTemp:=StrTemp+' '+stl_1[3];
          if length(Trim(stl_1[4]))=1
          then  StrTemp:=StrTemp+' 0'+stl_1[4]
          else  StrTemp:=StrTemp+' '+stl_1[4];
          StlResult.Add(StrTemp);
     end;

     with dsave do
     begin
          Filter := '225投注结果(*.txt)|*.txt';
          Title  := '保存投注结果';
          if not Execute then Exit;
          StrICO:=copy(dsave.FileName,length(dsave.FileName)-3,4);
          StrICO:=lowercase(StrICO);
          if StrICO='.txt'
          then begin
               StlResult.SaveToFile(dsave.filename);
          end
          else
               StlResult.SaveToFile(dsave.FileName+'.txt');
     end;
end;

procedure TMain.Button9Click(Sender: TObject);
var
     s:String;
     index:integer;
begin
     randomize;
     index:=0;
     s:='';
     index:=Random(VLE_RES.RowCount);
     s:=VLE_RES.Values[IntToStr(index)];
     showmessage(s);  
end;

end.

{
var
     StlRes,StlTag:TStrings;
     Stl_1,Stl_2:TStrings;
     StrTemp,StrTempRed_1,StrTempBlue_1,StrTempRed_2,StrTempBlue_2:String;
     i,j,k,m,intCount,intIndex:integer;
     BolAddFlag:boolean;
begin
     StlRes:=TStringList.Create;
     StlTag:=TStringList.Create;
     Stl_1:=TStringList.Create;
     Stl_2:=TStringList.Create;

     intIndex:=0;
     StlRes:=VLE_RES.Strings;
     if StlRes.Count >0
     then begin
          for i:=0 to StlRes.Count-1 do
          begin
               StrTempRed_1:=StlRes.Strings[i];
               StrTempBlue_1:=Trim(Copy(StrTempRed_1,Pos('+',StrTempRed_1)+1,length(StrTempRed_1)));
               StrTempRed_1:=Copy(StrTempRed_1,Pos('=',StrTempRed_1)+1,Pos('+',StrTempRed_1)-3);//////////
               StrTempRed_1:=StringReplace(StrTempRed_1,' ','_',[rfReplaceAll]);
               Stl_1.Clear;
               Stl_1:=splitstring(StrTempRed_1,'_');

               BolAddFlag:=true;
               if StlTag.Count  > 0
               then begin
                    for k:=0 to StlTag.Count -1 do
                    begin
                         StrTempRed_2:=StlTag.Strings[k];
                         StrTempBlue_2:=Trim(Copy(StrTempRed_2,Pos('+',StrTempRed_2)+1,length(StrTempRed_2)));
                         StrTempRed_2:=Copy(StrTempRed_2,Pos('=',StrTempRed_2)+1,Pos('+',StrTempRed_2)-2);//////////
                         StrTempRed_2:=StringReplace(StrTempRed_2,' ','_',[rfReplaceAll]);
                         Stl_2.Clear;
                         Stl_2:=splitstring(StrTempRed_2,'_');
                         intCount:=0;
                         for j:=0 to 5 do
                         begin
                              for m:=0 to 5 do
                              begin
                                   if StrToInt(stl_1[j])=StrToInt(stl_2[m]) then
                                        intCount:=intCount+1;
                              end;
                         end;
                         if (intCount=3) or (intCount>3) then
                         begin
                              BolAddFlag:=false;
                              break;
                         end;
                    end;
               end;

               if BolAddFlag
               then begin
                    StrTemp:='';
                    if length(Trim(stl_1[0]))=1
                    then  StrTemp:=' '+stl_1[0]
                    else  StrTemp:=stl_1[0];
                    if length(Trim(stl_1[1]))=1
                    then  StrTemp:=StrTemp+'  '+stl_1[1]
                    else  StrTemp:=StrTemp+' '+stl_1[1];
                    if length(Trim(stl_1[2]))=1
                    then  StrTemp:=StrTemp+'  '+stl_1[2]
                    else  StrTemp:=StrTemp+' '+stl_1[2];
                    if length(Trim(stl_1[3]))=1
                    then  StrTemp:=StrTemp+'  '+stl_1[3]
                    else  StrTemp:=StrTemp+' '+stl_1[3];
                    if length(Trim(stl_1[4]))=1
                    then  StrTemp:=StrTemp+'  '+stl_1[4]
                    else  StrTemp:=StrTemp+' '+stl_1[4];
                    if length(Trim(stl_1[5]))=1
                    then  StrTemp:=StrTemp+'  '+stl_1[5]
                    else  StrTemp:=StrTemp+' '+stl_1[5];
                    if length(Trim(StrTempBlue_1))=1
                    then  StrTemp:=StrTemp+' +  '+StrTempBlue_1
                    else  StrTemp:=StrTemp+' + '+StrTempBlue_1;
                    intIndex:=intIndex+1;
                    StlTag.Add(IntToStr(intIndex)+'='+StrTemp);
               end;

          end
     end;
     VLE_RES.Strings:=StlTag;
     Lbl_Res.Caption:=inttostr(VLE_RES.RowCount-1);
}
