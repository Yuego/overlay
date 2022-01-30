# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=7
PYTHON_COMPAT=( python3_{7..9} pypy3 )

inherit distutils-r1 git-r3

DESCRIPTION="he.net DNS Authenticator plugin for Certbot"
HOMEPAGE="https://github.com/Yuego/certbot-dns-henet"

EGIT_REPO_URI="https://github.com/Yuego/certbot-dns-henet.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64"
IUSE=""

RDEPEND="
	app-crypt/certbot[${PYTHON_USEDEP}]
	dev-python/requests[${PYTHON_USEDEP}]
	dev-python/beautifulsoup4[${PYTHON_USEDEP}]
	dev-python/zope-interface[${PYTHON_USEDEP}]
"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
