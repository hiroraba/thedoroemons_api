sudo apt-get update
sudo apt-get install git -y
sudo apt-get install bundler -y
sudo apt-get install libsqlite3-dev -y
sudo apt-get install postgresql -y
sudo apt-get install libpq-dev -y
git clone https://github.com/thedoroemons/api.git
cd api
bundle install
rake db:setup
rake db:migrate
unicorn -c unicorn.rb -D
