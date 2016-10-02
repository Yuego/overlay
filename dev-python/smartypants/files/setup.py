#!/usr/bin/env python

from setuptools import setup, find_packages

import smartypants

setup(
	name='smartypants',
	version='1.5_1.7',
	author='Chad Miller <smartypantspy@chad.org>',
	url='http://web.chad.org/projects/smartypants.py/',
	install_requires=[],
	description = 'Smart-quotes, smart-ellipses, and smart-dashes for weblog entries.',
	py_modules=['smartypants'],
	include_package_data=True,
	classifiers=[
		"Intended Audience :: Developers",
		"Intended Audience :: System Administrators",
		"Operating System :: OS Independent",
		"Topic :: Software Development"
	],
)
