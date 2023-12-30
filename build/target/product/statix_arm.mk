# Copyright (C) 2018-2020 The LineageOS Project
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

$(call inherit-product, device/generic/common/gsi_arm.mk)

include vendor/statix/build/target/product/statix_generic_target.mk

BUILD_BROKEN_ELF_PREBUILT_PRODUCT_COPY_FILES := true
PRODUCT_USE_DYNAMIC_PARTITION_SIZE := true
TARGET_NO_KERNEL_OVERRIDE := true
TARGET_DOES_NOT_USE_GAPPS := true

$(call inherit-product, vendor/gapps/arm/arm-vendor.mk)

PRODUCT_NAME := statix_arm
