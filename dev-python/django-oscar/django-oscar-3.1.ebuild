# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=8
PYTHON_COMPAT=( python3_{7..10} pypy3 )

inherit distutils-r1

DESCRIPTION="Domain-driven e-commerce for Django"
HOMEPAGE="https://github.com/django-oscar/django-oscar"

SRC_URI="https://github.com/django-oscar/django-oscar/archive/refs/tags/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64"
IUSE="search sorl-thumbnail easy-thumbnail"

RDEPEND="
	>=dev-python/django-3.1[${PYTHON_USEDEP}]
	<dev-python/django-3.3[${PYTHON_USEDEP}]

	>=dev-python/pillow-6.0[${PYTHON_USEDEP}]

	>=dev-python/django-extra-views-0.13[${PYTHON_USEDEP}]
	<dev-python/django-extra-views-0.14[${PYTHON_USEDEP}]

	search? (
		>=dev-python/django-haystack-3.0_beta1[${PYTHON_USEDEP}]
	)

	>=dev-python/django-treebeard-4.3[${PYTHON_USEDEP}]
	<dev-python/django-treebeard-4.5[${PYTHON_USEDEP}]

	>=dev-python/Babel-1.0[${PYTHON_USEDEP}]
	<dev-python/Babel-3.0[${PYTHON_USEDEP}]

	>=dev-python/purl-0.7[${PYTHON_USEDEP}]

	dev-python/phonenumbers[${PYTHON_USEDEP}]
	>=dev-python/django-phonenumber-field-4.0.0[${PYTHON_USEDEP}]
	<dev-python/django-phonenumber-field-6.0.0[${PYTHON_USEDEP}]

	>=dev-python/factory_boy-3.0[${PYTHON_USEDEP}]
	<dev-python/factory_boy-3.3[${PYTHON_USEDEP}]

	>=dev-python/django-tables2-2.3[${PYTHON_USEDEP}]
	<dev-python/django-tables2-2.4[${PYTHON_USEDEP}]

	>=dev-python/django-widget-tweak-1.4.1[${PYTHON_USEDEP}]

	sorl-thumbnail? (
		>=dev-python/sorl-thumbnail-12.6[${PYTHON_USEDEP}]
	)

	easy-thumbnail? (
		>=dev-python/easy-thumbnails-2.7[${PYTHON_USEDEP}]
	)
"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
