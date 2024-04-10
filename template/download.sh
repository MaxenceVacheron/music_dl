#!/bin/bash

LOCK_DIR="$(dirname "$0")/exclusivelock"
echo $LOCK_DIR

if mkdir "$LOCK_DIR"
then
  # do stuff
	yt-dlp \
	--verbose \
	--output "%(artist)s - %(title)s.%(ext)s" \
	--yes-playlist \
	--windows-filenames \
	--abort-on-unavailable-fragment \
	--buffer-size 1M \
	--extract-audio \
	--audio-format mp3 \
	--audio-quality 320K \
	--embed-metadata \
	--embed-thumbnail \
	--ppa 'EmbedThumbnail+ffmpeg_o:-c:v mjpeg -vf crop="'"'"'if(gt(ih,iw),iw,ih)'"':'"'if(gt(iw,ih),ih,iw)'"'"'"' \
	--download-archive _songs.txt \
	'template'
  :
  rmdir "$LOCK_DIR"
fi
