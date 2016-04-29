# DockerLibrary
  
docker run --name rails -it -v /vagrant/working:/root/working -p 3000:3000 pospome/ruby-for-development:1.0  
  
  
・開発用なのでrailsプロジェクトはホスト側で用意しておき、  
　ボリュームバインドでコンテナから触れるようにする。  
  
・rbenvを利用しているが、コンテナなのでrubyのバージョンは固定でいい。  
　現状は最新の stable をインストール。  
  
・いくつかのgemはインストールされているが、  
　bundle install は必要。  
  
・docker exec -it rails /bin/bash --login でコンテナにログインして  
　$ bundle install  
　$ bundle exec unicorn -c ./config/unicorn.rb  
　で起動する。  
