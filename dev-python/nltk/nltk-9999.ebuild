# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="5"
PYTHON_COMPAT=( python{2_5,2_6,2_7,3_1,3_2,3_3} pypy2_0 )

inherit distutils-r1 git-2

DESCRIPTION="Natural Language Toolkit"
HOMEPAGE="http://nltk.org/"

EGIT_REPO_URI="git://github.com/nltk/nltk.git"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS=""
IUSE=""

RDEPEND="
	>=dev-python/pyyaml-3.0.9
"
DEPEND="dev-python/setuptools"

