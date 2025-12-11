# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=8
PYTHON_COMPAT=( python3_{8..14} pypy3 )
DISTUTILS_USE_PEP517=setuptools

inherit distutils-r1

DESCRIPTION="Django-maintenancemode allows you to
temporary shutdown your site for maintenance work"
HOMEPAGE="https://github.com/fabiocaccamo/django-maintenance-mode"

SRC_URI="https://github.com/fabiocaccamo/django-maintenance-mode/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64"
IUSE="ip"
RESTRICT="test"

RDEPEND="
	>=dev-python/django-2.2[${PYTHON_USEDEP}]
	>=dev-python/python-fsutil-0.14.1[${PYTHON_USEDEP}]
	ip? (
		dev-python/django-ipware[${PYTHON_USEDEP}]
	)
"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
