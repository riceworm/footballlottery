unit start;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, jpeg;

type
  Tfstart = class(TForm)
    Timer1: TTimer;
    Image1: TImage;
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fstart: Tfstart;

implementation

{$R *.dfm}

procedure Tfstart.Timer1Timer(Sender: TObject);
begin
  close;
end;

end.
