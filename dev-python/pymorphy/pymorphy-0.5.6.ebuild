# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python{2_6,2_7} pypy2_0 )

inherit distutils-r1 mercurial

EHG_REPO_URI="https://bitbucket.org/kmike/pymorphy"
EHG_REVISION="f85d1f11a405" #0.5.6
DESCRIPTION="Pymorphy is Russian and English morphology analyser (POS tagger + inflection engine) written in python."
HOMEPAGE="https://bitbucket.org/kmike/pymorphy/wiki/Home"
LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~ia64 ~ppc ~ppc64 ~x86"
IUSE="+speedups cdb sqlite"

RDEPEND=">=dev-python/django-1.0
	cdb? ( dev-python/python-cdb )
	sqlite? ( dev-lang/python[sqlite] )"
DEPEND="dev-python/setuptools"

