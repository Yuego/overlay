# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python{2_7,3_3,3_4,3_5} pypy pypy3 )

inherit distutils-r1 git-r3

DESCRIPTION="Natural Language Toolkit"
HOMEPAGE="http://nltk.org/ https://github.com/nltk/nltk"

EGIT_REPO_URI="git://github.com/nltk/nltk.git"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS=""
IUSE=""

RDEPEND="
	>=dev-python/pyyaml-3.0.9
"
DEPEND="dev-python/setuptools"
