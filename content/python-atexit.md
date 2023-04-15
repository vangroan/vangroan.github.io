title: atexit
date: 2022-11-07 15:47
modified: 2023-04-15 15:00
category: Python
tags: stdlib
slug: python-atexit
authors: Willem Victor
summary: Short version for index and feeds

[Documentation](https://docs.python.org/3/library/atexit.html) 

Register functions to execute just before the interpreter exits.

Been around since at least Python 2.7

```python
import atexit

# Usage as a decorator
@atexit.register
def printme():
    print("Hello, world!")


if __name__ == "__main__":
    print("Start")

# OUTPUT:
# Start
# Hello, world!
```

The registered functions will still be called when unhandled exceptions are raised in the script. This includes `SystemExit` raised by `sys.exit(...)`, but not `os._exit(...)`.

```python
Start
Traceback (most recent call last):
  File "c:\Users\wimpi\Code\grok\grok_atexit.py", line 12, in <module>
    raise ValueError()
ValueError
Hello, world!
```
