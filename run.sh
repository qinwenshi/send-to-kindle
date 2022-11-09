#!/bin/sh

# From https://stackoverflow.com/a/179231 to get the script path
pushd . > '/dev/null';
SCRIPT_PATH="${BASH_SOURCE[0]:-$0}";

while [ -h "$SCRIPT_PATH" ];
do
    cd "$( dirname -- "$SCRIPT_PATH"; )";
    SCRIPT_PATH="$( readlink -f -- "$SCRIPT_PATH"; )";
done

cd "$( dirname -- "$SCRIPT_PATH"; )" > '/dev/null';
./sender qw.shi_kp5@kindle.com $1;

SCRIPT_PATH="$( pwd; )";
popd  > '/dev/null';

