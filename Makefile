run: generate
	hexo server
push: generate
	hexo deploy
generate:
	hexo generate
install:
	npm install -g hexo-cli
	npm install hexo-server --save
	npm install hexo-deployer-git --save
	git clone git@github.com:theme-next/hexo-theme-next.git themes/next