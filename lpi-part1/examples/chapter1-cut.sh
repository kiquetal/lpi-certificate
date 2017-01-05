#!/bin/bash

ifconfig eth0 | grep HWaddr | cut -d " " -f 11
