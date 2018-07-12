# docker-spyserver
Docker container with spyserver

# Run as standalone

```bash
docker run -it --privileged -p 5555:5555 -v /dev/bus/usb:/dev/bus/usb opensatelliteproject/spyserver
```

# Run as daemon

```bash
docker run -dit --restart unless-stopped --privileged -p 5555:5555 -v /dev/bus/usb:/dev/bus/usb opensatelliteproject/spyserver
```

If you want to change the config file, just mount it at `/spyserver.config`:
```bash
docker run -dit --restart unless-stopped --privileged -p 5555:5555 -v /dev/bus/usb:/dev/bus/usb -v path/to/cfg:/spyserver.config opensatelliteproject/spyserver
```
