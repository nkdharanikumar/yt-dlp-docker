FROM ubuntu:22.04

WORKDIR /mydir

RUN apt-get update
RUN apt-get install -y curl
RUN apt-get install -y python3
RUN apt-get install -y ffmpeg
RUN curl -L https://github.com/yt-dlp/yt-dlp/releases/latest/download/yt-dlp -o /usr/local/bin/yt-dlp

RUN chmod a+rx /usr/local/bin/yt-dlp

ENTRYPOINT ["/usr/local/bin/yt-dlp"]

CMD ["https://youtu.be/ip8o5hDFLhI?list=RDip8o5hDFLhI"]
