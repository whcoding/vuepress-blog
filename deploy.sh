#!/usr/bin/env sh
# 确保脚本抛出遇到的错 误
set -e
npm run build # 生成静态文件
cd docs/.vuepress/dist # 进入生成的文件夹

# deploy to github
echo 'whcoding.com' > CNAME
if [ -z "$GITHUB_TOKEN" ]; then
  msg='deploy'
  githubUrl=git@github.com:whcoding/whcoding.github.io.git
else
  msg='来自github action的自动部署'
  githubUrl=https://whcoding:${GITHUB_TOKEN}git@github.com:whcoding/whcoding.github.io.git
  git config --global user.name "whcoding"
  git config --global user.email "840346763@qq.com"
fi
git init
git add -A
git commit -m "${msg}"
git push -f $githubUrl master # 推送到github

# deploy to coding 12
# echo 'www.xugaoyi.com\nxugaoyi.com' > CNAME  # 自定义域名
# if [ -z "$CODING_TOKEN" ]; then  # -z 字符串 长度为0则为true；$CODING_TOKEN来自于github仓库`Settings/Secrets`设置的私密环境变量
#   codingUrl=git@git.dev.tencent.com:xugaoyi/xugaoyi.git
# else
#   codingUrl=https://xugaoyi:${CODING_TOKEN}@git.dev.tencent.com/xugaoyi/xugaoyi.git
# fi
# git add -A
# git commit -m "${msg}"
# git push -f $codingUrl master # 推送到coding

# deploy to tencent server



cd -
rm -rf docs/.vuepress/dist
