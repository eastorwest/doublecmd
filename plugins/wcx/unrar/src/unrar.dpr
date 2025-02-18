library unrar;

{$if defined(FREEBSD) and defined(CPUX86_64)}
  {$link ../../stub.o}
{$endif}

uses
  FPCAdds, SysUtils, DynLibs, UnRARFunc, RarFunc;

exports
  { Mandatory }
  OpenArchive,
  OpenArchiveW,
  ReadHeader,
  ReadHeaderEx,
  ReadHeaderExW,
  ProcessFile,
  ProcessFileW,
  CloseArchive,
  SetChangeVolProc,
  SetChangeVolProcW,
  SetProcessDataProc,
  SetProcessDataProcW,
  { Optional }
  GetPackerCaps,
  PackFilesW,
  DeleteFilesW,
  ConfigurePacker,
  PackSetDefaultParams,
  { Extension API }
  ExtensionInitialize;

{$R *.res}

begin
{$if defined(FREEBSD) and defined(CPUX86_64)}
{$else}
  ModuleHandle := LoadLibrary(_unrar);
{$IF DEFINED(LINUX)}
  if ModuleHandle = NilHandle then
    ModuleHandle := LoadLibrary(_unrar + '.5');
{$ENDIF}
  if ModuleHandle = NilHandle then
    ModuleHandle := LoadLibrary(GetEnvironmentVariable('COMMANDER_PATH') + PathDelim + _unrar);
  if ModuleHandle <> NilHandle then
    begin
      RAROpenArchive := TRAROpenArchive(GetProcAddress(ModuleHandle, 'RAROpenArchive'));
      RAROpenArchiveEx := TRAROpenArchiveEx(GetProcAddress(ModuleHandle, 'RAROpenArchiveEx'));
      RARCloseArchive := TRARCloseArchive(GetProcAddress(ModuleHandle, 'RARCloseArchive'));
      RARReadHeader := TRARReadHeader(GetProcAddress(ModuleHandle, 'RARReadHeader'));
      RARReadHeaderEx := TRARReadHeaderEx(GetProcAddress(ModuleHandle, 'RARReadHeaderEx'));
      RARProcessFile := TRARProcessFile(GetProcAddress(ModuleHandle, 'RARProcessFile'));
      RARProcessFileW := TRARProcessFileW(GetProcAddress(ModuleHandle, 'RARProcessFileW'));
      RARSetCallback := TRARSetCallback(GetProcAddress(ModuleHandle, 'RARSetCallback'));
      RARSetChangeVolProc := TRARSetChangeVolProc(GetProcAddress(ModuleHandle, 'RARSetChangeVolProc'));
      RARSetProcessDataProc := TRARSetProcessDataProc(GetProcAddress(ModuleHandle, 'RARSetProcessDataProc'));
      RARSetPassword := TRARSetPassword(GetProcAddress(ModuleHandle, 'RARSetPassword'));
      RARGetDllVersion := TRARGetDllVersion(GetProcAddress(ModuleHandle, 'RARGetDllVersion'));
    end;
{$endif}
end.
