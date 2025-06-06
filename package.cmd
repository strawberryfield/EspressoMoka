rem inform paths
set INFORM7_PATH=C:\Program Files\Inform\
set Inform7="%INFORM7_PATH%Compilers\Inform7"
set Inform6="%INFORM7_PATH%Compilers\Inform6"
set InBlorb="%INFORM7_PATH%Compilers\Inblorb"
set INTERNAL="%INFORM7_PATH%Internal"

set DOC_ROOT=C:
set DOC_PATH=\Users\rober\Documents\Inform
set EXTERNAL="%DOC_ROOT%%DOC_PATH%"

rem project paths
set PROJECT_HOME=EspressoMoka
set NAME=Espresso Moka
set RAREXE="C:\Program Files\WinRAR\WinRAR.exe"
set COMMENT=zipcomment.txt
set HOME_PATH=%DOC_ROOT%%DOC_PATH%\Projects\%PROJECT_HOME%
set PROJECT_PATH=%HOME_PATH%\%NAME%.inform
set MATERIALS_PATH=%HOME_PATH%\%NAME%.materials
set BUILD_DIR=%PROJECT_PATH%\Build\
set RELEASE_DIR=%MATERIALS_PATH%\Release\
set INTERPRETER_DIR=%RELEASE_DIR%interpreter\
set BLURB="%PROJECT_PATH%\Release.blurb"
set BIN=%HOME_PATH%\bin\%NAME%
set BLURBEXT=%MATERIALS_PATH%\blurb-ext.txt

rem delete old files 
del "%BIN%.zip"
del /s /q "%MATERIALS_PATH%\release\*.*"

rem project home
pushd "%HOME_PATH%"

rem build project
cd %BUILD_DIR%
%Inform7% -release -no-index -internal %INTERNAL% -external %EXTERNAL% -project "%PROJECT_PATH%" -format=Inform6/32
%Inform6% -w~S~DG +include_path=..\Source,.\ auto.inf output.ulx

rem integrate and process blurb
type "%BLURBEXT%" >> %BLURB%
echo auxiliary "%HOME_PATH%\LICENSE.txt" "LICENSE" "--" >> %BLURB%
%InBlorb% %BLURB% "%RELEASE_DIR%%NAME%.gblorb"

rem packaging
cd "%MATERIALS_PATH%\release"
magick Cover.jpg -resize 600x600 cover_small.jpg
%RAREXE% a -afzip -r -m5 -z..\%COMMENT% "%HOME_PATH%\bin\EspressoMoka" *.*
popd
