#
# config.mk
#
# Product-specific compile-time definitions.
#
# 592zn Symbean

#inherit from the common msm7627a definitions
include device/qcom/msm7627a/BoardConfig.mk

# Skip droiddoc build to save build time
BOARD_SKIP_ANDROID_DOC_BUILD := true

QC_PROP := true

ifeq ($(QC_PROP),true)
    BOARD_USES_QCOM_HARDWARE := true
    BOARD_USES_ADRENO_200 := true
    HAVE_ADRENO200_SOURCE := true
    HAVE_ADRENO200_SC_SOURCE := true
    HAVE_ADRENO200_FIRMWARE := true
    BOARD_USES_QCNE := true
    USE_OPENGL_RENDERER := true
    TARGET_USES_MDP3 := true
    MM_AUDIO_OMX_ADEC_EVRC_DISABLED := true
    MM_AUDIO_OMX_ADEC_QCELP13_DISABLED := true
    MM_AUDIO_FTM_DISABLED := true
    MM_AUDIO_MEASUREMENT_DISABLED := true
    MM_AUDIO_VOEM_DISABLED := true
    MM_AUDIO_MVS_DISABLED :=true
    TARGET_NO_RPC := false
    ifneq ($(BUILD_TINY_ANDROID), true)
#    BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 50001
#    BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := default
    BOARD_HAVE_BLUETOOTH := true
    BOARD_HAVE_QCOM_FM := true
    PROTEUS_DEVICE_API := true
    #HACK use Camera Stub
     USE_CAMERA_STUB =: true
#    BOARD_CAMERA_LIBRARIES := libcamera


    endif   # !BUILD_TINY_ANDROID

else
    BOARD_USES_GENERIC_AUDIO := true
    USE_CAMERA_STUB := true
endif # QC_PROP

# Tatget Device
TARGET_DEVICE_592ZN := w650

# GPS
#BOARD_USES_QCOM_GPS := true
#BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := msm7627a
#BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 50000

BOARD_USES_SRS_TRUEMEDIA := true

TARGET_NO_HW_VSYNC := true
# Video  592zn Symbean
COMMON_GLOBAL_CFLAGS += -DQCOM_NO_SECURE_PLAYBACK
COMMON_GLOBAL_CFLAGS += -DQCOM_ICS_DECODERS
COMMON_GLOBAL_CFLAGS += -DQCOM_ICS_COMPAT 

# ICS Camera
COMMON_GLOBAL_CFLAGS += -DICS_CAMERA_BLOB
BOARD_NEEDS_MEMORYHEAPPMEM := true
BOARD_CAMERA_USE_MM_HEAP := true

#Video
COMMON_GLOBAL_CFLAGS += -DQCOM_ICS_DECODERS

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true

# Vold      // 592zn Symbean 201306015
COMMON_GLOBAL_CFLAGS += -DVOLD_SINGLE_SD

# light
TARGET_PROVIDES_LIBLIGHTS := true

# odex
WITH_DEXPREOPT := true
LOCAL_DEX_PREOPT := true



# Wi-Fi
BOARD_WLAN_DEVICE 					:= bcmdhd
WPA_SUPPLICANT_VERSION 				:= VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER 		:= NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB 	:= lib_driver_cmd_bcmdhd
BOARD_HOSTAPD_DRIVER 				:= NL80211
BOARD_HOSTAPD_PRIVATE_LIB 			:= lib_driver_cmd_bcmdhd
WIFI_DRIVER_MODULE_PATH     		:= "/system/lib/modules/bcmdhd.ko"
WIFI_DRIVER_MODULE_NAME     		:= "bcmdhd"
WIFI_DRIVER_MODULE_ARG      		:= "firmware_path=/system/etc/firmware/fw_bcmdhd.bin nvram_path=/system/etc/firmware/nvram.txt"
WIFI_DRIVER_FW_PATH_PARAM   		:= "/sys/module/bcmdhd/parameters/firmware_path"
WIFI_DRIVER_FW_PATH_STA     		:= "/system/etc/firmware/fw_bcmdhd_apsta.bin"
WIFI_DRIVER_FW_PATH_AP      		:= "/system/etc/firmware/fw_bcmdhd.bin"
WIFI_DRIVER_FW_PATH_P2P                := "/system/etc/firmware/fw_bcmdhd_p2p.bin"
BOARD_LEGACY_NL80211_STA_EVENTS		:= true
BOARD_USE_SERNUM_FOR_MAC 			:= true

