@echo off
setlocal EnableExtensions EnableDelayedExpansion
rem Create temp drive letter for input file folder. Else FFMPEG throws permission denied bc it can locate output dir.
pushd %~dp1

rem HOW TO USE:
rem Drag-and-drop a file (i.e. myfile.mxf) onto this .bat file. 
rem This .bat will look for the audio track in the same directory (i.e. myfile.wav) and mix them down into a new video.
rem MAKE SURE IT IS NAMED THE SAME AS YOUR SOURCE VIDEO, but with a .wav or .mp3 extension.

rem ADDITIONAL NOTES:
rem You may need to add audio bitrate flags if your project is not a master.
rem Anywhere after the named input files add: -acodec aac -ab 128k -ar 48000 -ac 2
rem Use the setting you need for your project. -acodec (which audio codec to use) -ab (audio bitrate) -ar (audio sampling frequency) -ac (# of audio channels)
rem See https://ffmpeg.org/ffmpeg.html#AVOptions for more info.
ffmpeg -i %~1 -i %~n1.wav -c:v copy -map 0:v:0 -map 1:a:0 %~n1.new.%~x1


rem Beep when done
rundll32.exe cmdext.dll,MessageBeepStub

shift
if “%~1” == “” goto:end
goto:again
:end
rem Remove our temp drive letter we made in the beginning.
popd
rem exit