
# Path to Windows Phone import folder
ORIGIN="/cygdrive/c/Users/Anna/Pictures/From Windows Phone/Camera Roll/"
ROOT=`pwd`
mv "$ORIGIN"* .

for file in `ls *.jpg *.mp4`
do
	YEAR=${file:3:4};

	MONTH=${file:7:2};
	
	# If the year directory does not exist, create it
	if [[ ! -d ./$YEAR ]]
	then
		echo "Creating new directory $ROOT/$YEAR"
		mkdir ./$YEAR
	fi
	
	# If the year/month directory does not exist, create it
	if [[ ! -d ./$YEAR/$MONTH ]]
	then
		echo "Creating new directory $ROOT/$YEAR/$MONTH"
		mkdir ./$YEAR/$MONTH
	fi
	
	mv $file ./$YEAR/$MONTH/
	
done
