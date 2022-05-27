# ffmpeg-replace-audio-track
Use FFMPEG to replace the audio track of the video -- while copying bit-for-bit the video track to a new file (without rerending it.).

## HOW TO USE:
1. Drag-and-drop a file (i.e. myfile.mxf) onto this .bat file. 
 - This .bat will look for the audio track in the same directory (i.e. myfile.wav) and mix them down into a new video.
 - MAKE SURE IT IS NAMED THE SAME AS YOUR SOURCE VIDEO, but with a .wav or .mp3 extension.

## Add Right-Click Menu item (for Windows Users)
1. Open .reg file and add any other File Extensions you want to add a right-click menu for to this FFMPEG Replace Audio Track function.
1. Edit the file location of ffmpeg-replace-audio-track.bat to where you can find it on your computer.
1. Double-Click the .reg file and accept the prompts to add it to your PCs registry.
- __Now to replace the audio track of your file all you need to do is right-click the movie file and select "FFMPEG Replace Audio Track".__

Please Note: You can modify the ffmpeg-replace-audio.track.bat at anytime if you change your settings and the Right-Click menu will use the newest version of the .bat file.

## ADDITIONAL NOTES:
You may need to add audio bitrate flags if your project is not a master.

Anywhere after the named input files add: __-acodec aac -ab 128k -ar 48000 -ac 2__

Use the setting you need for your project. __-acodec__ (which audio codec to use) __-ab__ (audio bitrate) __-ar__ (audio sampling frequency) __-ac__ (# of audio channels)

See (https://ffmpeg.org/ffmpeg.html#AVOptions) for more info.
