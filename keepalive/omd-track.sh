#!/bin/bash

# $1 = ?GROUP? or ?INSTANCE?
# $2 = name of group or instance
# $3 = target state of transition (?MASTER?, ?BACKUP?, ?FAULT?)

TYPE=$1
NAME=$2
STATE=$3

case $STATE in

	"MASTER") /usr/bin/omd start TEST01
		  exit 0
		  ;;
	"BACKUP") /usr/bin/omd stop TEST01
                  exit 0
                  ;;
	"FAULT")  /usr/bin/omd stop TEST01
                  exit 0
                  ;;
	*)	  echo  "unknow state"
                  exit 1
                  ;;
esac
