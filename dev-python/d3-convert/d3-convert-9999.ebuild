# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5
PYTHON_COMPAT=( python{3_2,3_3,3_4} pypy2_0 )

inherit eutils distutils-r1 git-2

DESCRIPTION="D3 Converter"
HOMEPAGE="https://github.com/Yuego/d3-convert"

EGIT_REPO_URI="git://github.com/Yuego/d3-convert.git"
EGIT_BRANCH="develop"

LICENSE="MIT"
SLOT="0"
KEYWORDS=""
IUSE="-test"

RDEPEND="
	dev-python/docopt
	dev-python/scandir
	media-libs/gexiv2
	dev-python/lxml
	dev-python/py3-daemon
	>dev-python/psutil-1.0.0
	<dev-python/psutil-2

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

	dobin d3-convert-daemon
	dobin d3-converter
	dobin d3-blender

	doconfd data/conf.d/d3-convert
	doinitd data/init.d/d3-convert


	#MENU
	insopts -m0644
	insinto "/usr/share/applications/d3-convert/"
	doins "${S}"/data/kde/services/*

}
