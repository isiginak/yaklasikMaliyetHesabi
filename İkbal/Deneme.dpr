program Deneme;

uses
  Forms,
  uMain in 'uMain.pas' {frmMain},
  uDosya in 'uDosya.pas' {frmDosya};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
