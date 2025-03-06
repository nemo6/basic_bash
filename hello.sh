alias cls='clear'
alias nodemon='nodemon --quiet'
alias view_reorder='node "C:/Users/nemo6/Dropbox/E lab2/a.code/command/nodejs-command/nodejs-view-reorder/app.js" "$(pwd)"'
alias du2='node "C:/Users/nemo6/Dropbox/E lab2/a.code/javascript/linux/du.js" "$(pwd)"'
alias du_hashx='node "C:/Users/nemo6/Dropbox/E lab2/a.code/javascript/linux/du_hashx.js" "$(pwd)"'
alias nodejs_imagemagik_resize_50p='node "C:/Users/nemo6/Dropbox/E lab2/a.code/command/nodejs-command/nodejs-imagemagik-resize-50p/app.js" "$(pwd)"'
alias compare_print='electron "C:/Users/nemo6/Dropbox/E lab2/a.code/command/nodejs-command/compare_print" "$(pwd)"'
alias bash='/cygdrive/c/cygwin64/bin/bash'

pwd () {
	myVar="$PWD"
	myString="${myVar/\/cygdrive\//}"
	b="${myString:0:1}"
	z=${b^^}
	echo "${z}:/${myString:2}"
}

coffee3 () {
	node "C:/z.558613213928.coffee.compiler/app.js"
	coffee "$1.compile.coffee"
}

coffee2 () {
	coffee "$1.coffee"
}

export -f pwd # export function "pwd" as command in bash ( i can use pwd in other command )
export HISTCONTROL=$HISTCONTROL${HISTCONTROL+,}ignoredups

HISTIGNORE='exit'

num=$(cat C:/cygwin64/home/nemo6/file.txt | tr -cd '[:digit:].-')

if [ $num -eq 0 ]; then
	echo "first"
	((num++))
	echo $num > C:/cygwin64/home/nemo6/file.txt
	exec bash --login
else
	echo "second"
	echo "0" > C:/cygwin64/home/nemo6/file.txt
fi

# exec bash --login
# cd "/cygdrive/c/Users/nemo6/Desktop"
# export HISTCONTROL=ignoreboth:erasedups
