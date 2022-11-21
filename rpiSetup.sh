echo "Installing MongoDB"
wget -qO - https://www.mongodb.org/static/pgp/server-4.4.asc | sudo apt-key add -
echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu focal/mongodb-org/4.4 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-4.4.list
sudo apt-get update
sudo apt-get install -y mongodb-org
sudo systemctl daemon-reload

sudo systemctl enable mongod
sudo systemctl start mongod
sudo systemctl status mongod


echo "Setting up Bot Enviroment"
sudo apt install chromium-browser
npm install
sudo npm install pm2 -g

echo "Starting"
source rpiStart.sh
echo "bot.js is running!!!!"