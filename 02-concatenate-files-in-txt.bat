@echo off
if "%~2"=="" (echo "input parameters: input.txt, output file" & echo "using '-c copy', there will not be re-encoding. The format and codec of the audios or videos need to be the same, including width and height." & echo "Note that if input.txt contains Chinese as it's content, use UTF-8 character encoding, or ffmpeg cannot concatenate these files." & exit)
ffmpeg -hide_banner -hwaccel cuda -f concat -safe 0 -i %1 -c copy %2