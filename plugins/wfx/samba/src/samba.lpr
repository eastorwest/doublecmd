library samba;

{$if defined(FREEBSD) and defined(CPUX86_64)}
  {$link ../../stub.o}
{$endif}
{$mode objfpc}{$H+}

uses
  Classes, SmbFunc, SmbAuthDlg
  { you can add units after this };

exports
  FsInit,
  FsFindFirst,
  FsFindNext,
  FsFindClose,
  FsRenMovFile,
  FsGetFile,
  FsPutFile,
  FsDeleteFile,
  FsMkDir,
  FsRemoveDir,
  FsSetAttr,
  FsSetTime,
  FsGetDefRootName,
  ExtensionInitialize;

{$R *.res}

begin
end.

