#!/bin/bash
myargs=()
help1="-h is for help."
verb1="-v is for Verbose."
deb1="-d is for Debug."

while [ $# -gt 0 ]; do
	echo "There are $# thing left to process on the cmd argument."
	myargs+=("$1")
	echo "Added '$1' to the myargs array"
	echo "Processing the '$1'."
	case $1 in
		-h )
			echo "You added \"-h\" for help."
			echo 'Processing -h'
			echo "$help1"
			echo "$verb1"
			echo "$deb1"
			;;
		-v )
			verbose="1"
			echo 'You added "-v" for verbose.'
			echo 'verbose mode is set to be on.'
			echo 'Processing "-v"'
			;;
		-d )
			debug=1
			case "$2" in
			[1-5] )
				echo "Debug mode is set to be ON."
				level=$2
				echo "You added \"-d\" for debug level $2."
				shift
				;;
				*)
				echo "Error: The debug option must be followed with a number within 1 to 5."
				shift
			esac
			;;
		*)
			errors=$1
			echo "Error: unkown inpute $errors."
			shift
			;;
	esac
	shift
	echo "Shifted command line, leaving $# things left to the cmd argument."
	echo "-----------------------------------------------------------------"
done
if [ "$verbose" == "1" ]; then
  echo "verbose mode is On."
else
  echo "verbose mode is Off."
fi
if [ "$debug" == "1" ]; then
  echo "Debug mode is On with level $level."
else
  echo "Debug mode is Off."
fi
#echo "No cmd argument found."
echo "Myarg() array contents ${myargs[@]}"
