MODDIR="${0%/*}"
SUSFS_BIN=/data/adb/ksu/bin/ksu_susfs
mount -t overlay -o lowerdir=/system/etc,upperdir=$MODDIR/system/etc,workdir=$MODDIR/worker KSU /system/etc
${SUSFS_BIN} add_sus_mount /system/etc
${SUSFS_BIN} add_try_umount /system/etc 1