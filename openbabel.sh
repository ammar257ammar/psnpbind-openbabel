#!/bin/bash

cd /command

COMMAND=$1

if [ "$COMMAND" == "search-and-split" ]; then

	/command/search-and-split.sh

elif [ "$COMMAND" == "minimize" ]; then

	/command/minimize.sh
fi
