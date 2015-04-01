# Windows Phone File Organizer

Bash script for Windows that organizes photos imported from a Windows phone into folders according to year and month. The Windows Phone app just dumps them all in one folder.

## Usage

Edit `line 6` to format the path according to the source directory:

`ORIGIN="/cygdrive/c/Users/username/Pictures/From Windows Phone/Camera Roll/"`

Edit `line 9` to format the path according to the destination directory:

`ROOT="/cygdrive/e/destination/directory/"`

Note that both these paths are cygwin-based.

Run the script from cygwin:

`bash arrange_files.sh`

