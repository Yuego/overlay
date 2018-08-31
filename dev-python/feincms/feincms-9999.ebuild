# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python2_7 python3_{3,4,5,6,7} pypy pypy3 )

inherit distutils-r1 git-r3

EGIT_REPO_URI="https://github.com/matthiask/feincms.git"
DESCRIPTION="UNOFFICIAL and often experimental version of FeinCMS."
HOMEPAGE="https://github.com/matthiask/feincms"
LICENSE="MIT"
SLOT="0"
KEYWORDS=""
IUSE=""

RDEPEND="
	>=dev-python/django-1.7[${PYTHON_USEDEP}]
	>=dev-python/django-mptt-0.7.1[${PYTHON_USEDEP}]
	>=dev-python/pillow-2.0.0[${PYTHON_USEDEP}]
	>=dev-python/feedparser-5.0.0[${PYTHON_USEDEP}]
	>=dev-python/pytz-2014.10[${PYTHON_USEDEP}]
"
DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"

src_test() {
	python setup.py test || die "tests failed"
}
