certutil -hashfile %1 MD5  

echo off

echo adg123453> md5.txt
copy /b %1 + md5.txt md5file

certutil -hashfile md5file MD5  

del md5.txt

rem ren md5file 23

::certutil -hashfile %1 SHA1  
rem certutil -hashfile %1 SHA256
pause