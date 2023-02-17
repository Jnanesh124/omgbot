if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Jnanesh124/omgbot  /omgbot 
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /omgbot 
fi
cd /omgbot
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
