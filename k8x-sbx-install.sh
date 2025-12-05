#!/usr/bin/env bash

curl -fsSL https://raw.githubusercontent.com/reverbdotcom/gists/refs/heads/main/k8x.Brewfile \
    | brew bundle install --file=- \
    && export GOPRIVATE=github.com/reverbdotcom/k8x \
    && go install github.com/reverbdotcom/k8x@main \
    && { rehash || true; } \
    && { asdf reshim || true; }

brew tap reverbdotcom/sbx git@github.com:reverbdotcom/sbx.git
brew update
brew install sbx
