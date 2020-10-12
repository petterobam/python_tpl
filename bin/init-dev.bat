@Echo Off
echo "----->utf-8 mode"
chcp 65001
@Title init dev
cd ..
pipenv install --dev
pipenv install black isort --dev
pipenv install flake8 --dev
pipenv install mypy --dev
pipenv install pytest pytest-cov --dev
pipenv run pre-commit install -t pre-commit
pipenv run pre-commit install -t pre-push