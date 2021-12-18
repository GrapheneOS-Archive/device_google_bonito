# Mitigation for Qualcomm apdp debug policy

# "fastboot oem sha1sum apdp" gives a sha1sum of 2E000FA7E85759C7F4C254D4D9C33EF481E459A7
# Thus we create a file, apdp.img using "dd if=/dev/zero of=apdp.img bs=262144 count=1"
# "sha1sum apdp.img" will produce the same hash
# A zeroed out policy means that no policy is set.

LOCAL_PATH := $(call my-dir)

$(call add-radio-file,radio/apdp.img)

# Mitigation for Qualcomm msadp debug policy

# "fastboot oem sha1sum msadp" gives a sha1sum of 2E000FA7E85759C7F4C254D4D9C33EF481E459A7
# Thus we create a file, msadp.img using "dd if=/dev/zero of=msadp.img bs=262144 count=1"
# "sha1sum msadp.img" will produce the same hash
# A zeroed out policy means that no policy is set.

$(call add-radio-file,radio/msadp.img)
