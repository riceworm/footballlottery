unit buyinfo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, ComCtrls;

type
  Tbuy = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Pal_01: TPanel;
    btn_close: TButton;
    procedure btn_closeClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  buy: Tbuy;

implementation

{$R *.dfm}

procedure Tbuy.btn_closeClick(Sender: TObject);
begin
 try close();except end;
end;

end.
