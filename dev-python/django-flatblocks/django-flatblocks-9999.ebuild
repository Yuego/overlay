# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: Exp $

EAPI="5"
PYTHON_COMPAT=( python{2_6,2_7} pypy2_0 )

EGIT_REPO_URI="https://github.com/zerok/django-flatblocks.git"

inherit distutils-r1 git-2

DESCRIPTION="django-flatblocks is a simple application for handling small text-blocks on websites"
HOMEPAGE="https://github.com/zerok/django-flatblocks"
LICENSE="as-is"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

RDEPEND="dev-python/django"
DEPEND="${RDEPEND}"

DOCS="README.rst LICENSE.txt AUTHORS.txt"

