# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python{2_7,3_3,3_4,3_5} pypy pypy3 )

inherit distutils-r1 git-r3

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

