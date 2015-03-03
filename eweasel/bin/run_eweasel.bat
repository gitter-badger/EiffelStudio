set TMP_PATH=%cd%
@echo off
call %~dp0set_eweasel_env.bat

if "%~3" == "nosvn" (
	echo Not updating svn per request.
) else (
	cd /d %ISE_EIFFEL%\library
	svn up base time thread store 
)

rem Cleaning test directory
rd /q /s %EWEASEL_OUTPUT%
mkdir %EWEASEL_OUTPUT%

if "%ISE_PRECOMP%" == "" (
	set ISE_PRECOMP=%ISE_EIFFEL%\precomp\spec\%ISE_PLATFORM%
)

rem Performing non-void safe threaded precompilations
cd /d %ISE_PRECOMP%
%ISE_EIFFEL%\studio\spec\%ISE_PLATFORM%\bin\ec.exe -config base.ecf -precompile -c_compile %2
%ISE_EIFFEL%\studio\spec\%ISE_PLATFORM%\bin\ec.exe -config base-mt.ecf -precompile -c_compile %2

rem Performing void-safe precompilation
%ISE_EIFFEL%\studio\spec\%ISE_PLATFORM%\bin\ec.exe -config base-safe.ecf -precompile -c_compile %2
%ISE_EIFFEL%\studio\spec\%ISE_PLATFORM%\bin\ec.exe -config base-scoop-safe.ecf -precompile -c_compile %2

rem Launch EiffelWeasel tests
cd /d %TMP_PATH%

if "%~1" == "" (
	set output_file=dummy_to_make_DOS_happy
) else (
	set output_file=%1
)

if "%~1" == "" (
	echo Error: Missing argument: output_file_name.
	echo Usage:
	echo %~nx0 output_file_name [-clean] [nosvn]
) else (
	if "%~1" == "no" (
		echo "Eweasel not launched per user request"
	) else (
		%EWEASEL_COMMAND% -order -catalog %EWEASEL%\control\catalog > %output_file%
	)
)
