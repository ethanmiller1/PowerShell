When converting video files from older camera, tehre are 3 main areas of interest:

1. Preserving quality / aspec ratio.
2. Preserving the original date.
3. Preserving the media info (Camera, f-stop, ISO)

# Preserving Quality

Using Any Video Converter you can convert MPG to MP4 using H.264, mpeg-4, or xvid. The [3 main advantages](https://www.velleman.eu/downloads/3/h264_vs_mpeg4_en.pdf) of H.264 over MPEG-4 compression are:

- Small file size for longer recording time and better network transmission.
- Fluent and better video quality for real time playback
- More efficient mobile surveillance application.

# Presrving original date

## Any Video Converter Settings

Click the gear to open `settings`, navigate to the `Misc.` tab, and check "Preserve file timestmps for output files."

## Command Line
[Command Line](https://www.itechtics.com/change-timestamp/)

```bash
# Change Date Modified
$ (Get-Item "_PathToItem_").LastWriteTime=("14 August 2016 13:14:00")
# Change Date Created
$ (Get-Item "_PathToItem_").CreationTime=("13 August 2015 13:18:00")
# Change Date Accessed
$ (Get-Item "PathToItem").LastAccessTime=("3 August 2019 17:10:00")
```

Presrve a key-value pair of file names with dates, then simply lookup the date by the file name. OR for each, search the folder for a matching file name and use the date there. It will be an easy script.

### Get Date Modified

```bash
stat MOV00065.MPG | grep Modify
```

# Preserving the media info


