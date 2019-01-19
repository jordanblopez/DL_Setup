#!/bin/bash
# A script to link files from the downloads folder to the finished folder.

# Three bits are passed to the scripts the torrentID the torrentname and the torrent path.
torrentid=$1
torrentname=$2
torrentpath=$3

# Change directory to the path of the torrent
cd $torrentpath
# Check to see if the torrent is a file or a directory.

if [[ -f "$torrentname" ]]; then # If it is a file

# If it is a file then it will check to see what the path is, this determins which subfolder it will be linked to.

         if [[ "$torrentpath" == "/home/user/files/downloads/tv" ]]; then
	  # Link file to tv directory 
            ln "$torrentpath/$torrentname" "/home/user/files/finished/tv/$torrentname"
         fi

         if [[ "$torrentpath" == "/home/user/files/downloads/movies" ]]; then
            ln "$torrentpath/$torrentname" "/home/user/files/finished/movies/$torrentname"
         fi

         if [[ "$torrentpath" == "/home/user/files/downloads" ]]; then
	    ln "$torrentpath/$torrentname" "/home/user/files/finished/$torrentname"
         fi
	 
	 if [[ "$torrentpath" == "/home/user/files/downloads/other" ]]; then
	    ln "$torrentpath/$torrentname" "/home/user/files/finished/other/$torrentname"
	 fi
   
fi


if [[ -d "$torrentname" ]]; then

	 if [[ "$torrentpath" == "/home/user/files/downloads/tv" ]]; then
	     cp -rl "$torrentpath/$torrentname" "/home/user/files/finished/tv/$torrentname"
         fi

         if [[ "$torrentpath" == "/home/user/files/downloads/movies" ]]; then
            cp -rl "$torrentpath/$torrentname" "/home/user/files/finished/movies/$torrentname"
         fi

         if [[ "$torrentpath" == "/home/user/files/downloads" ]]; then
            cp -rl "$torrentpath/$torrentname" "/home/user/files/finished/$torrentname"
         fi
	
	 if [[ "$torrentpath" == "/home/user/files/downloads/other" ]]; then
	    cp -rl "$torrentpath/$torrentname" "/home/user/files/finished/other/$torrentname"
         fi
		 
fi

