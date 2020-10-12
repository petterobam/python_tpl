# Python项目规范模板

## 快速开始

方法一：
```shell
git clone https://github.com/petterobam/python_tpl.git
cd python_tpl/bin
# 运行 init-env.bat 
.\init-env.bat
cd ..
rm -rf .git
# 修改文件夹名称为【你的项目名】，全局查找 python_tpl 替换为【你的项目名】
git init
# Install dependencies
pipenv install --dev
# Setup pre-commit and pre-push hooks
pipenv run pre-commit install -t pre-commit
pipenv run pre-commit install -t pre-push
```

方法二（目前推荐，失效请用方法一）：
```shell
cd bin
# 运行 init-env.bat 
.\init-env.bat
# 离开该项目目录
cd .. && cd ..
# 使用 cookiecutter 生成项目 （若环境初始化失效，请重新打开控制台）
pipx run cookiecutter gh:sourcery-ai/python-best-practices-cookiecutter
# Enter project directory
cd 【你的项目名】
# Initialise git repo
git init
# Install dependencies
pipenv install --dev
# Setup pre-commit and pre-push hooks
pipenv run pre-commit install -t pre-commit
pipenv run pre-commit install -t pre-push
```

## 组件细节

isort 为您导入的 Python 包部分（imports）进行排序，因此你不必再对 imports 进行手动排序。它可以按字母顺序对导入进行排序，并自动将其拆分成多个部分。

```shell
pipenv run black
pipenv run isort
```

Flake8 确保代码遵循 PEP8 中定义的标准 Python 代码规范。
```shell
pipenv run flake8
```

[Mypy](http://mypy-lang.org/) 是 Python 的非强制的静态类型检查器，旨在结合动态（或 “鸭子”）类型和静态类型的优点，这是一个有用的[备忘单](https://mypy.readthedocs.io/en/latest/cheat_sheet_py3.html)。

Mypy 将 Python 的表达能力和便利性与功能强大的类型系统的编译时类型检查结合在一起，使用任何 Python VM 运行它们，基本上没有运行时开销。
```shell
pipenv run mypy
```

使用 [pytest](https://docs.pytest.org/en/latest/) 编写测试非常容易，消除编写测试的阻力意味着可以快速的编写更多的测试！
```shell
pipenv run pytest
```
调整好 `.coveragerc` 文件后，我们就可以运行测试并查看覆盖率了。
```shell
# --cov-fail-under=100 是设定项目的测试覆盖率如果小于 100％ 那将认定为失败。
pipenv run pytest --cov --cov-fail-under=100
```

Git hooks 可让您在想要提交或推送时随时运行脚本。
```
如果需要跳过这些 hooks，可以运行 
git commit --no-verify 或 git push --no-verify
```

参考：https://mp.weixin.qq.com/s/K4RGr5NqMFAUKtB0KFPV5g

