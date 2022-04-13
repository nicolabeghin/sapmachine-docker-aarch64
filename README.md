# SapMachine Docker images for aarch64
Unofficial SapMachine Docker Image for `aarch64` - useful to gain better performances on Apple Silicon (ARM64/AARCH64) when SapMachine is involved

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
