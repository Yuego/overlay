# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python2_7 pypy pypy3 )

inherit distutils-r1

DESCRIPTION="Python wrapper for GitHub API v3"
HOMEPAGE="http://pygithub3.rtfd.org/ https://github.com/copitux/python-github3"

SRC_URI="https://github.com/copitux/python-github3/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

RDEPEND="
	dev-python/requests
"
DEPEND="
	dev-python/setuptools
	dev-python/github
"
S="${WORKDIR}/python-github3-${PV}"

