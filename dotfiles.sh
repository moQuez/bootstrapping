if ! stow_path="$(type -p "stow")" || [[ -z $stow_path ]]; then
  echo "Stow isn't installed... Installing it with Brew..."
  brew install stow
else
  echo "Stow is installed already... Skipping Brew installation"
fi

