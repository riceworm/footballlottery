unit querynow;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, ValEdit, ExtCtrls, ComCtrls;

type
  Tqnow = class(TForm)
    StatusBar1: TStatusBar;
    Panel3: TPanel;
    Panel2: TPanel;
    Panel1: TPanel;
    v1: TValueListEditor;
    Panel6: TPanel;
    dt: TLabel;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    l3: TLabel;
    GroupBox3: TGroupBox;
    Panel4: TPanel;
    Label1: TLabel;
    no: TEdit;
    Button1: TButton;
    Button2: TButton;
    l4: TLabel;
    l1: TLabel;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel5: TPanel;
    Panel9: TPanel;
    Label5: TLabel;
    v4: TValueListEditor;
    OpenDialog1: TOpenDialog;
    Panel10: TPanel;
    Label2: TLabel;
    v2: TValueListEditor;
    Panel11: TPanel;
    v3: TValueListEditor;
    Panel12: TPanel;
    Label3: TLabel;
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  qnow: Tqnow;

implementation

{$R *.dfm}
function query(no:string;stattype:integer):boolean;
var
 temp,temp1:String;
 sL,sL_1,sL_2,sL_3:TStrings;
 i,j,k,count:integer;
begin
 sL:=TStringList.Create;
 sL_1:=TStringList.Create;
 sL_2:=TStringList.Create;
 sL_3:=TStringList.Create;
 sL:=qnow.v1.Strings;
 setlength(no,14);

 for i:=0 to sL.Count-1 do
 begin
   temp:=sL.Strings[i];
   temp1:=temp;
   temp:=trim(copy(temp,pos('=',temp)+1,length(temp)));
   setlength(temp,14);
   k:=0;
   for j:=1 to 14 do
   begin
     if (no[j]=temp[j]) then
       k:=k+1;
   end;
   if(k=14) then
     sL_1.Add(temp1);
   if(k=13) then
     sL_2.Add(temp1);
   if(k=12) then
     sL_3.Add(temp1);
 end;

 qnow.l1.Caption:='中 奖 数 共∶'+inttostr(sL_1.Count)+' 注';
 qnow.v2.Strings:=sL_1;
 qnow.l3.Caption:='中 奖 数 共∶'+inttostr(sL_2.Count)+' 注';
 qnow.v3.Strings:=sL_2;
 qnow.l4.Caption:='中 奖 数 共∶'+inttostr(sL_3.Count)+' 注';
 qnow.v4.Strings:=sL_3;

 freeandnil(sL_1);
 freeandnil(sL_2);
 freeandnil(sL_3);
 result:=false;
end;
procedure Tqnow.Button2Click(Sender: TObject);
var
 sL:TStrings;
 ico,str:String;
 i:integer;
begin
 sL:=TStringList.Create;
 with OpenDialog1 do
 begin
    Filter := '投注结果(*.fcr)|*.fcr';
    Title  := '调出投注结果';
    if not Execute then Exit;
    if(copy(OpenDialog1.FileName,length(OpenDialog1.FileName)-3,1)='.') then
    begin
      dt.Caption:='当前导入的投注文件[ '+opendialog1.FileName+' ]的中奖状况';
      sL.LoadFromFile(OpenDialog1.FileName);
    end;
 end;
 v1.Strings.Clear;
 v1.Strings:=sL;
 freeandnil(sl);
end;

procedure Tqnow.FormCreate(Sender: TObject);
var
 title:TStrings;
begin
 title:=TStringList.Create;
 title.Add(' 序    号 ');
 title.Add(' 中奖号码 ');
 v1.TitleCaptions:=title;
 title.Clear;
 title.Add(' 对应序号 ');
 title.Add(' 中奖号码 ');
 v2.TitleCaptions:=title;
 v3.TitleCaptions:=title;
 v4.TitleCaptions:=title;
 freeandnil(title);
end;

procedure Tqnow.Button1Click(Sender: TObject);
var
  str,temp,errinfo:string;
  i:integer;
  flag,runflag:boolean;
begin
 if v1.Strings.Count>2 then
 begin
     flag:=false;
     runflag:=true;
     str:=trim(no.Text);
     if(length(str)=14) then
     begin
       setlength(str,length(str));
       for i:=1 to length(str) do
       begin
         flag:=false;
         if str[i]='0' then
            flag:=true;
         if str[i]='1' then
            flag:=true;
         if str[i]='3' then
            flag:=true;
         if flag=false then
         begin
           runflag:=false;
           errinfo:='非法字符'+''''+str[i]+'''';
           Application.MessageBox(pchar(errinfo),'错误提示',MB_OK+MB_IconInformation);
         end;
       end;
     end;
     if(runflag) then
     begin
       try query(str,0);except end;
     end;
  end;
end;

procedure Tqnow.FormDestroy(Sender: TObject);
begin
 v1.Strings.Clear;
 v2.Strings.Clear;
 v3.Strings.Clear;
 v4.Strings.Clear;
 no.Text:='';
 dt.Caption:='当前导入的投注文件[ ***.fcr ]的中奖状况';
 l1.Caption:='中 奖 数 共∶0 注';
 l3.Caption:='中 奖 数 共∶0 注';
 l4.Caption:='中 奖 数 共∶0 注';
end;

procedure Tqnow.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
 v1.Strings.Clear;
 v2.Strings.Clear;
 v3.Strings.Clear;
 v4.Strings.Clear;
 no.Text:='';
 dt.Caption:='当前导入的投注文件[ ***.fcr ]的中奖状况';
 l1.Caption:='中 奖 数 共∶0 注';
 l3.Caption:='中 奖 数 共∶0 注';
 l4.Caption:='中 奖 数 共∶0 注';
end;

procedure Tqnow.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 v1.Strings.Clear;
 v2.Strings.Clear;
 v3.Strings.Clear;
 v4.Strings.Clear;
 no.Text:='';
 dt.Caption:='当前导入的投注文件[ ***.fcr ]的中奖状况';
 l1.Caption:='中 奖 数 共∶0 注';
 l3.Caption:='中 奖 数 共∶0 注';
 l4.Caption:='中 奖 数 共∶0 注';
end;

end.
