DESTINATION := bin
APP_ZIP := $(DESTINATION)/app.zip

COMPONENTS := $(wildcard **/*.xml)
IMAGES := $(wildcard **/*.png)
SCRIPTS := $(wildcard **/*.brs)

$(APP_ZIP): $(DESTINATION) $(COMPONENTS) $(IMAGES) $(SCRIPTS) manifest
	zip -r $(APP_ZIP) components/ images/ source/ manifest

$(DESTINATION):
	mkdir $(DESTINATION)

clean:
	rm -rf $(DESTINATION)

.PHONY: clean
