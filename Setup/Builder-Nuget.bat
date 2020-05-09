@echo off
cd Setup/Nuget
for /f "tokens=1,2,3 delims=:" %%A in (../NugetPackages.txt) do (IF "%%A"=="FIRST_IMPORT" (nuget install %%B -Version %%C -OutputDirectory ../../.packages))
cd ../..
PAUSE