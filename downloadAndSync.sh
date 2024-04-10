for d in /home/pi/music/*/ ; do
 echo "$d"  
 cd $d
 date
 /usr/bin/bash $d/download.sh
 date
 /usr/bin/bash $d/copyFiles.sh
 date
done
