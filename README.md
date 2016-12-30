ympd https://github.com/notandy/ympd MPD web client running in a Docker image.

```Bash
docker run --name my-ympd -d -p 8080:8080 --link mpd_container:mpdhost alastairhm/docker-ympd
```

Browse to http://localhost:8080/

