#!/bin/bash

FILENAME="$(echo -e "$NAUTILUS_SCRIPT_SELECTED_FILE_PATHS" | sed -e 's/\r//g')"

binwalk --extract --directory=firmware-extraction "${FILENAME}"

notify-send "Extração completa" "O conteúdo do binário foi extraído para a pasta firmware-extraction" --app-name="Firmware Extract"