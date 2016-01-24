Docker image for running Deluge, the daemon and web interface.

## Usage

```
docker run \
  --publish 8112:8112 \
  --volume /data/deluge:/data \
  pbrisbin/deluge
```

Visit `http://localhost:8112`. The default web interface password is "deluge".
