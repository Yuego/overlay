# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5
PYTHON_COMPAT=( python{2_7,3_2,3_3} pypy2_0 )

inherit eutils distutils-r1 git-2

DESCRIPTION="D3 Converter"
HOMEPAGE="https://github.com/Yuego/d3-convert"

EGIT_REPO_URI="git://github.com/Yuego/d3-convert.git"
EGIT_BRANCH="develop"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE="-test"

RDEPEND="
	dev-python/docopt
	dev-python/scandir
	media-libs/gexiv2
	dev-python/lxml

	media-libs/exiftool
	media-gfx/ufraw
	media-gfx/enblend
	
	test? (
		dev-python/tox
    	dev-python/coverage
	    dev-python/nose
	)
"

DEPEND="
	dev-python/setuptools
"

src_install(){
	distutils-r1_src_install

	dobin d3-converter
	dobin d3-blender


	#MENU
	insopts -m0644
	insinto "/usr/share/applications/d3-convert/"
	doins "${S}"/data/kde/services/*

}
