LOCAL_PATH := $(call my-dir)
CURRENT_ROOT_PATH := $(LOCAL_PATH)/../../..
OPENCV_ROOT_PATH := $(CURRENT_ROOT_PATH)/../OpenCV-Android

include $(CLEAR_VARS)

OPENCV_INSTALL_MODULES := on
OPENCV_CAMERA_MODULES := off
OPENCV_LIB_TYPE := STATIC
include $(OPENCV_ROOT_PATH)/sdk/native/jni/OpenCV.mk

LOCAL_MODULE := ImageProcessFilterUtils
LOCAL_SRC_FILES := \
	JNI.cxx \
	$(CURRENT_ROOT_PATH)/Utils/JniUtils.cxx \
	$(LOCAL_PATH)/src/FilterUtils.cxx
LOCAL_CFLAGS := -std=c++11
LOCAL_LDLIBS := -llog -ldl -lz
include $(BUILD_SHARED_LIBRARY)
