if test -d ~/.homesick/repos/homeshick/
  source ~/.homesick/repos/homeshick/homeshick.fish
  source ~/.homesick/repos/homeshick/completions/homeshick.fish
end

function homeshick_install --on-event homeshick_install
  if not test -e ~/.homesick/repos/homeshick/
    git clone --depth 1 https://github.com/andsens/homeshick.git ~/.homesick/repos/homeshick/
  else
    echo "`~/.homesick/repos/homeshick/` exists already, please remove it first."
    echo "homeshick is not cloned. You should clone it manually according to its readme, like:"
    echo -ns "git clone --depth 1 https://github.com/andsens/homeshick.git ~/.homesick/repos/homeshick" | fish_indent --ansi
  end
end

function homeshick_uninstall --on-event homeshick_uninstall
  if test -d ~/.homesick/repos/homeshick/
    rm -rf ~/.homesick/repos/homeshick/
  end
end
