# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="5"
PYTHON_COMPAT=( python{2_5,2_6,2_7} pypy2_0 )

inherit distutils-r1 git-2

EGIT_REPO_URI="https://github.com/kmike/pymorphy.git"
DESCRIPTION="Pymorphy is Russian and English morphology analyser (POS tagger + inflection engine) written in python."
HOMEPAGE="https://bitbucket.org/kmike/pymorphy/wiki/Home"
LICENSE="MIT"
SLOT="0"
KEYWORDS=""
IUSE="+speedups cdb sqlite"

RDEPEND=">=dev-python/django-1.0
	cdb? ( dev-db/tinycdb )
	sqlite? ( dev-lang/python[sqlite] )"

DEPEND="dev-python/setuptools"

