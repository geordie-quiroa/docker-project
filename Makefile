setup:
	python3 -m venv dockerproject
install:
	pip install --upgrade pip &&\
	pip install -r requirements.txt
lint:
	hadolint Dockerfile
	pylint --disable=R,C,W1203 app.py
validate-circleci:
	circleci config process .circleci/config.yml
run-circleci-local:
	circleci local execute
	