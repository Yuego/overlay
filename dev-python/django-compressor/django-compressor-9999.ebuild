# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python2_7 python3_{3,4,5,6} pypy pypy3 )

inherit distutils-r1 git-r3

DESCRIPTION="ompresses linked and inline javascript or CSS into a single cached file."
HOMEPAGE="https://github.com/jezdez/django_compressor"

EGIT_REPO_URI="https://github.com/jezdez/django_compressor.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS=""
IUSE=""

RDEPEND=">=dev-python/django-1.4[${PYTHON_USEDEP}]
	dev-python/django-appconf[${PYTHON_USEDEP}]

	dev-python/rcssmin[${PYTHON_USEDEP}]
	dev-python/rjsmin[${PYTHON_USEDEP}]
	"
DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
