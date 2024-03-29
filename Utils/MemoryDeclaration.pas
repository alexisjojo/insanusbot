unit MemoryDeclaration;

interface

uses Addresses, Classes, SysUtils, Windows, Messages, Variants, Dialogs;

function ReadInteger(ProcessID, Address: Cardinal): Cardinal;
function ReadString(ProcessID, Address: Integer): String;
function ReadByte(ProcessID, Address: Cardinal): Byte;
function BLPosition(ProcessID: Cardinal): Integer;
procedure WriteInteger(IDProcess, Address: Integer; Value: Integer);
procedure WriteString(IDProcess, Address: Integer; Value: String);
procedure WriteByte(IDProcess, Address: Integer; Value: Byte);

implementation

function ReadInteger(ProcessID, Address: Cardinal): Cardinal;
var
  tProc: THandle;
  NBR: Cardinal;
  value: integer;
begin
  tProc := OpenProcess(PROCESS_ALL_ACCESS, False, ProcessID);
  ReadProcessMemory(tProc, Ptr(Address), @value, 4, NBR);
  CloseHandle(tProc);
  Result := value;
end;

function ReadByte(ProcessID, Address: Cardinal): Byte;
var
  tProc: THandle;
  NBR: Cardinal;
  value: Byte;
begin
  tProc := OpenProcess(PROCESS_ALL_ACCESS, False, ProcessID);
  ReadProcessMemory(tProc, Ptr(Address), @value, 1, NBR);
  CloseHandle(tProc);
  Result := value;
end;

function ReadString(ProcessID, Address: Integer): String;
var
  NB : LongWord;
  Temp : ARRAY [1..255] OF Byte;
  I : Byte;
  IDProcess : Cardinal;
begin
  IDProcess := OpenProcess(PROCESS_ALL_ACCESS, false, ProcessID);
  Result := '';
  ReadProcessMemory(IDProcess, Ptr(Address), @Temp[1], 255, NB);
  for I := 1 to 255 do
  begin
    if ((Temp[i] = 0) or (Temp[i] = $0F)) then
      Break;
    Result := Result + Chr(Temp[i]);
  end;
end;

function BLPosition(ProcessID: Cardinal): Integer;
var
  i,id_battle,id:integer;
begin
  if ReadInteger(ProcessID, Addresses.c_Status) = 8 then
  begin
  id:=ReadInteger(ProcessID, addresses.p_Id);
  for i:=0 to 1299 do
  Begin
    id_battle:=ReadInteger(ProcessID, Addresses.bl_Start + i*Addresses.bl_StepCreatures);
    if id_battle=ID then
    Begin
      Result :=i;
      exit;
    end;
  end;
  end
  else
  begin
    Result := -1;
  end;
end;

procedure WriteInteger(IDProcess, Address: Integer; Value: Integer);
var
  THandle: Integer;
  e: DWORD;
begin
  THandle := OpenProcess(PROCESS_ALL_ACCESS, False, IDProcess);
  WriteProcessMemory(THandle, Ptr(Address), @Value, 4, e);
  CloseHandle(THandle);
end;

procedure WriteString(IDProcess, Address: Integer; Value: String);
var
  THandle: hWnd;
  e: DWORD;
begin
  THandle := OpenProcess(PROCESS_ALL_ACCESS, False, IDProcess);
  WriteProcessMemory(THandle, Pointer(Address), PChar(Value), Length(Value), e);
  CloseHandle(THandle);
end;

procedure WriteByte(IDProcess, Address: Integer; Value: Byte);
var
  THandle: hWnd;
  e: DWORD;
begin
  THandle := OpenProcess(PROCESS_ALL_ACCESS, False, IDProcess);
  WriteProcessMemory(THandle, Pointer(Address), PByte(Value), 1, e);
  CloseHandle(THandle);
end;

end.
