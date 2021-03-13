# youtube-dl Instructions

## Sermon Notation

```powershell
youtube-dl --download-archive downloaded.txt --no-post-overwrites -ciwo '%(playlist_index)s" - "%(title)s.%(ext)s' url
```

### Example

```powershell
 (%(upload_date )s)
```

## Music Notation

```powershell
youtube-dl --format mp4 -cio '%(playlist_index)s - %(title)s.%(ext)s' 'url' ; rename 's/00//g' *
```

### Example

```powershell
youtube-dl -cio '%(playlist_index)s - %(title)s.%(ext)s' 'https://www.youtube.com/playlist?list=PLldzZ8QrGlsZ3OJKHfwWeRSqdmnBSB554' ; rename 's/00//g' *
youtube-dl --format mp4 -cio '%(playlist_index)s - %(title)s.%(ext)s' 'https://www.youtube.com/playlist?list=PLd8VdbWP8YWvhutGlKH6881oTJpNS5mt6'
```

## Download as MP3

```powershell
youtube-dl --download-archive downloaded.txt --no-post-overwrites -ciwx --audio-format mp3 -o "%(title)s.%(ext)s" [path here]
```

### Example

```powershell
youtube-dl --download-archive downloaded.txt --audio-quality 0 -ciwx --audio-format mp3 -o '%(playlist_index)s - %(title)s.%(ext)s' 'https://www.youtube.com/playlist?list=PLldzZ8QrGlsZ3OJKHfwWeRSqdmnBSB554'
```



## [Options](https://github.com/ytdl-org/youtube-dl/blob/master/README.md#filesystem-options)


    -o, --output TEMPLATE            Output filename template, see the "OUTPUT
                                     TEMPLATE" for all the info
    --autonumber-start NUMBER        Specify the start value for %(autonumber)s
                                     (default is 1)
    -w, --no-overwrites              Do not overwrite files
    -c, --continue                   Force resume of partially downloaded files.
                                     By default, youtube-dl will resume
                                     downloads if possible.
    -i, --ignore-errors              Continue on download errors, for example to
                                     skip unavailable videos in a playlist
    -x, --extract-audio              Convert video files to audio-only files
                                     (requires ffmpeg or avconv and ffprobe or
                                     avprobe)