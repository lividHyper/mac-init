## 1. set local concat with remote 
```
git init 
git remote add origin git@github.com:lividxu/mac-init.git  
git add . 
git ci -m 'init'
git push --set-upstream origin master

```

## 2. merge two differ origin branch 
```
branch master
branch main
git co master 
git merge main 
# INFO: fatal: 拒绝合并无关的历史 
git merge main  --allow-unrelated-histories


```