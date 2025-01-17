# Copyright (C) 2015 The Android Open Source Project
# Written by Dmitry Grinberg
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


LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_SHARED_LIBRARIES := \
    liblog \
    libcutils \
    libgui_vendor \
    libbinder \
    libutils \
    libsensor_vendor

LOCAL_C_INCLUDES := frameworks/native/libs/sensor/include

LOCAL_SRC_FILES := libshim_dmitry_gps.cpp
LOCAL_MODULE := libshim_dmitry_gps
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true

include $(BUILD_SHARED_LIBRARY)
