# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python{3_3,3_4,3_5} pypy pypy3 )

inherit eutils distutils-r1 git-r3

DESCRIPTION="D3 Converter"
HOMEPAGE="https://github.com/Yuego/d3-convert"

EGIT_REPO_URI="git://github.com/Yuego/d3-convert.git"
EGIT_BRANCH="develop"

LICENSE="MIT"
SLOT="0"
KEYWORDS=""
IUSE="-test"

RDEPEND="
	>=dev-python/docopt-0.6.2
	>=dev-python/scandir-0.9
	>=dev-python/pyexiftool-0.2.0
	dev-python/lxml
	dev-python/py3-daemon
	>=dev-python/psutil-4

	>=media-libs/exiftool-10
	media-gfx/ufraw
	>=media-gfx/enblend-4.1

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
	# KDE4
	insinto "/usr/share/applications/d3-convert/"
	doins "${S}"/data/kde/services/*
	# KDE5
	insinto "/usr/share/kservices5/d3-convert/"
	doins "${S}"/data/kde/services/*

}
