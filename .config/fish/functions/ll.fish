# Defined in - @ line 1
function ll --wraps='exa -laBgh --group-directories-first' --description 'alias ll=exa -laBgh --group-directories-first'
  exa -laBgh --group-directories-first $argv;
end
