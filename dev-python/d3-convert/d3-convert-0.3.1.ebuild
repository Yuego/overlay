# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python{3_3,3_4,3_5} pypy2_0 )

inherit eutils distutils-r1

DESCRIPTION="D3 Converter"
HOMEPAGE="https://github.com/Yuego/d3-convert"

SRC_URI="https://github.com/Yuego/d3-convert/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE="-test"

RDEPEND="
	dev-python/docopt
	>=dev-python/scandir-0.9
	dev-python/pygobject:3
	media-libs/gexiv2
	dev-python/lxml
	dev-python/py3-daemon
	>=dev-python/psutil-2

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
