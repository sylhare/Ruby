:: Test script
@echo off

:: Script in ruby/scripts folder
cd ..
cd blog

echo starting localhost
:: Open a new prompt wait for 6 seconds before starting sith preferred browser the localhost:3000 before exiting the prompt.
start cmd.exe @cmd /k "echo waiting for the server to start&TIMEOUT 6&start "" http://localhost:3000/&exit"

echo Starting Ruby server
:: in ruby/blog folder
rails server

