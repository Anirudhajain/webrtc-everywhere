; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "webrtc-everywhere"
#define MyAppVersion "1.2.0.0"
#define MyAppPublisher "Sarandogou"
#define MyAppURL "https://ns313841.ovh.net/webrtc/"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{49969875-E6F2-4D13-84C9-BF58B9831869}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={pf}\{#MyAppName}
DefaultGroupName={#MyAppName}
DisableProgramGroupPage=yes
LicenseFile=C:\Projects\webrtc-everywhere\LICENSE-BSD
OutputDir=C:\Projects\webrtc-everywhere\wininstall
OutputBaseFilename=setup
Compression=lzma
SolidCompression=yes
; "ArchitecturesInstallIn64BitMode=x64" requests that the install be
; done in "64-bit mode" on x64, meaning it should use the native
; 64-bit Program Files directory and the 64-bit view of the registry.
; On all other architectures it will install in "32-bit mode".
ArchitecturesInstallIn64BitMode=x64
; Note: We don't set ProcessorsAllowed because we want this
; installation to run on all architectures (including Itanium,
; since it's capable of running 32-bit code too).

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Files]
Source: "C:\Projects\webrtc-everywhere\Release\npwebrtc-everywhere-npapi.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Projects\webrtc-everywhere\Release\webrtc-everywhere-common.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Projects\webrtc-everywhere\Release\webrtc-everywhere-ie.dll"; DestDir: "{app}"; Flags: ignoreversion regserver 32bit
Source: "C:\Projects\webrtc-everywhere\wininstall\vcredist_x64.exe"; DestDir: "{tmp}"; DestName: "vcredist.exe"; Check: IsWin64; Flags: ignoreversion;
Source: "C:\Projects\webrtc-everywhere\wininstall\vcredist_x86.exe"; DestDir: "{tmp}"; DestName: "vcredist.exe"; Check: not IsWin64; Flags: ignoreversion solidbreak;

; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Registry]
Root: HKLM64; Subkey: "SOFTWARE\MozillaPlugins\@ns313841.ovh.net/webrtc-everywhere"; ValueType: string; ValueName: "Description"; ValueData: "WebRTC everywhere"; Flags: uninsdeletekey; Check: IsWin64
Root: HKLM64; Subkey: "SOFTWARE\MozillaPlugins\@ns313841.ovh.net/webrtc-everywhere"; ValueType: string; ValueName: "Path"; ValueData: "{app}\npwebrtc-everywhere-npapi.dll"; Flags: uninsdeletekey; Check: IsWin64
Root: HKLM64; Subkey: "SOFTWARE\MozillaPlugins\@ns313841.ovh.net/webrtc-everywhere"; ValueType: string; ValueName: "ProductName"; ValueData: "WebRTC everywhere"; Flags: uninsdeletekey; Check: IsWin64
Root: HKLM32; Subkey: "SOFTWARE\MozillaPlugins\@ns313841.ovh.net/webrtc-everywhere"; ValueType: string; ValueName: "Description"; ValueData: "WebRTC everywhere"; Flags: uninsdeletekey
Root: HKLM32; Subkey: "SOFTWARE\MozillaPlugins\@ns313841.ovh.net/webrtc-everywhere"; ValueType: string; ValueName: "Path"; ValueData: "{app}\npwebrtc-everywhere-npapi.dll"; Flags: uninsdeletekey
Root: HKLM32; Subkey: "SOFTWARE\MozillaPlugins\@ns313841.ovh.net/webrtc-everywhere"; ValueType: string; ValueName: "ProductName"; ValueData: "WebRTC everywhere"; Flags: uninsdeletekey

[Run]
Filename: "{tmp}\vcredist.exe"; Parameters: "/quiet /norestart"; StatusMsg: Installing Visual Studio 2013 RunTime...;
