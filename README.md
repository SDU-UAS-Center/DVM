# Drone Video Measure

A tool to measure and track things on a planar surface.
Developed to measure and track marine mammals in the surface of the ocean.

## Quick Installation and Use

For a more ditailed guide see the dokumentation: [Docs](https://sdu-uas-center.github.io/DVM/).

### Install and run

Docker and Docker Compose is needed to run. Download the latest docker-compose.yml from [releases](https://github.com/SDU-UAS-Center/DVM/releases) and from a terminal run:

```sh
docker compose up
```

This will download the needed container images and run them with docker. You can now open a browser at [http://localhost:5000](http://localhost:5000). It may take a couple of minutes on the first startup before DVM is ready.

### Stopping DVM

When done with DVM the containers can be stopped with:

```sh
docker compose down
```

## Getting started using Drone Video Measure

A detailed description of how to use the program can be found here:

* [Tutorial - Getting started with Drone Video Measure](https://sdu-uas-center.github.io/DVM/tutorials/getting_started.html)

## Supported Drones

The program can read flight logs exported from airdata.com.
Airdata.com is able to handle flight logs from several drone manufactures including DJI.

If you want support for other drones please create a issue with a flight log attached.

## Author

Written by Henrik Dyrberg Egemose [hde@mmmi.sdu.dk](hde@mmmi.sdu.dk) as part of the InvaDrone and Back2Nature projects,
research projects by the University of Southern Denmark UAS Center (SDU UAS Center).
Now maintained by Henrik Skov Midtiby [hemi@mmmi.sdu.dk](hemi@mmmi.sdu.dk).

## License

This project is licensed under the MIT license - see the [LICENSE](LICENSE) file for details.
