# Defined in - @ line 1
function gac --wraps='git add . && git commit' --description 'alias gac=git add . && git commit'
  git add . && git commit $argv;
end
