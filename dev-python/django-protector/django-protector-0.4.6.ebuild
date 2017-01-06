# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python2_7 python3_{4,5} pypy )

inherit distutils-r1 git-r3

DESCRIPTION=" Django application for managing object level permissions and generic groups"
HOMEPAGE="https://github.com/grey0ne/django-protector"

EGIT_REPO_URI="git://github.com/grey0ne/django-protector.git"
EGIT_COMMIT="8bb481e242c047e8b1398c4af18ebc3f8490c262"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

RDEPEND="
	>=dev-python/django-1.8[${PYTHON_USEDEP}]
	>=dev-python/django-mptt-0.6[${PYTHON_USEDEP}]
"
DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
