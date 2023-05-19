APP_DIR=$HOME/Library/Application\ Support/NoMacMusic
LOGIN_ITEM_NAME=NoMacMusic-by-afixer-app

pkill -f "NoMacMusic-by-afixer-app"
pkill -f "NoMacMusicCli-by-afixer-app"

osascript -e "tell application \"System Events\" to delete login item \"$LOGIN_ITEM_NAME\""

rm -Rf $APP_DIR

echo "Uninstall complete"