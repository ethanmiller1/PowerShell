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
video="Shymol 01-07-2020-16-48-53.mp4" && \
seconds=$(ffmpeg -i "$video" 2>&1 | grep "Duration"| cut -d ' ' -f 4 | sed s/,// | sed 's@\..*@@g' | awk '{ split($1, A, ":"); split(A[3], B, "."); print 3600*A[1] + 60*A[2] + B[1] }') && \
frames=$(echo $seconds 15 | awk '{printf("%.0f\n", $1 / $2)}') && \
ffmpeg -i "$video" -filter_complex \
"select='not(mod(n,30))',scale=256:-1,tile=layout=${frames}x1" \
-vframes 1 -q:v 2 output.jpg
```