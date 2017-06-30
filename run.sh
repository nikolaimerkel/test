#! /bin/bash
echo "This is who I am:"
whoami
groups

echo "This is my access to data:"
ls -l | grep "mydata"

echo "Writing to data:"
echo "Test" > /mydata/test.txt
cat /mydata/test.txt

echo "Going to sleep!"
while true; do
  sleep 100
done
