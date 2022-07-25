#!/bin/bash -x

docker run -ti --tmpfs /tmp --tmpfs /run \
	--name targetclid \
	-td \
	-v /lib/modules:/lib/modules \
	-v /var/run/dbus:/var/run/dbus \
	-v /sys/kernel/config:/sys/kernel/config \
	-v disks:/disks \
	--privileged --security-opt label=disable \
        targetcli
