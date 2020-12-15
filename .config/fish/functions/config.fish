# Defined in - @ line 1
function config --wraps='git --git-dir=/home/jurek/.cfg --work-tree=/home/jurek' --description 'alias config=git --git-dir=/home/jurek/.cfg --work-tree=/home/jurek'
  git --git-dir=/home/jurek/.cfg --work-tree=/home/jurek $argv;
end
