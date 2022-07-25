# Create SCSI LUN disks in container

Use targetcli in containers.

## Build the image
```bash
docker build -t targetcli -f Dockerfile .
```

## Run the container and exec to create the disks
```bash
./start-container.sh
docker exec -ti targetclid bash
# Create LUN disk with fileio
targetcli backstores/fileio create disk1 /disks/disk.img 1G
targetcli loopback/ create 50014051998a423d
targetcli loopback/naa.50014051998a423d/luns create /backstores/fileio/disk1
```


