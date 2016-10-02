# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5
PYTHON_COMPAT=( python{2_7,3_3,3_4,3_5} pypy pypy3 )

inherit distutils-r1 git-r3

DESCRIPTION="Dynamic and static host resolving for Django. Maps host names to URLconfs."
HOMEPAGE="https://github.com/ennio/django-hosts"

EGIT_REPO_URI="git://github.com/ennio/django-hosts.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS=""
IUSE=""

RDEPEND=">=dev-python/django-1.7
"

DEPEND="dev-python/setuptools"

