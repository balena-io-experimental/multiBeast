#!/bin/bash

IMAGE="image.png"

echo "Rendering image"

ROTATE=${ROTATE:-0}

while [ 1 ] # forever
do
  # Remove old image
  rm $IMAGE

  # Fetch the image
  if ! wget http://backend/$IMAGE
  then
    echo "Unable to fetch $IMAGE: Error code $?"
  else
    # Success -- rotate as needed and display
    convert "$IMAGE" -rotate $ROTATE rotated.png
    fbi -d /dev/fb1 -T 1 -noverbose -a rotated.png
  fi
  sleep 5
done
