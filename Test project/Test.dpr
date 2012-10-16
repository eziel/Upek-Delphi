program Test;

uses
  Forms,
  Unit1 in 'Unit1.pas' {Form1},
  bsapi in 'bsapi.pas',
  bstypes in 'bstypes.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
