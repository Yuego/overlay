# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=7
PYTHON_COMPAT=( python3_{6..9} pypy3 )

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
	>=dev-python/docopt-0.6.2[${PYTHON_USEDEP}]
	>=dev-python/scandir-0.9[${PYTHON_USEDEP}]
	>=dev-python/pyexiftool-0.2.0[${PYTHON_USEDEP}]
	dev-python/lxml[${PYTHON_USEDEP}]
	dev-python/py3-daemon[${PYTHON_USEDEP}]
	>=dev-python/psutil-4[${PYTHON_USEDEP}]

	>=media-libs/exiftool-10
	media-gfx/ufraw
	>=media-gfx/enblend-4.1

	test? (
		dev-python/tox[${PYTHON_USEDEP}]
		dev-python/coverage[${PYTHON_USEDEP}]
		dev-python/nose[${PYTHON_USEDEP}]
	)
"

DEPEND="
	dev-python/setuptools[${PYTHON_USEDEP}]
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
