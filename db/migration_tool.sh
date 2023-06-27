#!/bin/bash

# 環境変数の確認
echo $ENV
if [ "$ENV" = "" ]; then
  echo "ENV is null!"
  exit
fi

if [ "$PASS" = "" ]; then
  echo "PASS is null!"
  exit
fi
