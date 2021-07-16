# Inherit AOSP product configuration
$(call inherit-product, device/google/bonito/aosp_sargo.mk)

# Remove AOSP prefix from product name
PRODUCT_NAME := sargo
