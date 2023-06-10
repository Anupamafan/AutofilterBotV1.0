if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Chandansinghbot/AutofilterBotV1.0.git /AutoFilterBot
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /AutoFilterBot
fi
cd /PiroAutoFilterBot
pip3 install -U -r requirements.txt
echo "Starting AutoFilterBot...."
python3 bot.py
