#!/bin/bash

# Read input parameters
echo "Enter the name of the first docker image: "
read img1
echo "Enter the name of the second docker image: "
read img2

# Check if the outputs directory exists
if [ -d "outputs" ]; then
  # If the directory exists, delete its contents
  rm -rf outputs/*
else
  # If the directory doesn't exist, create it
  mkdir -p outputs
fi

# Run container-diff with the default type and output to a file
# container-diff diff "$img1" "$img2" > outputs/container-diff

# Loop through each type and run container-diff with the corresponding output file
types=(file apt pip size history)
for type in "${types[@]}"
do
    echo "Comparing type: ${type}"
    container-diff diff --type="$type" "$img1" "$img2" > "outputs/${type}-container-diff"
done

