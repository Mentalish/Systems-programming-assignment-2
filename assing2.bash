if [ $# -ne 1 ]; then
   echo "No file"
   exit 1
fi

echo "$1"

sed -E -i.bak -f operators.sed "$1"
sed -E -i.bak -f conditionals.sed "$1"
sed -E -i.bak -f whitespace.sed "$1"