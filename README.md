## 按照npm包
```bash
# 全局安装hexo
npm i hexo -g 
# 安装其他依赖
npm i 
```

## 创建新文章
```bash
hexo new post articleName
```
文章创建好后，修改public下的archives的日期，添加新日期（目前没有读取配置，所以需要手动添加）

## 启动
```
npm run dev
```

## 构建
```bash
npm run build
```
构建成功后直接提交至git即可，已配置好，不需要其他步骤