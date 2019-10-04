# Copyright (C) 2015 The CyanogenMod Project
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

LOCAL_PATH := $(call my-dir)

ifneq ($(filter h30u10, $(TARGET_DEVICE)),)



include $(CLEAR_VARS)
LOCAL_MODULE := librilmtk
LOCAL_MODULE_OWNER := google
LOCAL_SRC_FILES := proprietary/lib/librilmtk.so
LOCAL_MODULE_PATH := $(TARGET_OUT_VENDOR_SHARED_LIBRARIES)
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
include $(BUILD_PREBUILT)


include $(CLEAR_VARS)
LOCAL_MODULE := mtk-ril
LOCAL_MODULE_OWNER := google
LOCAL_SRC_FILES := proprietary/lib/mtk-ril.so
LOCAL_MODULE_PATH := $(TARGET_OUT_VENDOR_SHARED_LIBRARIES)
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
include $(BUILD_PREBUILT)




#include $(CLEAR_VARS)
#LOCAL_MODULE := libui_ext
#LOCAL_SRC_FILES := proprietary/lib/libui_ext.so
#LOCAL_MODULE_CLASS := SHARED_LIBRARIES
#LOCAL_MODULE_SUFFIX := .so
#include $(BUILD_PREBUILT)


ifeq ($(USE_MTK_CAMERA_WRAPPER),true) 

#include $(CLEAR_VARS) 
#LOCAL_MODULE := libcam1client 
#LOCAL_SRC_FILES := proprietary/lib/libcam1client.so 
#LOCAL_MODULE_CLASS := SHARED_LIBRARIES 
#LOCAL_MODULE_SUFFIX := .so 
#include $(BUILD_PREBUILT) 

include $(CLEAR_VARS)
LOCAL_MODULE := libcam_utils
LOCAL_MODULE_OWNER := $VENDOR
LOCAL_SRC_FILES := proprietary/lib/libcam_utils.so
LOCAL_MODULE_PATH := $(TARGET_OUT_VENDOR_SHARED_LIBRARIES)
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_SUFFIX := .so
include $(BUILD_PREBUILT)
endif


endif
