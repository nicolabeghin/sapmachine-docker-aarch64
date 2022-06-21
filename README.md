# SapMachine Docker images for aarch64
Unofficial SapMachine Docker Image for `aarch64` - useful to gain better performances on Apple Silicon (ARM64/AARCH64) when SapMachine is involved

## Update June 2022
**Good news** project not needed anymore - `aarch64` support recently added from official [SapMachine Github repo](https://github.com/SAP/SapMachine-infrastructure/blob/master/dockerfiles/ubuntu_20_04/arm64/Dockerfile)

## DockerHub
### Link 
https://hub.docker.com/r/nicolabeghin/sapmachine-aarch64

### Tags
* `nicolabeghin/sapmachine-aarch64:11.0.15`
* `nicolabeghin/sapmachine-aarch64:11`
    
## Use
Reference the image in your `Dockerfile`:

    FROM nicolabeghin/sapmachine-aarch64:11.0.15

## Get a running shell
    make shell
    
## Publish to DockerHub
    make build publish
