# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=8
PYTHON_COMPAT=( python3_{8..11} pypy3 )

inherit distutils-r1 git-r3

DESCRIPTION="he.net DNS Authenticator plugin for Certbot"
HOMEPAGE="https://github.com/Yuego/certbot-dns-henet"

EGIT_REPO_URI="https://github.com/Yuego/certbot-dns-henet.git"
EGIT_COMMIT="e2cd0977f2aeb926a7833bf82b5ec7fac8bc08c6"

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
