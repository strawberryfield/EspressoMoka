rem inform paths
set INFORM7_PATH=C:\projects\Inform\work\inform\
set Inform7="%INFORM7_PATH%Inform7\Tangled\Inform7"
set Inform6="%INFORM7_PATH%Inform6\Tangled\Inform6"
set InBlorb="%INFORM7_PATH%Inblorb\Tangled\Inblorb"
set INTERNAL="%INFORM7_PATH%Inform7\Internal"

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
%Inform7% -release -no-progress -no-index -internal %INTERNAL% -external %EXTERNAL% -project "%PROJECT_PATH%" -format=Inform6/32d
%Inform6% -E2w~S~DG "%BUILD_DIR%auto.inf" "%BUILD_DIR%output.ulx"

rem integrate and process blurb
type "%BLURBEXT%" >> %BLURB%
echo auxiliary "%HOME_PATH%\LICENSE.txt" "LICENSE" "--" >> %BLURB%
%InBlorb% %BLURB% "%RELEASE_DIR%%NAME%.gblorb"

rem packaging
copy /y "%MATERIALS_PATH%\Small Cover.jpg" "%RELEASE_DIR%" 

cd "%MATERIALS_PATH%\release"
%RAREXE% a -afzip -r -m5 -z..\%COMMENT% "%BIN%" *.*
popd
