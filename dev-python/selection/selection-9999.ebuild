# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python{2_7,3_3,3_4,3_5} pypy pypy3 )

inherit distutils-r1 git-r3

DESCRIPTION="API to extract data from HTML and XML documents"
HOMEPAGE="https://github.com/lorien/selection"

EGIT_REPO_URI="git://github.com/lorien/selection.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS=""
IUSE=""

RDEPEND="
	dev-python/lxml
	dev-python/six
	dev-python/weblib
"
DEPEND="dev-python/setuptools"
