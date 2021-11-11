ROOT_DIR    := $(HOME)/Library/Application Support/Blackmagic Design/DaVinci Resolve
FUSION_DIR := $(ROOT_DIR)/Fusion
FUSION_EFFECTS_DIR := $(FUSION_DIR)/Templates/Edit/Effects

.PHONY: install

install:
	@mkdir -p "$(FUSION_EFFECTS_DIR)"
	@cp -R Macros "$(FUSION_DIR)"
	@fd -t f .*setting "$(FUSION_DIR)/Macros/" -x ln -sf '{}' '{//}/../Templates/Edit/Effects/{/}'
