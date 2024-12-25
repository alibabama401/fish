LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_CXXFLAGS+=-std=c++0x -D__STDC_INT64__
LOCAL_CFLAGS+=-I../../thirdparty/include -pthread -frtti -fexceptions

LOCAL_MODULE := bspatch_static

LOCAL_MODULE_FILENAME := libbspatch

LOCAL_SRC_FILES := bspatch.c  \
				   bzlib.c  \
				   blocksort.c  \
				   bzip2.c  \
				   bzip2recover.c  \
				   compress.c  \
				   crctable.c  \
				   decompress.c  \
				   dlltest.c  \
				   huffman.c  \
				   mk251.c  \
				   randtable.c  \
				   spewG.c  \
				   unzcrash.c  \

LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)

include $(BUILD_STATIC_LIBRARY)
