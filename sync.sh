#!/bin/sh

# set basedir of rc-files
basedir="$HOME/work/dotfiles"

# make static link from to $HOME dot files to ${basedir}/rc dir #{{{1
rc="${basedir}/shellrc"
for from in "${rc}"/.*; do
  # if files ...
  if [ -f "${from}" ]; then
    to="$HOME/$(basename "${from}")"
    rm -f "${to}"
    if [ ! -f "${to}" ]; then
      ln -s "${from}" "${to}"
    fi
  # if directories .... except ".", "..", ".svn"
  elif [ "${from}" != "${rc}/." ] && [ "${from}" != "${rc}/.." ] && [ "${from}" != "${rc}/.svn" ]; then
    to="$HOME/$(basename ${from})"
    rm -f "${to}"
    if [ ! -f "${to}" ]; then
      ln -s "${from}" "${to}"
    fi
  fi
done



# make static link from $HOME/bin/* to  basedir/bin/* #{{{1
bin="${basedir}/bin"
if [ ! -d "$HOME/bin" ]; then
  mkdir "$HOME/bin"
fi
for from in "${bin}"/*; do
  to="$HOME/bin/$(basename ${from})"
  # if exist, do nothing
  if [ -L ${to} ]; then
    continue
  fi
  if [ -f ${to} ]; then
    printf "overwrite %s ? (y/n [n]) " "$(basename ${to})"
    read -r ans
    if [ "${ans}" != "y" ]; then
      printf "not overwrite"
      continue
    fi
  fi
  ln -sf "${from}" "${to}"
done

