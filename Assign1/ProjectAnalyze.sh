#!/bin/bash

#informs if you're local repo is up to date
function check_up_to_date() {
  cutd=$(git fetch -v --dry-run)
  utd="[up to date]"
  #echo $cutd
  if [[ "utd" =~ "$cutd" ]]; then
    echo "Your local repo is up to date"
  else
    echo "Your local repo is not up to date"
  fi
}


#Second bullet. Puts all uncommited changes in a file changes.log
function check_uncommited_changes(){

  #check if changes.log exists. Creates it if it doesn't.
  #cited from https://stackoverflow.com/questions/638975/how-do-i-tell-if-a-regular-file-does-not-exist-in-bash
  if [ -e "changes.log" ]; then
    git diff > changes.log
    echo "logged changes to changes.log"
  else 
    touch changes.log
    git diff > changes.log
    echo "Created changes.log file and logged changes to file"
  fi 
  #git diff > changes.log
}
check_uncommited_changes 
