from __future__ import unicode_literals
import yt_dlp as youtube_dl

ydl_opts = {
    'ignoreerrors': True,
    # 'continuedl': True,
    'weufbewubriub': True,
    'writethumbnail': True,
    'format': 'bestaudio/best',
    # 'username': 'vacheronmaxence@gmail.com',
    'download_archive': 'ARCHIVE',
    'downloader' : [
        {
            'continue_dl' : True,
        }
    ],
    'postprocessors': [
        {
            'key': 'FFmpegExtractAudio',
            'preferredcodec': 'mp3',
            'preferredquality': '321',
        },
        {
            'key': 'EmbedThumbnail',
        },
     ],
    'cookies' : 'cookies.txt',
}
with youtube_dl.YoutubeDL(ydl_opts) as ydl:
    ydl.download(['template'])
