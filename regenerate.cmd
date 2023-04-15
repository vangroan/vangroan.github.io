echo off
rem Serve a development server

set PY=
set PELICAN=pelican
set PELICANOPTS=

set BASEDIR=%cd%
set INPUTDIR=%BASEDIR%\content
set OUTPUTDIR=%BASEDIR%\output
set CONFFILE=%BASEDIR%\pelicanconf.py
set PUBLISHCONF=%BASEDIR%\publishconf.py

set GITHUB_PAGES_BRANCH=main


%PELICAN% %INPUTDIR% -o %OUTPUTDIR% -s %CONFFILE% %PELICANOPTS%
