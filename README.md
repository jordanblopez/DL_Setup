# Automation Setup

## Seedbox
- Seedboxes.cc (Bat Box)
- Configure Download/Media folder

   ```$ mkdir torrents_blackhole 
      $ mkdir scripts
      $ cd torrents_blackhole 
      $ mkdir tv movies
      $ cd ..
      $ cd files
      $ mkdir downloads finished
      $ cd downloads 
      $ mkdir tv movies
      $ cd ..
      $ cd finished
      $ mkdir tv movies

- Implement the hardlink script link.sh
  - Upload link.sh into scripts folder
- Setup and configure Deluge Via WebClient
  - Menu -> My Client Area -> {Username} -> Torrent Client WebUI -> Deluge -> Go to Deluge
  - Downloads  
    ![Downloads](https://i.imgur.com/IuuQYTF.png)
  - Network  
    ![Network](https://i.imgur.com/gPbtGbL.png)
  - Bandwidth  
    ![Bandwidth](https://i.imgur.com/aNtIk3k.png)
  - Daemon  
    ![Daemon](https://i.imgur.com/WMXstoW.png)
  - Queue  
    ![Queue](https://i.imgur.com/GBTncWR.png)
  - Plugins  
    ![Plugins](https://i.imgur.com/j3Ci8XN.png)
  - AutoAdd  
    ![AutoAdd](https://i.imgur.com/ZpeeexZ.png)
  - Execute  
    ![Execute](https://i.imgur.com/qJK92sU.png)
  - Labels -> Add Label -> tv movies other(?)
  - Label Queue  
    ![Label Queue](https://i.imgur.com/LxPGm4u.png)
  - Lable Location  
    ![Lable Location](https://i.imgur.com/eDrazVR.png)
- Install Sythings 
  - My Bat Box -> Installable Apps -> Add Application -> Syncthing
    
## Local
- Download and configure [SyncTrayzor](https://github.com/canton7/SyncTrayzor/releases/tag/v1.1.22)
- Download and configure [Deluge](https://deluge-torrent.org/)
    - Follow the directions fro Thin Client 
      - My Bat Box -> Torrent Client Info
- Create folders for torrents and finished downloads
  - movie_torrents
  - tv_torrents
  - other_torrents
  - movies
  - tv
  - other
- Download and configure [Docker](https://www.docker.com/products/docker-desktop)  
    - radarr  
    ```
    docker create --name=radarr -v c:/workspace/radarr:/config -v C:\Users\Jordan\Downloads\!Ts\movies_torrent:/blackhole -v D:\Videos\Movies:/movies -v D:\Downloads\movies:/downloads -e TZ=America/Los_Angeles -p 7878:7878 linuxserver/radarr
    ```
    - jackett  
    ```
    docker create --name=jackett -v c:/workspace/jackett:/config -v C:\Users\Jordan\Downloads\!Ts\movies_torrent:/blackhole -e TZ=America/Los_Angeles -e JACKETT_KEY=6969 -p 9117:9117 linuxserver/jackett
    ```
    - sonarr  
    ```
    docker create --name=sonarr -v c:/workspace/sonarr:/config -v C:\Users\Jordan\Downloads\!Ts\tv_torrent:/blackhole -v D:\Videos\TV:/tv -v D:\Downloads\tv:/downloads -e TZ=America/Los_Angeles -p 8989:8989 linuxserver/sonarr
    ```
    - watchtower  
    ``` docker run -d --name watchtower -v /var/run/docker.sock:/var/run/docker.sock v2tec/watchtower ```
    
  - Configure radarr
    - Media Management  
    ![Media Management](https://i.imgur.com/ujea3tU.png?1)
    - Profiles  
    ![Profiles](https://i.imgur.com/wNZUWWe.png)
    - Quality  
    ![Quality](https://i.imgur.com/K0TBrQE.png)
    - Indexer Options  
    ![Options](https://i.imgur.com/YHWSZIY.png)
    - Download Client  
    ![Download Client](https://i.imgur.com/TLv32UP.png)
    - Download Client - Blackhole  
    ![Blackhole](https://i.imgur.com/LmeWulL.png)
    - General  
    ![General](https://i.imgur.com/pgCZB3L.png)
    - Add Movies 
      - Bulk Import
