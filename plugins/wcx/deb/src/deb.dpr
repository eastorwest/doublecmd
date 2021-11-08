library deb;

{$if defined(FREEBSD) and defined(CPUX86_64)}
  {$link ../../stub.o}
{$endif}

uses
  deb_io in 'deb_io.pas',
  deb_archive in 'deb_archive.pas',
  deb_def in 'deb_def.pas';

exports
  CloseArchive,
  GetPackerCaps,
  OpenArchive,
  ProcessFile,
  ReadHeader,
  SetChangeVolProc,
  SetProcessDataProc,
  GetBackgroundFlags;
  
{$R *.res}

begin
end.
