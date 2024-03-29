; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "HubStaffActivity"
#define MyAppVersion "1"
#define MyAppPublisher "Khorshed Hasan"
#define MyAppURL "https://www.example.com/"
#define MyAppExeName "HubstafActivityPerform.exe"
#define MyAppAssocName MyAppName + " File"
#define MyAppAssocExt ".myp"
#define MyAppAssocKey StringChange(MyAppAssocName, " ", "") + MyAppAssocExt

[Setup]
; NOTE: The value of AppId uniquely identifies this application. Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{6C43A499-D3A2-4945-A6BC-17EE76698E58}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={autopf}\{#MyAppName}
ChangesAssociations=yes
DisableProgramGroupPage=yes
LicenseFile=C:\Users\joyma\Desktop\New folder (2)\hubLicense.txt
InfoBeforeFile=C:\Users\joyma\Desktop\New folder (2)\Information.txt
InfoAfterFile=C:\Users\joyma\Desktop\New folder (2)\afterinstall.txt
; Uncomment the following line to run in non administrative install mode (install for current user only.)
;PrivilegesRequired=lowest
OutputDir=C:\Users\joyma\Desktop\hubActivity
OutputBaseFilename=HubStaffActivity
SetupIconFile=C:\Users\joyma\Desktop\chess-knight-solid.ico
Password=@joymania
Compression=lzma
SolidCompression=yes
WizardStyle=modern

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "C:\Users\joyma\source\repos\HubstafActivityPerform\bin\Debug\net7.0-windows\{#MyAppExeName}"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\joyma\source\repos\HubstafActivityPerform\bin\Debug\net7.0-windows\HubstafActivityPerform.deps.json"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\joyma\source\repos\HubstafActivityPerform\bin\Debug\net7.0-windows\HubstafActivityPerform.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\joyma\source\repos\HubstafActivityPerform\bin\Debug\net7.0-windows\HubstafActivityPerform.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\joyma\source\repos\HubstafActivityPerform\bin\Debug\net7.0-windows\HubstafActivityPerform.pdb"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\joyma\source\repos\HubstafActivityPerform\bin\Debug\net7.0-windows\HubstafActivityPerform.runtimeconfig.json"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\joyma\source\repos\HubstafActivityPerform\bin\Debug\net7.0-windows\WindowsInput.dll"; DestDir: "{app}"; Flags: ignoreversion
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Registry]
Root: HKA; Subkey: "Software\Classes\{#MyAppAssocExt}\OpenWithProgids"; ValueType: string; ValueName: "{#MyAppAssocKey}"; ValueData: ""; Flags: uninsdeletevalue
Root: HKA; Subkey: "Software\Classes\{#MyAppAssocKey}"; ValueType: string; ValueName: ""; ValueData: "{#MyAppAssocName}"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\{#MyAppAssocKey}\DefaultIcon"; ValueType: string; ValueName: ""; ValueData: "{app}\{#MyAppExeName},0"
Root: HKA; Subkey: "Software\Classes\{#MyAppAssocKey}\shell\open\command"; ValueType: string; ValueName: ""; ValueData: """{app}\{#MyAppExeName}"" ""%1"""
Root: HKA; Subkey: "Software\Classes\Applications\{#MyAppExeName}\SupportedTypes"; ValueType: string; ValueName: ".myp"; ValueData: ""

[Icons]
Name: "{autoprograms}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{autodesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent

