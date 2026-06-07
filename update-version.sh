#!/bin/bash
# update-version.sh - 自动更新文档版本号和日期
# 用法: ./update-version.sh [版本号]
# 不带参数时自动递增小版本号

INDEX_FILE="index.html"
CURRENT_VERSION=$(grep -oP '版本：v\K[0-9.]+' "$INDEX_FILE" | head -1)
TODAY=$(date "+%Y年%-m月%-d日")

if [ -n "$1" ]; then
    NEW_VERSION="$1"
else
    # 自动递增：v6.7 -> v6.8
    MAJOR=$(echo "$CURRENT_VERSION" | cut -d. -f1)
    MINOR=$(echo "$CURRENT_VERSION" | cut -d. -f2)
    NEW_VERSION="${MAJOR}.$((MINOR + 1))"
fi

echo "更新版本: $CURRENT_VERSION -> v$NEW_VERSION"
echo "更新日期: $TODAY"

# 更新首页日期
sed -i '' "s/更新日期：[0-9]*年[0-9]*月[0-9]*日/更新日期：$TODAY/g" "$INDEX_FILE"

# 更新底部版本信息
sed -i '' "s/版本：v[0-9.]*\([^)]*\)/版本：v$NEW_VERSION\1/g" "$INDEX_FILE"
sed -i '' "s/版本：v[0-9.]*$/版本：v$NEW_VERSION/g" "$INDEX_FILE"

# 更新title中的版本号
sed -i '' "s/产品介绍与上手指南 v[0-9.]*/产品介绍与上手指南 v$NEW_VERSION/g" "$INDEX_FILE"

echo "完成！"