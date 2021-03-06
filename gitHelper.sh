#! /bin/bash

# ===============修改podspec的版本号===========================

PodName="NoxmobiMediationStartAppAdapter"

echo "\n🔥当前版本号："
# 打印一下当前情况
#sed -n '/Mark/ p' $PodName.podspec
currentLine=`cat $PodName.podspec | grep "Mark"`
srcVer=${currentLine#*\"}
srcVer=${srcVer%%\"*}
echo "$srcVer"

echo "\n🔥是否继续执行?[y/n]"
read flag
if [[ "$flag" != "y" ]]
then
    exit 101
fi

#一顿Git操作
echo "\n🔥添加到暂存区 git add . ："
gitAddRes=`git add .`

echo "\n🔥提交 git commit："
gitCommitRes=`git commit -m v$srcVer`
echo "$gitCommitRes"

echo "\n🔥推送到远程 git push："
gitPushRes=`git push origin master`
echo "$gitPushRes"

echo "\n🔥打本地标签 git tag："
gitTagRes=`git tag $srcVer`

echo "\n🔥推送标签 git tag："
gitPushTagRes=`git push origin $srcVer`
echo "$gitPushTagRes"
