# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python2_7 python3_{3,4,5,6} pypy pypy3 )

inherit distutils-r1

DESCRIPTION="webdavclient provides easy and convenient to work with WebDAV-servers"
HOMEPAGE="https://pypi.org/project/webdavclient/ https://github.com/CloudPolis/webdav-client-python"

SRC_URI="https://github.com/CloudPolis/webdav-client-python/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

S="${WORKDIR}/${PN}-python-${PV}"

RDEPEND="
	dev-python/pycurl[${PYTHON_USEDEP}]
	dev-python/argcomplete[${PYTHON_USEDEP}]
	dev-python/lxml[${PYTHON_USEDEP}]
"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
