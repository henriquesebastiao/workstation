#!/bin/bash

comm -12 <(apt-mark showmanual | sort) <(apt list --installed 2>/dev/null | cut -d/ -f1 | sort) > apt-packages.txt

npm ls -g > npm-packages.txt

/bin/ls -o -g ~/apps/ > other-apps.txt