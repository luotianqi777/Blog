run: generate
	hexo server
push: generate
	hexo deploy
generate:
	hexo generate
install:
	npm install hexo-cli --save
	npm install hexo-server --save
	npm install hexo-deployer-git --save