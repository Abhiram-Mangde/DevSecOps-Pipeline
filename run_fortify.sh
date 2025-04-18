#!/bin/bash
# Assumes Fortify SCA is installed and available in PATH
sourceanalyzer -b myproject -clean
sourceanalyzer -b myproject ./app/*.js
sourceanalyzer -b myproject -scan -f fortify_output/fortify.fpr
