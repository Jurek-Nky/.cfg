# Defined in - @ line 1
function aptupg --wraps='sudo apt update && sudo apt upgrade -y' --description 'alias aptupg=sudo apt update && sudo apt upgrade -y'
  sudo apt update && sudo apt upgrade -y $argv;
end
