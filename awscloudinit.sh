#!/bin/bash

# Can be used to covert SRX configs to userdata cloud_init field.

#usage notes... edit origanal config and delete beginning up to system. With system being the first line.  Afterwords it will read like "system (",
sed -e 's/.*/"&",/' config.txt > userdata.txt
