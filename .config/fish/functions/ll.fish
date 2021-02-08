# Defined in - @ line 1
function ll --wraps='exa -laBgh --git --group-directories-first' --description 'alias ll=exa -laBgh --git --group-directories-first'
  exa -laBgh --git --group-directories-first $argv;
end
