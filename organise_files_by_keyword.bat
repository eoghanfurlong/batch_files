@echo off

:: Author: Eoghan Furlong

:: Searches for a string value contained within a file name in the current 
:: directory, creates a folder and moves any matching files into the folder.
:: The user is prompted to enter the string value and the folder name. 


::Prompts user to enter string to look for in file names within current directory
:dataEntry

::instructions
echo.
echo ________________________________________________________________
echo Instructions											
echo 1) Enter part of a filename to search for
echo 2) Enter a folder name to move all files with a similar name to
echo.
echo ________________________________________________________________
echo.

echo Current directory is: %cd%
echo.
echo.

::user input for file name
set /p term="Enter term to search for: " %=%

::user input for folder name
set /p folder="Enter folder name to put matching files in: " %=%

::create folder
mkdir %folder%
echo.
echo Created folder: %folder%
echo.

::search for matching files and move them
FOR /R "%cd%" %%G IN (*%term%*) DO (
	move %%G %folder%
)


::prompt user to repeat process or quit
:selectNext

echo.
set /p repeatOrQuit="Would you like to repeat the process?  y/n " %=%

if "%repeatOrQuit%" == "y" (
	echo YES
	cls
	goto dataEntry
)
 
if "%repeatOrQuit%" == "n" (
	echo YOU SELECTED NO
	goto exit
)

if NOT "%repeatOrQuit%" == "n" (
	goto selectNext
)


::exit the script
:exit

























