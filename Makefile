#Makefile at top of application tree
TOP = .
include $(TOP)/configure/CONFIG
DIRS += configure busyApp iocBoot
busyApp_DEPEND_DIRS   = configure

DIRS := $(DIRS) $(filter-out $(DIRS), $(wildcard etc))
# Comment out the following line to disable building of example iocs
DIRS := $(DIRS) $(filter-out $(DIRS), $(wildcard iocs))
include $(TOP)/configure/RULES_TOP
