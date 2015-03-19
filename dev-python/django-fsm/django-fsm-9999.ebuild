# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5
PYTHON_COMPAT=( python{2_6,2_7,3_3,3_4} pypy2_0 )

inherit distutils-r1 git-2

DESCRIPTION="Django friendly finite state machine support"
HOMEPAGE="http://github.com/kmmbvnr/django-fsm"

EGIT_REPO_URI="git://github.com/kmmbvnr/django-fsm.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS=""
IUSE=""

RDEPEND="
	>=dev-python/django-1.6
"
DEPEND="dev-python/setuptools"

