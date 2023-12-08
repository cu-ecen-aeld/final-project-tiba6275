
##############################################################
#
# AESD-ASSIGNMENTS
#
##############################################################

#TODO: Fill up the contents below in order to reference your assignment 3 git contents
CAMERA_VERSION = 'f0c0c3b8cac10e21c73823d17d1bc0a7468b9293'
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
CAMERA_SITE = 'git@github.com:tiba6275/ecen5713-final-project.git'
CAMERA_SITE_METHOD = git
CAMERA_GIT_SUBMODULES = YES


define CAMERA_BUILD_CMDS
    (cd $(@D) && cmake -DCMAKE_TOOLCHAIN_FILE=/home/tiba6275/Documents/assignment-8-tiba6275/buildroot/output/host/usr/share/buildroot/toolchainfile.cmake \
    -DOpenCV_DIR=$(STAGING_DIR)/usr/lib/cmake/opencv4 .)
    $(MAKE) -C $(@D)
endef

define CAMERA_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/DetectChange $(TARGET_DIR)/usr/bin/
    $(INSTALL) -d 0755 $(TARGET_DIR)/usr/etc/
	$(INSTALL) -m 0755 $(@D)/input1.jpg $(TARGET_DIR)/usr/etc/
	$(INSTALL) -m 0755 $(@D)/input2.jpg $(TARGET_DIR)/usr/etc/
	$(INSTALL) -m 0755 $(@D)/CMakeLists.txt $(TARGET_DIR)/usr/etc/
	$(INSTALL) -d 0755 $(TARGET_DIR)/etc/init.d/
	$(INSTALL) -m 0755 $(@D)/load_modules.sh $(TARGET_DIR)/etc/init.d/S99load_modules
endef

$(eval $(kernel-module))
$(eval $(generic-package))
