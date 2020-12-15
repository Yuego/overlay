# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=7
PYTHON_COMPAT=( python3_{6,7,8,9} pypy3 )

inherit distutils-r1 git-r3

DESCRIPTION="Serve files with Django."
HOMEPAGE="https://github.com/benoitbryon/django-downloadview"

EGIT_REPO_URI="git://github.com/benoitbryon/django-downloadview.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS=""
IUSE=""

RDEPEND="
	>=dev-python/django-1.11[${PYTHON_USEDEP}]
	dev-python/requests[${PYTHON_USEDEP}]
"
DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
