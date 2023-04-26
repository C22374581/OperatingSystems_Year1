#!/bin/bash

message="Shell Scripting is Fun!"
echo $message


hostname=$(hostname)
echo "This script is running on $hostname"


# Specify the file path
file_path=ex1.sh 

# Check if the file exists
if [ -f "$file_path" ]; then
  echo "File exists."

  # Check if the user has write permissions
  if [ -w "$file_path" ]; then
    echo "You have permissions to edit $file_path."
  else
    echo "You do NOT have permissions to edit $file_path."
  fi
else
  echo "File does not exist."
fi


while true; do
  # display menu and get user input
  echo "Select an action:"
  echo "1. Show disk usage"
  echo "2. Show system uptime"
  echo "3. Show logged in users"
  echo "q. Quit"
  read -p "Enter your choice: " choice

  # handle user input
  case $choice in
    1)
      df -h
      echo "" # print blank line
      ;;
    2)
      uptime
      echo "" # print blank line
      ;;
    3)
      who
      echo "" # print blank line
      ;;
    q)
      echo "Goodbye!"
      exit 0 # exit with success status code
      ;;
    *)
      echo "Invalid option."
      echo "" # print blank line
      ;;
  esac
done

