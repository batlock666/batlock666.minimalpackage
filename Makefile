PYTHON_VERSION = 3.9.13
VENV_DIR = venv
PIP = $(VENV_DIR)/bin/pip

.PHONY: setup clean

setup:
	pyenv local $(PYTHON_VERSION)
	python -m venv $(VENV_DIR)
	$(PIP) install -q -U pip
	$(PIP) install -q -r requirements.txt
	$(PIP) install -q -e .

clean:
	rm -rf src/batlock666/__pycache__/
	rm -rf src/batlock666/minimalpackage/__pycache__/
	rm -rf src/batlock666.minimalpackage.egg-info
	rm -rf $(VENV_DIR)
	rm -f .python-version
