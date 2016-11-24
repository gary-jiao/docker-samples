## 搭建npm私服的Dockerfile

参考教程：[CNPM搭建私有的NPM服务](http://blog.fens.me/nodejs-cnpm-npm/)


	docker build -t cnpmjs .
	
	docker run -d --name cnpmjs \
	         -v /opt/docker/cnpmjs/CMD:/usr/local/bin/CMD \
			 -v /opt/docker/cnpmjs/app/config/index.js:/opt/cnpmjs.org/config/index.js \
	         -p 7001:7001 -p 7002:7002 -p 20022:22 -p 23306:3306 \ 
	         cnpmjs

目前还不知道下载数据的目录是哪个，所以无法挂载。


以下是基于centos的调用，但centos在启动mysql上太麻烦了，所以改用ubuntu  
- docker run -d --privileged --name cnpmjs -p 23306:3306 -p 7001:7001 -p 7002:7002 -p 23322:22 cnpmjs /usr/sbin/init

CNPM里的几个指令：
- npm run dev：調試模式啓動；
- npm run test：跑測試；
- npm run start：啓動 CNPM；
- npm run status：查看 CNPM 啓動狀態；
- npm run stop：停止 CNPM。

[CNPM的配置字段参考](https://xcoder.in/2016/07/09/lets-cnpm-base-deploy/)：
- enableCluster：是否啓用 cluster-worker 模式啓動服務，默認 false，生產環節推薦爲 true;
- registryPort：API 專用的 registry 服務端口，默認 7001；
- webPort：Web 服務端口，默認 7002；
- bindingHost：監聽綁定的 Host，默認爲 127.0.0.1，如果外面架了一層本地的 Nginx 反向代理或者 Apache 反向代理的話推薦不用改；
- sessionSecret：session 用的鹽；
- logdir：日誌目錄；
- uploadDir：臨時上傳文件目錄；
- viewCache：視圖模板緩存是否開啓，默認爲 false；
- enableCompress：是否開啓 gzip 壓縮，默認爲 false；
- admins：管理員們，這是一個 JSON Object，對應各鍵名爲各管理員的用戶名，鍵值爲其郵箱，默認爲 { fengmk2: 'fengmk2@gmail.com', admin: 'admin@cnpmjs.org', dead_horse: 'dead_horse@qq.com' }；
- logoURL：Logo 地址，不過對於我這個已經把 CNPM 前端改得面目全非的人來說已經忽略了這個配置了；
- adBanner：廣告 Banner 的地址；
- customReadmeFile：實際上我們看到的 cnpmjs.org 首頁中間一大堆冗長的介紹是一個 Markdown 文件轉化而成的，你可以設置該項來自行替換這個文件；
- customFooter：自定義頁腳模板；
- npmClientName：默認爲 cnpm，如果你有自己開發或者 fork 的 npm 客戶端的話請改成自己的 CLI 命令，這個應該會在一些頁面的說明處替換成你所寫的；
- backupFilePrefix：備份目錄；
- database：數據庫相關配置，爲一個對象，默認如果不配置將會是一個 ~/.cnpmjs.org/data.sqlite 的 SQLite；
- db：數據的庫名；
	- username：數據庫用戶名；
	- password：數據庫密碼；
	- dialect：數據庫適配器，可選 "mysql"、"sqlite"、"postgres"、"mariadb"，默認爲 "sqlite"；
	- hsot：數據庫地址；
	- port：數據庫端口；
	- pool：數據庫連接池相關配置，爲一個對象；
		- maxConnections：最大連接數，默認爲 10；
		- minConnections：最小連接數，默認爲 0；
		- maxIdleTime：單條鏈接最大空閒時間，默認爲 30000 毫秒；
	- storege：僅對 SQLite 配置有效，數據庫地址，默認爲 ~/.cnpmjs/data.sqlite；
- nfs：包文件系統處理對象，爲一個 Node.js 對象，默認是 fs-cnpm 這個包，並且配置在 ~/.cnpmjs/nfs 目錄下，也就是說默認所有同步的包都會被放在這個目錄下；開發者可以使用別的一些文件系統插件（如上傳到又拍雲等）,又或者自己去按接口開發一個邏輯層，這些都是後話了；
- registryHost：暫時還未試過，我猜是用於 Web 頁面顯示用的，默認爲 r.cnpmjs.org；
- enablePrivate：是否開啓私有模式，默認爲 false；
	- 如果是私有模式則只有管理員能發佈包，其它人只能從源站同步包；
	- 如果是非私有模式則所有登錄用戶都能發佈包；
- scopes：非管理員發佈包的時候只能用以 scopes 裏面列舉的命名空間爲前綴來發布，如果沒設置則無法發佈，也就是說這是一個必填項，默認爲 [ '@cnpm', '@cnpmtest', '@cnpm-test' ]，據蘇千大大解釋是爲了便於管理以及讓公司的員工自覺按需發佈；更多關於 NPM scope 的說明請參見 npm-scope；
- privatePackages：就如該配置項的註釋所述，出於歷史包袱的原因，有些已經存在的私有包（可能之前是用 Git 的方式安裝的）並沒有以命名空間的形式來命名，而這種包本來是無法上傳到 CNPM 的，這個配置項數組就是用來加這些例外白名單的，默認爲一個空數組；
- sourceNpmRegistry：更新源 NPM 的 registry 地址，默認爲 https://registry.npm.taobao.org；
- sourceNpmRegistryIsCNpm：源 registry 是否爲 CNPM，默認爲 true，如果你使用的源是官方 NPM 源，請將其設爲 false；
- syncByInstall：如果安裝包的時候發現包不存在，則嘗試從更新源同步，默認爲 true；
- syncModel：更新模式（不過我覺得是個 typo），有下面幾種模式可以選擇，默認爲 "none";
	- "none"：永不同步，只管理私有用戶上傳的包，其它源包會直接從源站獲取；
	- "exist"：定時同步已經存在於數據庫的包；
	- "all"：定時同步所有源站的包；
- syncInterval：同步間隔，默認爲 "10m" 即十分鐘；
- syncDevDependencies：是否同步每個包裏面的 devDependencies 包們，默認爲 false；
- badgeSubject：包的 badge 顯示的名字，默認爲 cnpm；
- userService：用戶驗證接口，默認爲 null，即無用戶相關功能也就是無法有用戶去上傳包，該部分需要自己實現接口功能並配置，如與公司的 Gitlab 相對接，這也是後話了；
- alwaysAuth：是否始終需要用戶驗證，即便是 $ cnpm install 等命令；
- httpProxy：代理地址設置，用於你在牆內源站在牆外的情況。