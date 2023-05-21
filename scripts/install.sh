
APP_DIR=$HOME/Library/Application\ Support/NoMacMusic
APP_NAME=NoMacMusic-by-afixer-app.app
APP_PATH=$APP_DIR/$APP_NAME
LOGIN_ITEM_NAME=NoMacMusic-by-afixer-app
VERSION=1.0

echo "Installing No Mac Music"

echo "Downloading latest version"
TMP_ZIP_FILE=/tmp/NoMacMusic-by-afixer-app.zip
curl -sSL https://github.com/openhoangnc/NoMacMusic/releases/download/v$VERSION/NoMacMusic-by-afixer-app.zip -o $TMP_ZIP_FILE

if [ ! -f $TMP_ZIP_FILE ]; then
  echo "Error downloading No Mac Music"
  exit 1
fi

if [ -d "$APP_PATH" ]; then
    echo "Removing old app $APP_PATH"
    rm -Rf "$APP_PATH"
else
    echo "Creating app directory $APP_DIR"
    mkdir -p "$APP_DIR"
fi

echo "Extracting $APP_NAME to $APP_DIR"
ditto -xk $TMP_ZIP_FILE "$APP_DIR"

echo "Removing $TMP_ZIP_FILE"
rm "$TMP_ZIP_FILE"

echo "Creating login item for $APP_PATH"
osascript -e "tell application \"System Events\" to make login item at end with properties {path:\"$APP_PATH\", name:\"$LOGIN_ITEM_NAME\"}"

echo "Opening $APP_PATH"
open "$APP_PATH"

echo "Install complete"
