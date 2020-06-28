#!/bin/bash

pyenvRoot=${HOME}/.pyenv

export  PYENV_ROOT=${pyenvRoot}
export  PATH=${pyenvRoot}/bin:${PATH}
eval    "$(pyenv  init  -)"

