
:: DESCRIPTION
:: -------------------------------------------------------------------------
:: this allows the user to recursively delete files by extension. it will dril
:: down through all sub-directories and remove the specified extensions.


::suppress warnings/verbose output
@echo off

::instructions
echo.
echo ________________________________________________________________
echo Instructions											
echo 1) Enter file extension to search for and delete
echo ________________________________________________________________
echo.


::user input for file name
set /p fileExt="Enter file extension to delete: " %=%


::delete files with this extension
for /r %%G in (*.%fileExt%) do (
  del %%G 
)












