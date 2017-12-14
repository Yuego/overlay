# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python2_7 python3_{3,4,5,6} pypy pypy3 )

inherit distutils-r1

DESCRIPTION="A django app that provides Markdown-related template tags using the python-markdown2 library."
HOMEPAGE="https://github.com/trentm/django-markdown-deux"

SRC_URI="https://github.com/trentm/django-markdown-deux/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

RDEPEND="
	dev-python/django[${PYTHON_USEDEP}]
	dev-python/markdown2[${PYTHON_USEDEP}]
"
DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
