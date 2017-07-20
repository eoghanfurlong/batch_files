
:: DESCRIPTION
:: -------------------------------------------------------------------------
:: this allows the user to recursively delete files by keyword.


::suppress warnings/verbose output
@echo off

::instructions
echo.
echo _______________________________________________________________________________
echo Instructions											
echo 1) Enter keyword to search for and delete files that contain it in their name
echo _______________________________________________________________________________
echo.


::user input for file name
set /p keyWord="Enter part of file name to delete: " %=%


::delete files that contain the keyword entered by the user
for /r %%G in (*%keyWord%*) do (
  del %%G 
)












