# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=8
PYTHON_COMPAT=( python3_{10..14} pypy3 )
DISTUTILS_USE_PEP517=setuptools

inherit distutils-r1 git-r3

DESCRIPTION="Tech Docs Setup Package"
HOMEPAGE="https://github.com/Yuego/tech_docs"

EGIT_REPO_URI="git@github.com-hptsu:HPT-SU/tech_docs.git"
EGIT_COMMIT="f66ded7bd7308612c8c00a15947720cc4f091552"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64"
IUSE=""
RESTRICT="test"

RDEPEND="
	=dev-python/tech_docs_dev-${PV}[${PYTHON_USEDEP}]
"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"


src_install() {
	distutils-r1_src_install

	insopts -m0644
	exeinto "/usr/bin/"
	doexe "$S"/files/bin/*
}
