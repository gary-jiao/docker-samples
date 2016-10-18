cnt=10000
output="/opt/gen/output.txt"
[ ! -z "$1" ] && export cnt=$1
[ ! -z "$2" ] && export output="$2"

java -cp .:commons-io.jar:commons-lang.jar test.GenerateFile $cnt $output