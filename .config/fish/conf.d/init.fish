function fish_greeting
	# #  display a random fortune, presented by a random cow, painted in a random color gradient ;)
	# set cowList (string split ".cow " (ls /usr/share/cowsay/cows/))
	# set cowCount (count $cowList)
	# fortune -a | cowsay -f $cowList[(random 1 $cowCount)] | lolcat -r 
end

function on_exit --on-event fish_exit
end
