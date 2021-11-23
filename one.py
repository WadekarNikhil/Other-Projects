#1.py
def fun():
	print("FUNC() IN 1.py")

print("TOP LEVEL IN 1.PY")

if __name__ == '__main__':
	print('1.py is being run directly')
else:
	print('1.py has been imported')
	