set TZ="Europe/London"
Rscript.exe "%RECIPE_DIR%"\build.R
"%PYTHON%" -m pip install . -vv
