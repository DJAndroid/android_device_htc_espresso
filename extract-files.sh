#!/bin/sh

# Copyright (C) 2010 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

DEVICE=espresso

mkdir -p ../../../vendor/htc/$DEVICE/proprietary

adb pull /system/bin/akmd ../../../vendor/htc/$DEVICE/proprietary/akmd

adb pull /system/etc/AudioFilter.csv ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/etc/AudioPara4.csv ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/etc/AudioPara4_WB.csv ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/etc/AudioPreProcess.csv ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/etc/pvasflocal.cfg ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/etc/firmware/wl1271.bin ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/etc/firmware/yamato_pm4.fw ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/etc/firmware/yamato_pfp.fw ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/etc/wifi/Fw1273_CHIP.bin ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/lib/libaudioeq.so ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/lib/libgps.so ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/lib/libcamera.so ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/lib/libgsl.so ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/lib/libhtc_acoustic.so ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/lib/libhtc_ril.so ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/lib/libmm-adspsvc.so ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/lib/libmmclient.so ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/lib/libOmxH264Dec.so ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/lib/libOmxMpeg4Dec.so ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/lib/libOmxVidEnc.so ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/lib/libomx_wmadec_sharedlibrary.so ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/lib/libomx_wmvdec_sharedlibrary.so ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/lib/libpvasfcommon.so ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/lib/libpvasflocalpbreg.so ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/lib/libpvasflocalpb.so ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/lib/libspeech.so ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/lib/egl/libEGL_adreno200.so ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/lib/egl/libGLES_android.so ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/lib/egl/libGLESv1_CM_adreno200.so ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/lib/egl/libGLESv2_adreno200.so ../../../vendor/htc/$DEVICE/proprietary

chmod 755 ../../../vendor/htc/$DEVICE/proprietary/akmd

(cat << EOF) | sed s/__DEVICE__/$DEVICE/g > ../../../vendor/htc/$DEVICE/$DEVICE-vendor-blobs.mk
# Copyright (C) 2010 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# This file is generated by device/htc/__DEVICE__/extract-files.sh

PRODUCT_COPY_FILES := \\
    vendor/htc/__DEVICE__/proprietary/libgps.so:obj/lib/libgps.so \\
    vendor/htc/__DEVICE__/proprietary/libcamera.so:obj/lib/libcamera.so

PRODUCT_COPY_FILES += \\
    vendor/htc/__DEVICE__/proprietary/akmd:system/bin/akmd \\
    vendor/htc/__DEVICE__/proprietary/wl1271.bin:system/etc/firmware/wl1271.bin \\
    vendor/htc/__DEVICE__/proprietary/yamato_pm4.fw:system/etc/firmware/yamato_pm4.fw \\
    vendor/htc/__DEVICE__/proprietary/yamato_pfp.fw:system/etc/firmware/yamato_pfp.fw \\
    vendor/htc/__DEVICE__/proprietary/Fw1273_CHIP.bin:system/etc/wifi/Fw1273_CHIP.bin \\
    vendor/htc/__DEVICE__/proprietary/AudioPara4.csv:system/etc/AudioPara4.csv \\
    vendor/htc/__DEVICE__/proprietary/AudioPara4_WB.csv:system/etc/AudioPara4_WB.csv \\
    vendor/htc/__DEVICE__/proprietary/AudioFilter.csv:system/etc/AudioFilter.csv \\
    vendor/htc/__DEVICE__/proprietary/AudioPreProcess.csv:system/etc/AudioPreProcess.csv \\
    vendor/htc/__DEVICE__/proprietary/libEGL_adreno200.so:system/lib/egl/libEGL_adreno200.so \\
    vendor/htc/__DEVICE__/proprietary/libGLES_android.so:system/lib/egl/libGLES_android.so \\
    vendor/htc/__DEVICE__/proprietary/libGLESv1_CM_adreno200.so:system/lib/egl/libGLESv1_CM_adreno200.so \\
    vendor/htc/__DEVICE__/proprietary/libGLESv2_adreno200.so:system/lib/egl/libGLESv2_adreno200.so \\
    vendor/htc/__DEVICE__/proprietary/libgps.so:system/lib/libgps.so \\
    vendor/htc/__DEVICE__/proprietary/libgsl.so:system/lib/libgsl.so \\
    vendor/htc/__DEVICE__/proprietary/libaudioeq.so:system/lib/libaudioeq.so \\
    vendor/htc/__DEVICE__/proprietary/libhtc_acoustic.so:system/lib/libhtc_acoustic.so \\
    vendor/htc/__DEVICE__/proprietary/libhtc_ril.so:system/lib/libhtc_ril.so \\
    vendor/htc/__DEVICE__/proprietary/libmm-adspsvc.so:system/lib/libmm-adspsvc.so \\
    vendor/htc/__DEVICE__/proprietary/libmmclient.so:system/lib/libmmclient.so \\
    vendor/htc/__DEVICE__/proprietary/libcamera.so:system/lib/libcamera.so \\
    vendor/htc/__DEVICE__/proprietary/libOmxH264Dec.so:system/lib/libOmxH264Dec.so \\
    vendor/htc/__DEVICE__/proprietary/libOmxMpeg4Dec.so:system/lib/libOmxMpeg4Dec.so \\
    vendor/htc/__DEVICE__/proprietary/libOmxVidEnc.so:system/lib/libOmxVidEnc.so \\
    vendor/htc/__DEVICE__/proprietary/libspeech.so:system/lib/libspeech.so \\
    vendor/htc/__DEVICE__/proprietary/pvasflocal.cfg:system/etc/pvasflocal.cfg \\
    vendor/htc/__DEVICE__/proprietary/libomx_wmadec_sharedlibrary.so:system/lib/libomx_wmadec_sharedlibrary.so \\
    vendor/htc/__DEVICE__/proprietary/libomx_wmvdec_sharedlibrary.so:system/lib/libomx_wmvdec_sharedlibrary.so \\
    vendor/htc/__DEVICE__/proprietary/libpvasfcommon.so:system/lib/libpvasfcommon.so \\
    vendor/htc/__DEVICE__/proprietary/libpvasflocalpbreg.so:system/lib/libpvasflocalpbreg.so \\
    vendor/htc/__DEVICE__/proprietary/libpvasflocalpb.so:system/lib/libpvasflocalpb.so

EOF

./setup-makefiles.sh
