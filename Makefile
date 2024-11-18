SHELL=bash

ifeq ($(strip $(URL)),)
$(error Environment variable URL is not set)
endif

.PHONY: index.html

index.html: index.html.tmpl
	sed "s#[$$]{url}#$(URL)#g" "$<" > "$@"
