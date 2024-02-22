function sudo --wraps=doas --description 'replace sudo with doas if available'
	if ! command -sq doas 
		set sudo (command -s sudo)
		$sudo $argv
	else
		doas $argv; 
	end
end
 
function cat --wraps=batcat --description 'replace cat with batcat if available'
	if ! command -sq batcat 
		set cat (command -s cat)
		$cat $argv	
	else
		batcat $argv; 
	end
end

function cp --wraps=xcp --description 'replace cp with xcp if available'
	if ! command -sq xcp 
		set cp (command -s cp)
		$cp $argv
	else
		xcp $argv; 
	end
end

function ll --wraps='exa -laBgh --group-directories-first' --description 'replace ls with exa if available'
	if ! command -sq exa
		set ls (command -s ls)
		$ls -la $argv
	else
		exa -laB --group-directories-first $argv;
	end
end

function llt --description 'list files using exa tree view'
 	if ! command -sq exa 
		echo exa not installed
	else
		if string match -qr '\d' "$argv[1]" # check if first argument is a number
			set argc (count $argv)
			# use first argument for treedepth and append all other args
				if test $argc -gt 1
					exa -lTB --git --group-directories-first -L "$argv[1]" $argv[2..$argc]
				else
					exa -lTB --git --group-directories-first -L "$argv[1]"
				end
 		else
			# use default treedepth of 3
			exa -lTB --git --group-directories-first -L 3 $argv 
		end
	end
end

function rm --wraps=rip --description 'replace rm with rip if available'
	if ! command -sq rip 
		set rm (command -s rm)
		$rm $argv;
	else
		rip $argv; 
	end
end
