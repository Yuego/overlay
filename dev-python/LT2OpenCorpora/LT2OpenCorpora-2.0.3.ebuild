# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python{2_7,3_3,3_4,3_5} pypy pypy3 )

inherit distutils-r1 git-r3

DESCRIPTION="Python script to convert the Ukrainian morphological dictionary from the LanguageTool project to the OpenCorpora format."
HOMEPAGE="https://github.com/dchaplinsky/LT2OpenCorpora"

EGIT_REPO_URI="git://github.com/dchaplinsky/LT2OpenCorpora.git"
EGIT_COMMIT="ceb31a71063afa7ddf9b3b88f2715e8f93a3e577"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE="plot"

RDEPEND="
	dev-python/blinker
	dev-python/unicodecsv
	>=dev-python/bz2file-0.98
	dev-python/requests
	plot? ( >=media-gfx/pydot-1.0.2 )
"
DEPEND="dev-python/setuptools"
