::README
::If installationpath is different to C:\OpenSSL-Win32\bin change it!
::After Installation Copy Path to openssl.exe in "PathToOSSLexe" into the ""
::1. CMD öffnen
::2. Encrypt.exe PfadzuVerschlüesselterDatei\Datei.enc

@echo off
SET PathToOSSLexe="C:\OpenSSL-Win32\bin\bin"
SET FileEnc=%1
SET File=%FileEnc:~0,-4%

%PathToOSSLexe%\openssl.exe enc -d -aes256 -in %1 -out %File%
