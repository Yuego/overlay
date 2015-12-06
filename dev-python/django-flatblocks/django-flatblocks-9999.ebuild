# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: Exp $

EAPI=6
PYTHON_COMPAT=( python{2_7,3_3} pypy2_0 )

EGIT_REPO_URI="https://github.com/funkybob/django-flatblocks.git"

inherit distutils-r1 git-r3

DESCRIPTION="django-flatblocks is a simple application for handling small text-blocks on websites"
HOMEPAGE="https://github.com/funkybob/django-flatblocks"
LICENSE="BSD"
SLOT="0"
KEYWORDS=""
IUSE=""

RDEPEND=">=dev-python/django-1.4"
DEPEND="${RDEPEND}"

DOCS="README.rst LICENSE.txt AUTHORS.txt"

