# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python{2_7,3_3,3_4,3_5} pypy{2_0,3} )

inherit eutils distutils-r1 git-r3

DESCRIPTION="A versatile test fixtures replacement based on thoughtbot's factory_girl for Ruby."
HOMEPAGE="https://github.com/rbarrois/factory_boy"

EGIT_REPO_URI="git://github.com/rbarrois/factory_boy.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS=""
IUSE=""

RDEPEND="
	dev-python/fake-factory
"
DEPEND="dev-python/setuptools"

