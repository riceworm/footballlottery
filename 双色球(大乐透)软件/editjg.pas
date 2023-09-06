unit editjg;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, ValEdit, ExtCtrls;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label12: TLabel;
    Button3: TButton;
    Button4: TButton;
    Panel2: TPanel;
    Panel3: TPanel;
    v1: TValueListEditor;
    Panel4: TPanel;
    Label1: TLabel;
    noid: TEdit;
    Button1: TButton;
    cmb_01: TComboBox;
    cmb_02: TComboBox;
    cmb_03: TComboBox;
    cmb_04: TComboBox;
    cmb_05: TComboBox;
    cmb_06: TComboBox;
    cmb_07: TComboBox;
    Button2: TButton;
    Button5: TButton;
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}
function fInitData():boolean;
var
     StlData:TStrings;
     i:integer;
     StrTemp,StrAbsoPath:String;
     a1,a2,a3,a4,a5,a6,a7:String;
begin
     StrAbsoPath:=ExtractFilePath(ParamStr(0));
     StlData:=TStringList.Create;
     StlData.LoadFromFile(StrAbsoPath+'\SSData\ssr.ssr');


     editjg.Form1.v1.Strings:=StlData;

     if length(Trim(a2))=1
     then
          StrTemp:=' '+a1
     else
          StrTemp:=a1;

     if length(Trim(a2))=1
     then
          StrTemp:=StrTemp+'  '+a2
     else
          StrTemp:=StrTemp+' '+a2;

     if length(Trim(a3))=1
     then
          StrTemp:=StrTemp+'  '+a3
     else
          StrTemp:=StrTemp+' '+a3;

     if length(Trim(a4))=1
     then
          StrTemp:=StrTemp+'  '+a4
     else
          StrTemp:=StrTemp+' '+a4;

     if length(Trim(a5))=1
     then
          StrTemp:=StrTemp+'  '+a5
     else
          StrTemp:=StrTemp+' '+a5;

     if length(Trim(a6))=1
     then
          StrTemp:=StrTemp+'  '+a6
     else
          StrTemp:=StrTemp+' '+a6;

     if length(Trim(a7))=1
     then
          StrTemp:=StrTemp+' +  '+a7
     else
          StrTemp:=StrTemp+' + '+a7;

     result:=true;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
     close();
end;

end.
