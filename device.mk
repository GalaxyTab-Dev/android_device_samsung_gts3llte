#
# Copyright (C) 2016 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# call the proprietary setup
$(call inherit-product-if-exists, vendor/samsung/gts3llte/gts3llte-vendor.mk)

# Overlay
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Audio configuration
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/audio/mixer_paths.xml:system/etc/mixer_paths.xml

# Root
PRODUCT_PACKAGES += \
    su	

# Ramdisk
PRODUCT_PACKAGES += \
    init.rilchip.rc

# Ramdsik TEMP	
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/ramdisk/init.rilchip.rc:root/init.rilchip.rc	

# Permissions
PRODUCT_COPY_FILES += \
   frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml
	
# RIL
PRODUCT_PACKAGES += \
    librmnetctl \
    librilutils

# RIL
PRODUCT_PACKAGES += \
    libprotobuf-cpp-full \
    librmnetctl \
    libxml2
	
# Inherit from msm8996-common
$(call inherit-product, device/samsung/msm8996-common/msm8996.mk)
