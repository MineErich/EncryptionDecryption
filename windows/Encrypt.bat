::README
::If Installationpath is different to C:\OpenSSL-Win32\bin change it!
::After Installation Copy Path to openssl.exe in "PathToOSSLexe" into the ""
::1. CMD öffnen
::2. Encrypt.exe DateiDieVerschlüsseltWerdenSollMitPfad

@echo off
SET PathToOSSLexe="C:\OpenSSL-Win32\bin"

%PathToOSSLexe%\openssl.exe enc -e -aes256 -in %1 -out %1.enc
