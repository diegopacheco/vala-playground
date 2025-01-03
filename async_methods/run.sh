#!/bin/bash

valac --pkg=gio-2.0 main.vala
./main
rm ./main
