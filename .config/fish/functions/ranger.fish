# Defined in - @ line 1
function ranger --wraps='ranger --confdir /home/jurek/.config/ranger/rc.conf' --description 'alias ranger=ranger --confdir /home/jurek/.config/ranger/rc.conf'
 command ranger --confdir /home/jurek/.config/ranger/rc.conf $argv;
end
