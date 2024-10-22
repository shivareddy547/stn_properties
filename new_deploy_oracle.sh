#!/bin/bash

# Replace these variables with your actual values
EC2_INSTANCE_IP="152.67.5.153"
KEY_FILE_PATH="/home/shivareddy/.ssh/id_rsa"
RAILS_REPO_URL="git@github.com:shivareddy547/stn_properties.git"
# ssh -i "/home/shivareddy/.ssh/id_rsa" ocp@89.168.59.40
# Connect to EC2 instance via SSH
# sudo ssh -i /home/shivareddy/.ssh/id_rsa opc@89.168.39.116
# sudo ssh -i /home/shivareddy/.ssh/id_ed25519 opc@89.168.59.40
ssh -i "$KEY_FILE_PATH" opc@"$EC2_INSTANCE_IP" << EOF
# sudo yum groupremove "everything"

pkill -9 rails
pkill -9 ruby
# Update the system
# sudo yum update -y

# Install dependencies
# sudo yum install git -y
# sudo amazon-linux-extras install epel -y
# sudo yum install nodejs -y
# sudo yum install yarn -y
# rm -rf ~/.rbenv
# rm -rf ~/.asdf
# rm -rf ~/.rvm
# source ~/.bashrc
# sudo yum install ruby-devel -y
# echo 'export PATH="$HOME/bin:$PATH"' >> ~/.bashrc
# source ~/.bashrc
# sudo dnf install wget
# wget https://cache.ruby-lang.org/pub/ruby/3.1/ruby-3.1.2.tar.gz
# sudo dnf install tar -y
# sudo yum install -y tar gcc make automake libtool bzip2 openssl-devel readline-devel zlib-devel git curl
# tar -xzvf ruby-3.1.2.tar.gz
# cd ruby-3.1.2
# ./configure
# make
# sudo make install -y
# mkdir ~/.gem
# echo 'export GEM_HOME=$HOME/.gem' >> ~/.bashrc
# echo 'export PATH=$HOME/.gem/bin:$PATH' >> ~/.bashrc
# source ~/.bashrc






# Install Ruby and Rails using RVM
# gpg2 --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
# \curl -sSL https://get.rvm.io | bash -s stable
# source ~/.rvm/scripts/rvm
# rvm install ruby 3.1.2
# rvm use 3.1.2
# gem install rails

# git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.12.0
# echo -e '\n. $HOME/.asdf/asdf.sh' >> ~/.bashrc
# echo -e '\n. $HOME/.asdf/completions/asdf.bash' >> ~/.bashrc
# source ~/.bashrc
# asdf plugin-add ruby https://github.com/asdf-vm/asdf-ruby.git
# asdf install ruby 3.1.2
# asdf global ruby 3.1.2
# git clone https://github.com/rbenv/rbenv.git ~/.rbenv
# echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
# echo 'eval "$(rbenv init -)"' >> ~/.bashrc
# source ~/.bashrc
# git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build
# rbenv install 3.1.2
# rbenv global 3.1.2
# gem install rails
# ruby -v
# rails -v
# gem install bundler


# Clone Rails application
git clone "$RAILS_REPO_URL"

# Install application dependencies

cd stn_properties
git fetch origin product_show_list_completed_22_10_2024-latest-evg
git checkout product_show_list_completed_22_10_2024-latest-evg
git pull origin product_show_list_completed_22_10_2024-latest-evg
bundle install --path vendor/bundle
rails db:create
rails db:migrate

# sudo dnf install -y https://download.postgresql.org/pub/repos/yum/reporpms/EL-9-x86_64/pgdg-redhat-repo-latest.noarch.rpm
# sudo dnf -qy module disable postgresql
# sudo dnf install -y postgresql14-server postgresql14
# sudo /usr/pgsql-14/bin/postgresql-14-setup initdb
# sudo systemctl start postgresql-14
# sudo systemctl enable postgresql-14

# sudo systemctl restart postgresql.service
# sudo systemctl restart postgresql-15
# sudo su - postgres
# psql

# CREATE USER myuser WITH PASSWORD 'mypassword' SUPERUSER;

# Configure database (update database.yml)
# Precompile assets
# bundle exec rake assets:precompile
# pkill -9 rails
# Start Rails application (using Puma as an example)
sudo iptables -t nat -I PREROUTING -p tcp --dport 80 -j REDIRECT --to-ports 3000
sudo iptables -t nat -I PREROUTING -p tcp --dport 443 -j REDIRECT --to-ports 3000
sudo iptables --flush
export APPLICATION_HOST="https://152.67.5.153"
sudo systemctl restart redis
bundle exec rails s -b 0.0.0.0 &
# bundle exec rails s -b 'ssl://0.0.0.0:3000?key=config/ssl1/key.pem&cert=config/ssl1/cert.pem' &
exit

EOF
