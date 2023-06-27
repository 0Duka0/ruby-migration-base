#!/bin/sh

if [ ! -e "./conf/database.yml" ]; then
  echo "migration ディレクトリ直下で実行してください"
  exit
fi

# tool の読み込み
. ./db/migration_tool.sh
if [ $? != 0 ]; then
  exit
fi

echo $ENV

bundle exec ridgepole -E $ENV -c conf/database.yml -f db/schema_list.rb --apply --dry-run
