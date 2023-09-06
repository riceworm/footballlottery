unit zhong;

interface

uses
  Classes;

type
  zhong = class(TThread)
  private
    { Private declarations }
  protected
    procedure Execute; override;
  end;

implementation

{ Important: Methods and properties of objects in VCL or CLX can only be used
  in a method called using Synchronize, for example,

      Synchronize(UpdateCaption);

  and UpdateCaption could look like,

    procedure zhong.UpdateCaption;
    begin
      Form1.Caption := 'Updated in a thread';
    end; }

{ zhong }

procedure zhong.Execute;
begin
  { Place thread code here }
end;

end.
