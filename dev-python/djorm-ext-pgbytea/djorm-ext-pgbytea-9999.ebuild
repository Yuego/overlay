# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python{2_7,3_3} pypy pypy3 )

inherit distutils-r1 git-r3

DESCRIPTION="Django extension for postgresql bytea field and other usefull toos for dealing with binary data."
HOMEPAGE="https://github.com/niwibe/djorm-ext-pgbytea"

EGIT_REPO_URI="git://github.com/niwibe/${PN}.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS=""
IUSE=""

RDEPEND="
	>=dev-python/django-1.3[postgres]
"
DEPEND="dev-python/setuptools"


