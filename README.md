# DockerLibrary

docker run --name r4 -it -p 3000:3000 -v /vagrant/working:/root/working pospome/ruby-for-development:1.0


・開発用なのでrailsプロジェクトはホスト側で用意しておき、  
　ボリュームバインドでコンテナから触れるようにする。  
  
・rbenvを利用しているが、コンテナなのでrubyのバージョンは固定でいい。  
　現状は最新の stable をインストール。  
  
・いくつかのgemはインストールされているが、  
　bundle install は必須。  
