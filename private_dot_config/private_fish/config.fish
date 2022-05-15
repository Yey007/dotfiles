set fish_greeting

function fish_prompt
	set_color brblack
	echo -n "["(date "+%H:%M")"] "
	set_color blue
	echo -n (whoami)@(hostname)
	if [ $PWD != $HOME ]
		set_color brblack
		echo -n ':'
		set_color bryellow
		echo -n (basename $PWD)
	end
	set_color brmagenta
	printf '%s ' (__fish_git_prompt)
	set_color red
	echo -n '| '
	set_color normal
end

bind \t accept-autosuggestion

thefuck --alias | source
