import sys

from python_tpl.python_tpl import fib

if __name__ == "__main__":
    n = int(sys.argv[1])
    print(fib(n))
