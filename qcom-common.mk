# Copyright (C) 2013 The CyanogenMod Project
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

COMMON_PATH := device/sony/qcom-common

PRODUCT_COPY_FILES += \
    $(COMMON_PATH)/config/media_codecs.xml:system/etc/media_codecs.xml

# QCOM Display
PRODUCT_PACKAGES += \
    libgenlock \
    liboverlay

# Omx
PRODUCT_PACKAGES += \
    mm-vdec-omx-test \
    mm-venc-omx-test720p \
    libdivxdrmdecrypt \
    libOmxVdec \
    libOmxVenc \
    libOmxCore \
    libstagefrighthw \
    libc2dcolorconvert

# Power
PRODUCT_PACKAGES += \
    power.qcom

# QCOM
PRODUCT_PROPERTY_OVERRIDES += \
    com.qc.hardware=true \
    dev.pm.dyn_samplingrate=1

# QC Perf
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.extension_library=/system/lib/libqc-opt.so

# OpenGL ES
PRODUCT_PROPERTY_OVERRIDES += \
    ro.opengles.version=131072

# QCOM Display
#PRODUCT_PROPERTY_OVERRIDES += \
#    debug.sf.hw=1 \
#    debug.egl.hw=1 \
#    debug.composition.type=dyn \
#    debug.mdpcomp.maxlayer=3 \
#    debug.enable.wl_log=1 \
#    debug.mdpcomp.logs=0

# Wifi
PRODUCT_PROPERTY_OVERRIDES += \
    wifi.interface=wlan0 \
    wifi.supplicant_scan_interval=15

# Include non-opensource parts if available
$(call inherit-product-if-exists, vendor/sony/qcom-common/common-vendor.mk)
