#!/bin/bash

wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/IosevkaTerm.zip

filename=IosevkaTerm.zip

extension="${filename##*.}"

filename="${filename%.*}"

mkdir ${filename} && pushd ${filename}

unzip ../${filename}.${extension}

popd

mkdir -p ~/.fonts

mv ${filename} ~/.fonts/

fc-cache -fv
