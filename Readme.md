🎬 YouTube Video Downloader using Docker

A simple Dockerized project that uses "yt-dlp" to download YouTube videos without installing any dependencies on the host system.

This project demonstrates:
- Docker basics
- Writing a Dockerfile
- Running CLI tools inside containers
- Using Ubuntu base image

---

🚀 Tech Stack

- Docker
- Ubuntu 22.04
- yt-dlp
- Python3
- FFmpeg



HOW TO USE :-

STEP 1: Run the Container

>> docker run -it --name container-name dklokiuk/yt-dlp youtube-url
Example : >> docker run -it --name Youtube-Video-Downloader dklokiuk/yt-dlp https://www.youtube.com/watch?v=KgpnfT5bgLY   

STEP 2: Find the Downloaded File

>> docker diff Youtube-Video-Downloader 
This shows the list of files added during the container execution, including the downloaded video file name

STEP 3: Copy the Video to Your Host Machine
>> docker cp "container-name://mydir/file-name" .
Example: >>  docker cp "Youtube-Video-Downloader://mydir/File-name" .

Note: If you run the container without providing a YouTube URL, it will download the default video specified in the Dockerfile.

THANK YOU 

