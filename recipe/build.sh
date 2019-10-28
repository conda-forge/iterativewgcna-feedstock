if [[ $(uname) != Darwin ]] ; then
    TZ="Europe/London" Rscript ${RECIPE_DIR}/build.R
fi
${PYTHON} -m pip install . -vv