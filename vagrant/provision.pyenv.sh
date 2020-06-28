#!/bin/bash  -xue

echo  Provisioning  PyEnv  ${USER} for ${HOSTNAME}
test  -f  ${HOME}/.provision.pyenv  &&  exit 0

pyenvRoot=${HOME}/.pyenv
venvPath=${pyenvRoot}/plugins/pyenv-virtualenv

git  clone  https://github.com/yyuu/pyenv.git  ${pyenvRoot}
git  clone  https://github.com/yyuu/pyenv-virtualenv.git  ${venvPath}

date  >  ${HOME}/.provision.pyenv
