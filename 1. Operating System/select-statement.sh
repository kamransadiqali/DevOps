#!/bin/bash
PS3="please select os? "
select os in linux windows mac
do
  case ${os} in
    linux)
      echo "you selected linux"
      echo "thanks."
      break
      ;;
    windows)
      echo "you selected windows"
      echo "thanks."
      break
      ;;
    mac)
      echo "you selected mac"
      echo "thanks."
      break
      ;;
    *)
      echo "Invalid"
  esac
done
