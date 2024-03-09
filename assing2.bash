if [ $# -ne 1 ]; then
   echo "No file"
   exit 1
fi

echo "$1"

sed -E -i -f operators.sed "$1"
sed -E -i -f conditionals.sed "$1"
sed -E -i -f whitespace.sed "$1"