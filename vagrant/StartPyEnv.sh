#!/bin/bash

pyenvRoot=${HOME}/.pyenv

export  PYENV_VIRTUALENV_DISABLE_PROMPT=1
export  PYENV_ROOT=${pyenvRoot}
export  PATH=${pyenvRoot}/bin:${PATH}
eval    "$(pyenv  init  -)"
