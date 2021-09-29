# Inherit AOSP product configuration
$(call inherit-product, device/google/bonito/aosp_bonito.mk)

# Remove AOSP prefix from product name
PRODUCT_NAME := bonito
# Tell build system not to bundle sample APNs from AOSP
OEM_APNS := true
