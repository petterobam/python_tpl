@Echo Off
echo "----->utf-8 mode"
chcp 65001
@Title init env
cd ..
python3 -m pip install --upgrade pip
python3 -m pip install --user pipx
:: 这一步无法生效
python3 -m pipx ensurepath
python3 -m pipx install pipenv
Pause