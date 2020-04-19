# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python{2_7,3_3,3_4} pypy )

inherit distutils-r1 git-r3

DESCRIPTION="PostgreSQL native array fields extension for Django."
HOMEPAGE="https://github.com/niwibe/djorm-ext-pgarray"

EGIT_REPO_URI="git://github.com/niwibe/${PN}.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS=""
IUSE=""

RDEPEND="
	>=dev-python/django-1.3[postgres]
"
DEPEND="dev-python/setuptools"
