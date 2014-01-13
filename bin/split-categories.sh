SRC=$1

if [ -z "$SRC" ]; then
	echo 'Usage: split-categories.sh <filename>'
fi

for category in `cat "${SRC}" | cut -d ' ' -f 1 | grep -v -P '^[\t ]*$' | cut -d '/' -f 1 | grep -o -P '[a-z]+(-[a-z]+)?' | sort | uniq`; do
	grep $category "${SRC}" > $category
done


