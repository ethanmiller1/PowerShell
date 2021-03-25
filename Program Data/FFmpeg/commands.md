# Convert FLAC to (320 kbps) mp3 with metadata
$ ffmpeg -i 01 - Septet in E flat major Op.20 for clarinete, bassoon, horn, violin, viola, cello & double bass - Adagio-allegro con brio.flac -ab 320k -map_metadata 0 -id3v2_version 3 output.mp3

# Add all FLAC files in a subtree to iTunes with this command
$ find . -name "*.flac" -exec ffmpeg -i {} -ab 320k -map_metadata 0 -id3v2_version 3 {}.mp3 \;

# Automatically add to iTunes
$ find . -name "*.mp3" -exec mv {} "A:/Users/Ethan/Music/iTunes/iTunes Media/Automatically Add to iTunes.localized/" \;