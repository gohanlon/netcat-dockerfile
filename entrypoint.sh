#!/bin/sh

if [ ! -z "${HTTP_PORT}" ] ; then HTTP_PORT=8080; fi

while : ;
do
  nc -vvv -l -p ${HTTP_PORT}
done
