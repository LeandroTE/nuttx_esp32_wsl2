# nuttx_esp32_wsl2
Repository with environment to build nuttx for esp32 in windows using WSL2

# Build the container
docker-compose build sindri

# Build nuttx

## Create config file

```
./tools/configure.sh esp32-devkitc:nsh  
```

## Build File
```
make  
```


