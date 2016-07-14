::Find files with size of 1 MB (1048576) or more.
:: You must Run this .bat file as an admin
:: The .txt log file is located C:\outputFileSizeLog.txt

::Print out |    File Size (In Bytes)     |     File Date  |  File Time    |File Path                             | to C:\outputFileSizeLog.txt
echo "|    File Size (In Bytes)     |     File Date  |  File Time    |File Path                             |">C:\outputFileSizeLog.txt

::Go through all of the files in the current directory this command file is located
forfiles /S /M * /C "cmd /c if @fsize GEQ 1048576 echo     @fsize       @fdate      @ftime     @path >>C:\outputFileSizeLog.txt" 
pause