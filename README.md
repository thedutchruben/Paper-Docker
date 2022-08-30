# Paper Mc
[![Publish Image](https://github.com/thedutchruben/Paper-Docker/actions/workflows/publishImage.yaml/badge.svg)](https://github.com/thedutchruben/Paper-Docker/actions/workflows/publishImage.yaml)

Create your paper mc server with this image. This image will provide the latest version with the latest version of ViaVersion and ViaBackwards.


## Environment Variables

To run this project, you will need to add the following environment variables to your environment

`XMS` default `1G`

`XMX` default `1G`

`EULA` default `FALSE` you need to accept the eula by setting this to true

## Volumes

`/minecraft` This is the main folder for your minecraft server
## Usage/Examples

```sh
docker run thedutchruben/papermc:latest --env eula=true -v /home/minecraft:/minecraft
```

