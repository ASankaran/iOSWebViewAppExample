include theos/makefiles/common.mk

APPLICATION_NAME = HCExam
HCExam_FILES = main.m HCExamApplication.mm RootViewController.mm
HCExam_FRAMEWORKS = UIKit CoreGraphics

include $(THEOS_MAKE_PATH)/application.mk
