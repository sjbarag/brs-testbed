SHELL = bash -O globstar
DESTINATION := bin
APP_ZIP := $(DESTINATION)/app.zip

COMPONENTS := $(shell ls components/**/*.xml)
IMAGES := $(shell ls images/**/*.png)
SCRIPTS := $(shell ls **/*.brs)
$(info [${SCRIPTS}])

$(APP_ZIP): $(DESTINATION) $(COMPONENTS) $(IMAGES) $(SCRIPTS) manifest
	zip -r $(APP_ZIP) components/ images/ source/ testfiles/ manifest

$(DESTINATION):
	mkdir $(DESTINATION)

clean:
	rm -rf $(DESTINATION)

.PHONY: clean
