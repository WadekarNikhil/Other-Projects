import one
print("TOP LEVEL IN 2.PY")
one.Func()

if __name__ == '__main__':
	print("two.py is being run directly")
else:
	print("two.py has been imported")  