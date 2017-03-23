from setuptools import setup, find_packages

setup(
	name = "loadBrukerData",
	version = "0.1.1",
	packages = find_packages(exclude=["*test"]),
	install_requires = ['numpy']
	)