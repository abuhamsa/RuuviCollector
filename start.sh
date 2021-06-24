#!/bin/bash

hciconfig hci0 down
hciconfig hci0 up
java -jar target/ruuvi-collector-0.2.jar