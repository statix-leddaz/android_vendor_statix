#
# Copyright (C) 2018-2022 StatiXOS
#
# SPDX-License-Identifier: Apache-2.0
#

# Include librsjni explicitly to workaround GMS issue
PRODUCT_PACKAGES += \
    librsjni

# StatiX Packages
PRODUCT_PACKAGES += \
    CustomDoze \
    RepainterServicePriv \
    SimpleDeviceConfig \
    StatiXOSWalls \
    QuickAccessWallet

# App overrides
PRODUCT_PACKAGES += \
    StatixLauncher \
    StatixSystemUI \
    StatixSettings \
    StatixThemePicker

# Preopt StatixSystemUI
PRODUCT_DEXPREOPT_SPEED_APPS += \
    StatixSystemUI

# Google Camera GO
PRODUCT_PACKAGES += \
    GoogleCameraGo

# Google Pixel Launcher
ifeq ($(INCLUDE_PIXEL_LAUNCHER),true)
PRODUCT_PACKAGES += \
    PixelLauncher
endif

# Updaters
ifeq ($(STATIX_BUILD_TYPE),OFFICIAL)
PRODUCT_PACKAGES += \
    Updater
endif

# Some useful shell based utilities for Android
PRODUCT_PACKAGES += \
    htop \
    nano \
    vim

# Charger images
PRODUCT_PACKAGES += \
    charger_res_images

# Repainter integration
PRODUCT_PACKAGES += \
    RepainterServicePriv

-include vendor/statix/config/overlay.mk
