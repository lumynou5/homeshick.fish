if not test -e $__fish_config_dir/functions/homeshick.fish
  ln -s ~/.homesick/repos/homeshick/homeshick.fish $__fish_config_dir/functions/homeshick.fish
end
if not test -e $__fish_config_dir/completions/homeshick.fish
  ln -s ~/.homesick/repos/homeshick/completions/homeshick.fish $__fish_config_dir/completions/homeshick.fish
end

function _homeshick_install --on-event homeshick_install
  if not test -e ~/.homesick/repos/homeshick/
    git clone --depth 1 https://github.com/andsens/homeshick.git ~/.homesick/repos/homeshick/
  else
    echo "`~/.homesick/repos/homeshick/` exists already, please remove it first."
    echo "homeshick is not cloned. You should clone it manually according to its readme, like:"
    echo -ns "git clone --depth 1 https://github.com/andsens/homeshick.git ~/.homesick/repos/homeshick" | fish_indent --ansi
  end
end

function _homeshick_uninstall --on-event homeshick_uninstall
  if test -d ~/.homesick/repos/homeshick/
    rm -rf ~/.homesick/repos/homeshick/
  end
  rm $__fish_config_dir/functions/homeshick.fish $__fish_config_dir/completions/homeshick.fish
end
