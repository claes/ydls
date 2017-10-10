#!/bin/sh
if [ "$1" = "" ] ; then
  exec tini -- ydls -server -info -config "$CONFIG" -listen "$LISTEN"
else
  exec ydls -config "$CONFIG" "$@"
fi
