#!/bin/bash

valac --pkg gee-0.8 main.vala
./main
rm ./main
