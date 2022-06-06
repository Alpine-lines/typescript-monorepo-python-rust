#!/usr/bin/env bash

set -x

yarn reset-cache

# Single clean workspace command:
# touch .env && mv .env .env-bak && git clean -dfX && mv .env-bak .env

rm -rf ./node_modules
rm -rf ./.expo
rm -rf ./.husky/_

rm -rf ./packages/common/ui/node_modules
rm -rf ./packages/desktop/.expo
rm -rf ./packages/common/ui/build
# rm -rf ./packages/common/ui/example
rm -rf ./packages/common/ui/coverage
rm -rf ./packages/common/ui/storybook-static

rm -rf ./packages/desktop/node_modules
rm -rf ./packages/desktop/.expo
rm -rf ./packages/desktop/__generated__
rm -rf ./packages/desktop/dist
rm -rf ./packages/desktop/build
rm -rf ./packages/desktop/build-electron
rm -rf ./packages/desktop/public/static/js-sdk
rm -rf ./packages/desktop/public/static/connect
rm -rf ./packages/desktop/public/static/preload.js

rm -rf ./packages/web/node_modules
rm -rf ./packages/web/.expo
rm -rf ./packages/web/dist

rm -rf ./packages/ext/node_modules
rm -rf ./packages/ext/.expo
rm -rf ./packages/ext/dist/*
