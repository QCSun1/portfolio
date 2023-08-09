#!/bin/bash

ipinfo="$(./ipinfo.sh)"

echo -e "$ipinfo" | sed -n 's/IP Address/IP Address/ p'