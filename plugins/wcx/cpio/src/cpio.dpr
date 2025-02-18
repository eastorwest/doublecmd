//***************************************************************
// This file is part of RPMWCX, a archiver plugin for
// Windows Commander.
// Copyright (C) 2000 Mandryka Yurij  e-mail:braingroup@hotmail.ru
//***************************************************************
{
  Add some changes for Lazarus and Linux compability
  Copyright (C) 2007  Koblov Alexander (Alexx2000@mail.ru)
}
//***************************************************************
// This code based on Christian Ghisler (support@ghisler.com) sources
//***************************************************************

library cpio;

{$if defined(FREEBSD) and defined(CPUX86_64)}
  {$link ../../stub.o}
{$endif}

uses
  SysUtils,
  Classes,
  WcxPlugin,
  cpio_io in 'cpio_io.pas',
  cpio_def in 'cpio_def.pas',
  cpio_archive in 'cpio_archive.pas';

exports
  CloseArchive,
  GetPackerCaps,
  OpenArchive,
  ProcessFile,
  ReadHeader,
  SetChangeVolProc,
  SetProcessDataProc,
  GetBackgroundFlags,
  CanYouHandleThisFile;

{$R *.res}

begin
end.
