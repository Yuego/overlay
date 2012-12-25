#!/usr/bin/env python

from setuptools import setup, find_packages

setup(
    name='sphinxapi',
    version=".3442",
    author='Sphinx Technologies Inc',
    url='http://code.google.com/p/sphinxsearch/',
    install_requires=['django'],
    description = 'Sphinx API for django-sphinx',
    packages=['sphinxapi'],
    include_package_data=True,
    classifiers=[
        "Framework :: Django",
        "Intended Audience :: Developers",
        "Intended Audience :: System Administrators",
        "Operating System :: OS Independent",
        "Topic :: Software Development"
    ],
)
