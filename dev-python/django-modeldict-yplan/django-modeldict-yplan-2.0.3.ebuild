# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=8
PYTHON_COMPAT=( python3_{10..13} pypy3 )
DISTUTILS_USE_PEP517=setuptools

inherit distutils-r1

DESCRIPTION=""
HOMEPAGE="https://github.com/adamchainz/django-modeldict"

# EGIT_REPO_URI="https://github.com/adamchainz/django-modeldict.git"
SRC_URI="https://github.com/adamchainz/django-modeldict/archive/refs/tags/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64"
IUSE=""
RESTRICT="test"

S="${WORKDIR}/django-modeldict-${PV}"

RDEPEND="
	>=dev-python/django-4.2[${PYTHON_USEDEP}]
"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"

src_prepare(){
	rm -r tests

	distutils-r1_src_prepare
}
