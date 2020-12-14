# Defined in - @ line 1
function reboot --wraps='systemctl reboot -i' --description 'alias reboot=systemctl reboot -i'
  systemctl reboot -i $argv;
end
