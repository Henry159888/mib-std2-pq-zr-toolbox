#!/bin/ksh
export TOPIC=skins/skin4
export MIBPATH=/tsd/hmi/Resources/skin4/ambienceColorMap.res
export SDPATH=$TOPIC/ambienceColorMap.res
export TYPE="file"

echo "This script will install custom skin4 ambienceColorMap.res"
echo

# Make backup folder
. /tsd/etc/persistence/esd/scripts/util_backup.sh

# Copy file(s) to unit
. /tsd/etc/persistence/esd/scripts/util_copy.sh

# Mount system partition in read/only mode
. /tsd/etc/persistence/esd/scripts/util_mount_ro.sh

echo
echo "Done. Please restart the unit."
exit 0