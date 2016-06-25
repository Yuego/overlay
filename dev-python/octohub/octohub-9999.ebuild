# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python{2_7,3_3,3_4,3_5} pypy2_0 )

inherit distutils-r1 git-r3

DESCRIPTION="Low level Python and CLI interface to GitHub"
HOMEPAGE="https://github.com/turnkeylinux/octohub"

EGIT_REPO_URI="git://github.com/turnkeylinux/octohub.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS=""
IUSE=""

RDEPEND="
	dev-python/simplejson
	dev-python/requests
"
DEPEND="dev-python/setuptools"


