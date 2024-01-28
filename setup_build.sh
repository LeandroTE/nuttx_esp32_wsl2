#!/usr/bin/env bash
#Build Arduino Yun Image for Dragino2. MS14, HE. 

SFLAG=
AFLAG=
BFLAG=

APP="Chronos"
BUILD_TIME=`date +%s`

REPO_PATH=$(pwd)
VERSION="12.04"
NUTTX_PATH="nuttx"
ARCH="xtensa"
CHIP="esp32s3"
BOARD="esp32s3-devkit"

while getopts 'a:p:sh' OPTION
do
	case $OPTION in
	a)	
		AFLAG=1
		APP="$OPTARG"
		;;

	h|?)	printf "Setup Image for ChronOS\n\n"
		printf "Usage: %s [-p <openwrt_source_path>] [-a <application>] [-s] \n" $(basename $0) >&2
		printf "	-a: Configuration\n"
		printf "\n"
		exit 1
		;;
	esac
done

shift $(($OPTIND - 1))

BUILD_TIME="`date`"

echo ""

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