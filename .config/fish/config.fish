set -U fish_key_bindings fish_vi_key_bindings
bind -M insert jk 'if commandline -P; commandline -f cancel; else; set fish_bind_mode default; commandline -f backward-char repaint-mode; end'
starship init fish | source
fish_add_path /home/jurek/.cargo/bin/
fish_add_path /home/jurek/bin/
zoxide init fish --cmd cd | source
