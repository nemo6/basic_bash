# cd "/cygdrive/c/Users/nemo6/Desktop"
# source ~/.bashrc

alias cls='clear'

# require("os").hostname()
# require("os").userInfo().username
# $USER

node_civet='
	;( async () => {
		if(process.argv.slice(1).length==0){process.exit(0)}
		;blob=`"civet autoLet"\n"civet coffee-comment"\n"civet coffeeInterpolation"\n"civet coffeePrototype"\n`
		+ require(`fs`).readFileSync( process.argv.slice(1)[0] + `.civet`, `utf8` )
		.replace( /(\w+)\?/g, "globalThis[`$1`]" );
		eval( await require(`C:/Users/${ require("os").userInfo().username }/AppData/Roaming/npm/node_modules/@danielx/civet`).compile( blob ) )
		// require(`fs`).writeFileSync("result.js",blob)
	})()
'

civet2(){
	node -e "$node_civet" "$1"
}

goo(){
	gcc -o $1.exe $1.c
}

goo2(){
	gcc -o $1.exe $1.c
	./$1.exe
}

# pwd=$(  cygpath -w "$PWD" | tr '\\' '/' )
# file=$( cygpath -w "$0" | tr '\\' '/' )
# dir=$(  cygpath -w $(dirname $0) |  tr '\\' '/'  )

pwd2() {
	myVar="$PWD"
	myString="${myVar/\/cygdrive\//}"
	b="${myString:0:1}"
	z=${b^^}
	echo "${z}:/${myString:2}"
}

# export function "pwd" as command in bash ( i can use pwd in other command )
export -f pwd2

HISTIGNORE='exit'

# export HISTCONTROL=ignoreboth:erasedups
export HISTCONTROL=$HISTCONTROL${HISTCONTROL+,}ignoredups

# exec bash --login

# num=$( cat C:/cygwin64/home/$USER/file.txt | tr -cd '[:digit:].-' )
# if [ $num -eq 0 ]; then
	# echo "first"
	# ((num++))
	# echo $num > C:/cygwin64/home/$USER/file.txt
	# exec /cygdrive/c/cygwin64/bin/bash --login
# else
	# echo "second"
	# echo "0" > C:/cygwin64/home/$USER/file.txt
# fi

# if cygwin start with no "--login" parameter
alias node='/cygdrive/c/Program\ Files/nodejs/node.exe'

# alias bash='/cygdrive/c/cygwin64/bin/bash'
# alias bash='C:/w64devkit/bin/bash.exe'
# alias node='C:/Program\ Files/nodejs/node.exe'
