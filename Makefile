.PHONY: environment
# setup python environment
environment:
	@echo "Setting up python environment"
	pyenv install -s 3.9.18 ;\
	pyenv virtualenv 3.9.18 cp-tutorial ;\
	pyenv local cp-tutorial

.PHONY: requirements
# install packages
requirements:
	@echo "Installing packages"
	pip install --upgrade pip
	pip install -r requirements.txt
