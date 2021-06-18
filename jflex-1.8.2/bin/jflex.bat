@echo off
REM Please adjust JFLEX_HOME and JFLEX_VERSION to suit your needs
REM (please do not add a trailing backslash)

if not defined JFLEX_HOME set JFLEX_HOME=C:\Webs\fac21sa\jflex-1.8.2
if not defined JFLEX_VERSION set JFLEX_VERSION=1.8.2
if not defined JAVA_HOME set JAVA_HOME=C:\Program Files\Java\jdk-15.0.1

java -Xmx128m -jar "%JFLEX_HOME%\lib\jflex-full-%JFLEX_VERSION%.jar" %*
