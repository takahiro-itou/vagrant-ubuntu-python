#!/bin/bash  -xe

echo  Provisioning  PyEnv  ${USER} for ${HOSTNAME}
test  -f  ${HOME}/.provision.pyenv  &&  exit 0

pyenvRoot=${HOME}/.pyenv
venvPath=${pyenvRoot}/plugins/pyenv-virtualenv

git  clone  https://github.com/yyuu/pyenv.git  ${pyenvRoot}
git  clone  https://github.com/yyuu/pyenv-virtualenv.git  ${venvPath}

source  ${HOME}/LocalSettings/Bash/StartPyEnv.sh

venvName='miniconda3-4.3.21'
pyenv   install   ${venvName}
pyenv   activate  ${venvName}

pythonRoot=${pyenvRoot}/versions/${venvName}
pythonBinary=${pythonRoot}/bin/python

date  >  ${HOME}/.provision.pyenv
