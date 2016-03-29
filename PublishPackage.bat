@echo off
nuget pack
nuget push *.nupkg
pause