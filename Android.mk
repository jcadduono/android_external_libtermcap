LOCAL_PATH := $(call my-dir)

lib_src_files := \
	termcap.o tparam.o version.o

lib_cpp_flags := \
	-DHAVE_STRING_H=1 -DHAVE_UNISTD_H=1 \
	-DSTDC_HEADERS=1 \
	-DTERMCAP_FILE=\"/etc/termcap\"

include $(CLEAR_VARS)
LOCAL_MODULE := libtermcap
LOCAL_C_INCLUDES := $(LOCAL_PATH)
LOCAL_CFLAGS += $(lib_cpp_flags)
LOCAL_SRC_FILES := $(lib_src_files)
LOCAL_SHARED_LIBRARIES := libncurses
include $(BUILD_SHARED_LIBRARY)
