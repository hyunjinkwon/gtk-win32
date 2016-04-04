set PATH=C:\Python27;C:\Cmake\bin;C:\Perl\bin;%PATH%;

call "C:\Program Files (x86)\Microsoft Visual Studio 12.0\VC\vcvarsall.bat" amd64

if VisualStudioVersion == "12.0" goto :MoveTo

:VCTargetsPath

SET VCTargetsPath=C:\Program Files (x86)\MSBuild\Microsoft.Cpp\v4.0\V120


:MoveTo

cd C:\gtk-build\github\gtk-win32

python build.py build gtk3 clutter protobuf-c json-c libmicrohttpd leveldb libzip -p x86

python build.py build gtk3 clutter protobuf-c json-c libmicrohttpd leveldb libzip -p x64

