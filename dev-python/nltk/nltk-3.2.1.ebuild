# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-python/nltk/nltk-3.0.0.ebuild,v 1.1 2014/12/22 10:17:58 hwoarang Exp $

EAPI=6

PYTHON_COMPAT=( python{2_7,3_3,3_4,3_5} )
PYTHON_REQ_USE="tk?,xml(+)"

inherit distutils-r1

DESCRIPTION="Natural Language Toolkit"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"
HOMEPAGE="http://nltk.org/ https://github.com/nltk/nltk"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE="numpy tk"

RDEPEND="${RDEPEND}
	numpy? ( dev-python/numpy[${PYTHON_USEDEP}] )
	dev-python/pyyaml[${PYTHON_USEDEP}]"

DEPEND="${RDEPEND}
	app-arch/unzip"

