## Convert FLAC to (320 kbps) mp3 with metadata
```powershell
$ ffmpeg -i 01 - Septet in E flat major Op.20 for clarinete, bassoon, horn, violin, viola, cello & double bass - Adagio-allegro con brio.flac -ab 320k -map_metadata 0 -id3v2_version 3 output.mp3
```


## Add all FLAC files in a subtree to iTunes with this command

```powershell
$ find . -name "*.flac" -exec ffmpeg -i {} -ab 320k -map_metadata 0 -id3v2_version 3 {}.mp3 \;
```

## Automatically add to iTunes
```powershell
$ find . -name "*.mp3" -exec mv {} "A:/Users/Ethan/Music/iTunes/iTunes Media/Automatically Add to iTunes.localized/" \;
```

## Merge MP4s
```powershell
$ ffmpeg -f concat -safe 0 -i files.txt -c copy output.mp4
```

## Generate Sprite Sheet (Filmstrip/Montage) From MP4
```bash
video="https://ia601700.us.archive.org/26/items/seek-do-and-teach-pastor-steven-anderson/Seek%2C%20Do%20and%20Teach%20Pastor%20Steven%20Anderson.mp4" && \
seconds=$(ffmpeg -i "$video" 2>&1 | grep "Duration"| cut -d ' ' -f 4 | sed s/,// | sed 's@\..*@@g' | awk '{ split($1, A, ":"); split(A[3], B, "."); print 3600*A[1] + 60*A[2] + B[1] }') && \
frames=$(echo $seconds 15 | awk '{printf("%.0f\n", $1 / $2)}') && \
ffmpeg -i "$video" -filter_complex \
"select='not(mod(n,30))',scale=248:-1,tile=layout=${frames}x1" \
-vframes 1 -q:v 2 "${video//mp4/jpg}"
```

## Generate Sprite Sheet (Filmstrip/Montage) From Multiple MP4s
```bash
for i in *.mp4;
do
    video=${i%.mp4} && \
    seconds=$(ffmpeg -i "$video.mp4" 2>&1 | grep "Duration"| cut -d ' ' -f 4 | sed s/,// | sed 's@\..*@@g' | awk '{ split($1, A, ":"); split(A[3], B, "."); print 3600*A[1] + 60*A[2] + B[1] }') && \
    frames=$(echo $seconds 15 | awk '{printf("%.0f\n", $1 / $2)}') && \
    ffmpeg -i "$video.mp4" -filter_complex \
    "select='not(mod(n,30))',scale=248:-1,tile=layout=${frames}x1" \
    -vframes 1 -q:v 2 "$video.jpg"
done

```

```powershell
$ find . -name "*.mp4" -exec ffmpeg -i {} -ab 320k -map_metadata 0 -id3v2_version 3 {}.mp3 \;
$ find . -name "*.mp4" -exec ffmpeg -i {}.mp4 -r 1 img/frames_%04d.png \;
$ ffmpeg -i "001 - Job 9 (01-01-2014).mp4" -r 1 img/frames_%04d.png
ffmpeg -skip_frame nokey -i "001 - Job 9 (01-01-2014).mp4" .mp4 -vsync passthrough thumbs-%03d.jpg
ffmpeg -ss 60 -i "001 - Job 9 (01-01-2014).mp4" .mp4 -qscale:v 4 -frames:v 1 output.jpg
ffmpeg -skip_frame nokey -i input.mp4 -vsync passthrough thumbs-%03d.jpg
ffmpeg -i sprite/MyVideoFile.mp4 -r 1 -s 280x180 -f image2 sprite/thumbs/thumb-%%d.png

# Kind of works -- tiles
ffmpeg -i "Terminating Instance.mp4" -filter_complex \
"select='not(mod(n,30))',scale=120:-1,tile=layout=3x2" \
-vframes 1 -q:v 2 output.jpg

ffmpeg -i "Terminating Instance.mp4" -r 1 -ss 00:00:05 -t 00:00:01 -vframes 1 -f image2 -y "image.jpg"

# crap load of images
ffmpeg -i "Terminating Instance.mp4" -filter:v "select=not(mod(n\,10)),setpts=N/((25)*TB)" -qscale:v 2 frame%03d.jpg

montage -background "transparent" -depth 8 -type TrueColorMatte frame??.jpg \
    -geometry 50x50 -tile 10x10 -matte -transparent "transparent" \
    -type TrueColorMatte -depth 8 allframes.jpg
```