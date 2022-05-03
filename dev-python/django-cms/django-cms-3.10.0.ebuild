# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=8
PYTHON_COMPAT=( python3_{7..10} pypy3 )

inherit distutils-r1

DESCRIPTION="Open source enterprise content management system based on the Django framework"
HOMEPAGE="https://github.com/django-cms/django-cms"

SRC_URI="https://github.com/django-cms/django-cms/archive/refs/tags/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64"
IUSE=""

RDEPEND="
	>=dev-python/django-2.2[${PYTHON_USEDEP}]
	<dev-python/django-5.0[${PYTHON_USEDEP}]

	>=dev-python/django-classy-tags-0.7.2[${PYTHON_USEDEP}]
	>=dev-python/django-formtools-2.1[${PYTHON_USEDEP}]
	>=dev-python/django-treebeard-4.3[${PYTHON_USEDEP}]
	>=dev-python/django-sekizai-0.7[${PYTHON_USEDEP}]
	>=dev-python/djangocms-admin-style-1.2[${PYTHON_USEDEP}]

	dev-python/django-filer[${PYTHON_USEDEP}]
"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
