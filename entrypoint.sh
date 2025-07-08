#!/bin/sh

curl -LO https://raw.githubusercontent.com/dennisfarmer/dotfiles/refs/heads/main/dennisfj.sh _site/dennisfj.sh
npx eleventy --output=$INPUT_TEMPLATE_DIR
