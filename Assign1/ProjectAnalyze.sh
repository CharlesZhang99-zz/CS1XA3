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

#Puts all uncommited changes in a file changes.log
function check_uncommited_changes(){

  #check if changes.log exists. Creates it if it doesn't.
  #cited from https://stackoverflow.com/questions/638975/how-do-i-tell-if-a-regular-file-does-not-exist-in-bash
  git diff > changes.log
  echo "logged changes to changes.log"
}

#Puts each line from every file of your project with the tag #TODO into a file todo.log
function log_todo(){
  #cite: I got the "*.log" idea from deleeuwj1's project
  grep -r --exclude="*.log" "#TODO" > todo.log
}

#Checks all haskell files for shyntax errors and puts the results into error.log
function check_haskell_errors(){
  find . -name "*.hs" | xargs -I error ghc -fno-code "error" &>> error.log
}

#custom feature 1. This removes all log files
function remove_logs(){
  find . -name "*.log" | xargs rm
}
#custom feature 2. This removes any file with the extension the user inputs
function remove_any_extension(){
  read -p "Files with what extensions would you like to remove?" ext
  find . -name "*.$ext" | xargs rm
}

#clear_logs
#check_haskell_errors
#check_uncommited_changes
#log_todo
remove_any_extension







