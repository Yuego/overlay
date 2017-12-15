# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python2_7 python3_{3,4,5} pypy )

inherit distutils-r1 git-r3

DESCRIPTION="A transparent sorted ManyToMany field for django."
HOMEPAGE="https://github.com/gregmuellegger/django-sortedm2m https://pypi.python.org/pypi/django-sortedm2m"

EGIT_REPO_URI="git://github.com/gregmuellegger/django-sortedm2m.git"

LICENSE="BSD"
SLOT="0"
KEYWORDS=""
IUSE=""

RDEPEND="
	>=dev-python/django-1.8[${PYTHON_USEDEP}]
"
DEPEND="
	dev-python/pip[${PYTHON_USEDEP}]
	dev-python/setuptools[${PYTHON_USEDEP}]
"
