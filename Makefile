# Note: this code is only espected to work for my workflow. Ignore this file
# unless you know what you are doing.

files := ./operaen.sh ./nationaltheatret.sh ./detnorsketeatret.sh

.PHONY: all install uninstall
all:

install:
	cp $(files) ${XDG_CONFIG_HOME}/newsboat/

uninstall:
	cd ${XDG_CONFIG_HOME}/newsboat/ && \
		rm $(files)
