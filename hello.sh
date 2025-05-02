# cd "/cygdrive/c/Users/nemo6/Desktop"
alias cls='clear'

# bash function =>

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

# bash function <=

export HISTCONTROL=$HISTCONTROL${HISTCONTROL+,}ignoredups
# export HISTCONTROL=ignoreboth:erasedups
HISTIGNORE='exit'

# num=$(cat C:/cygwin64/home/Miguel/file.txt | tr -cd '[:digit:].-')
# if [ $num -eq 0 ]; then
	# echo "first"
	# ((num++))
	# echo $num > C:/cygwin64/home/Miguel/file.txt
	# exec /cygdrive/c/cygwin64/bin/bash --login
# else
	# echo "second"
	# echo "0" > C:/cygwin64/home/Miguel/file.txt
# fi

# exec bash --login

# if cygwin start with no "--login" parameter
alias node='/cygdrive/c/Program\ Files/nodejs/node.exe'

# alias bash='/cygdrive/c/cygwin64/bin/bash'
# alias node='C:/Program\ Files/nodejs/node.exe'
