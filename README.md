# multiBeast
A simple multicontainer environment to fetch and display an image on an Adafruit screen

This environment contains two containers, a **backend** container and a **frontend** container.

The **backend** container runs a webserver that serves up images upon request.  It is unprivileged
and has no direct hardware access.

The **frontend** container initializes the display hardware on startup.  Once initialized, it requests
images from the webserver on the backend every five seconds.  It then rotates them as necessary and
displays them on the screen.  This container is privileged and allowed to insert kernel modules and manage
hardware directly.
