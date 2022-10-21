$(info running make: scimia/jenkins)

.PHONY: build

COLOR ?= 'blue'
NUMBER ?= 'one'

build:
	@echo 'make target: build'
	@echo 'color is $(COLOR)'
	@echo 'number is $(NUMBER)'

finish:
	@echo 'make target: finish'
	@echo 'color is $(COLOR)'
	@echo 'number is $(NUMBER)'
