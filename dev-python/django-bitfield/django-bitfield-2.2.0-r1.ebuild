# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=8
PYTHON_COMPAT=( python3_{9..13} pypy3 )
DISTUTILS_USE_PEP517=setuptools

inherit distutils-r1 git-r3

DESCRIPTION="A BitField extension for Django Models"
HOMEPAGE="https://github.com/disqus/django-bitfield"

EGIT_REPO_URI="https://github.com/disqus/django-bitfield.git"
EGIT_COMMIT="f287c0972764488463d60cf8aaa696ff00a764f3"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE="-test"
RESTRICT="test"

RDEPEND="
	>=dev-python/django-1.11[${PYTHON_USEDEP}]
"
DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"

PATCHES=(
	"${FILESDIR}/psycopg3.patch"
)
