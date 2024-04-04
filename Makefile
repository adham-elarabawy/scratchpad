.PHONY: install lint format pre-commit

install:
	pip install -r requirements.txt
	pre-commit install

format:
	black .

lint:
	flake8 .

pre-commit:
	pre-commit run --all-files