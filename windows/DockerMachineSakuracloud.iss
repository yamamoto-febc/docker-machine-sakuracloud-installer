#define MyParentAppName "Docker Toolbox"
#define MyAppName "Docker Machine Sakuracloud"
#define MyAppPublisher "yamamoto-febc"
#define MyAppURL "https://github.com/yamamoto-febc/docker-machine-sakuracloud"
#define MyAppContact "https://github.com/yamamoto-febc/docker-machine-sakuracloud"

#define dockerMachineSakuracloudDriver "..\bundle\docker-machine-driver-sakuracloud.exe"

[Setup]
AppCopyright={#MyAppPublisher}
AppId={{FC4417F0-D7F3-48DB-BCE1-F5ED5BAFFD91}
AppContact={#MyAppContact}
AppComments={#MyAppURL}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
ArchitecturesAllowed=x64
ArchitecturesInstallIn64BitMode=x64
DefaultDirName={pf}\{#MyParentAppName}
UsePreviousAppDir=yes
CreateUninstallRegKey=no
UpdateUninstallLogAppName=no
OutputBaseFilename=DockerMachineSakuracloudSetup

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Files]
Source: "{#dockerMachineSakuracloudDriver}"; DestDir: "{app}"; Flags: ignoreversion;
