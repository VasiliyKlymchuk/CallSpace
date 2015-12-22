; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{778AAE4A-79BC-443A-9BE9-2CE74B0E28D5}
AppName=CallSpace
AppVersion=1.5
;AppVerName=CallSpace 1.5
AppPublisher=My Company, Inc.
AppPublisherURL=http://www.example.com/
AppSupportURL=http://www.example.com/
AppUpdatesURL=http://www.example.com/
DefaultDirName={pf}\CallSpace
DefaultGroupName=CallSpace
AllowNoIcons=yes
OutputDir=..\CallSpace\
OutputBaseFilename=setup
Compression=lzma
SolidCompression=yes

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"
Name: "ukrainian"; MessagesFile: "compiler:Languages\Ukrainian.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "..\CallSpace\CallSpace\bin\Release\CallSpace.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\CallSpace\CallSpace\bin\Release\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{group}\CallSpace"; Filename: "{app}\CallSpace.exe"
Name: "{group}\{cm:UninstallProgram,CallSpace}"; Filename: "{uninstallexe}"
Name: "{commondesktop}\CallSpace"; Filename: "{app}\CallSpace.exe"; Tasks: desktopicon

[Run]
Filename: "{app}\CallSpace.exe"; Description: "{cm:LaunchProgram,CallSpace}"; Flags: nowait postinstall skipifsilent

