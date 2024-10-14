# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=8
PYTHON_COMPAT=( python3_{8..13} pypy3 )

inherit distutils-r1 git-r3

DESCRIPTION="Tech Docs Setup Package"
HOMEPAGE="https://github.com/Yuego/tech_docs"

EGIT_REPO_URI="git@github.com-tech_docs:Yuego/tech_docs.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64"
IUSE=""

RDEPEND="
	dev-python/tech_docs_dev[${PYTHON_USEDEP}]
"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"


src_install() {
	default

	insopts -m0644
	exeinto "/usr/bin/"
	doexe "$S"/files/bin/*
}
