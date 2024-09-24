
FILE=CodeNewRoman.zip

wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/$FILE



INSTALLATION_PATH="$HOME/.local/share/fonts/nerd-fonts"

mkdir -p "$INSTALLATION_PATH"
unzip "$FILE" -d $INSTALLATION_PATH
rm -f "$INSTALLATION_PATH/LICENSE.txt"
rm -f "$INSTALLATION_PATH/readme.md"
rm -f "$FILE"

fc-cache -vf

echo "Font installed."
