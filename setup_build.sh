#!/usr/bin/env bash
#Build Arduino Yun Image for Dragino2. MS14, HE. 

SFLAG=
AFLAG=
BFLAG=

APP="Chronos"
BUILD_TIME=`date +%s`

# Architecture specific variables
REPO_PATH=$(pwd)
VERSION="12.04"
NUTTX_PATH="nuttx"
ARCH="xtensa"
CHIP="esp32s3"
BOARD="esp32s3-devkit"

#Modules specific variables
MODULES_NAME="modules"
MODULES_PATH="CustomApps"
APP_PATH="apps" 

while getopts 'a:bh' OPTION
do
	case $OPTION in
	a)	
		AFLAG=1
		APP="$OPTARG"
		;;
	b)	
		BFLAG=1
		;;

	h|?)	printf "Setup Image for ChronOS\n\n"
		printf "Usage: %s [-a <board>] \n" $(basename $0) >&2
		printf "	-a: Configuration\n"
		printf "\n"
		exit 1
		;;
	esac
done

shift $(($OPTIND - 1))

BUILD_TIME="`date`"

echo ""
if [ ! -z $SFLAG ];then
	if [ -f config/$APP/defconfig ];then
		echo ""
		echo "Found customized .config files"
	else 
		echo ""
		echo "***Can't find config/$APP/defconfig file exiting***"
		exit
	fi

	echo "Creates symbolic to archo board"
	echo "First erease old symbolic link"
	rm -rf ./$NUTTX_PATH/boards/$ARCH/$CHIP/$BOARD/configs/$APP
	ln -sr ./config/$APP ./$NUTTX_PATH/boards/$ARCH/$CHIP/$BOARD/configs/
	echo "Running config script"
	./$NUTTX_PATH/tools/configure.sh -l $BOARD:$APP
fi

if [ ! -z $BFLAG ];then
	echo "Copy Modules folder to APP folder"
	# Check if the source directory exists
	if [ ! -d "$MODULES_PATH" ]; then
		echo "Source directory does not exist: $MODULES_PATH"
		exit 1
	fi
	# Check if the destination directory exists, create it if not
	if [ ! -d "$APP_PATH" ]; then
		echo "Destination directory does not exist: $APP_PATH"
		exit 1
	fi

	#Copy Modules folder to APP folder
	rm -rf ./$APP_PATH/$MODULES_NAME	
	ln -sr ./$MODULES_PATH ./$APP_PATH/

	echo "Symbolic links creation completed."
fi