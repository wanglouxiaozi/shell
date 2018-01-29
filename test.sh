#!/usr/bin/env bash

echo "Hello World!"
your_name="runoob.com"
echo $your_name
echo {$your_name}
echo ${your_name}
for skill in Ada Coffe Action Java; do
    echo "I am good at ${skill}Script"
done
for file in 'ls /etc'; do
    echo ${file}
done
