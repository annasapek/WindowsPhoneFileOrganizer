#
# Windows Phone File Organizer
#

# Path to Windows Phone import folder
ORIGIN="/cygdrive/c/Users/username/Pictures/From Windows Phone/Camera Roll/"

# Destination directory
ROOT="/cygdrive/e/destination/directory/"

for file in `ls "$ORIGIN"`
do
	YEAR=${file:3:4}
	MONTH=${file:7:2}
	
	# If the year directory does not exist, create it
	if [[ ! -d "$ROOT"$YEAR ]]
	then
		echo "Creating new directory $ROOT/$YEAR"
		mkdir "$ROOT"$YEAR
	fi
	
	# If the year/month directory does not exist, create it
	if [[ ! -d "$ROOT"$YEAR/$MONTH ]]
	then
		echo "Creating new directory $ROOT/$YEAR/$MONTH"
		mkdir "$ROOT"$YEAR/$MONTH
	fi
	
	mv "$ORIGIN"$file "$ROOT"$YEAR/$MONTH/
done
