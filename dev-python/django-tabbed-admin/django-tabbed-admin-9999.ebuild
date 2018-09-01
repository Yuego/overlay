# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python2_7 python3_{5,6,7} pypy pypy3 )

inherit distutils-r1 git-r3

DESCRIPTION=""
HOMEPAGE="https://pypi.org/project/django-tabbed-admin/ https://github.com/omji/django-tabbed-admin"

EGIT_REPO_URI="https://github.com/omji/django-tabbed-admin"

LICENSE="MIT"
SLOT="0"
KEYWORDS=""
IUSE=""

RDEPEND="
	>=dev-python/django-1.11[${PYTHON_USEDEP}]
"
DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
