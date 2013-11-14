# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="5"
PYTHON_COMPAT=( python{2_6,2_7} pypy2_0 )

inherit distutils-r1

SRC_URI="http://pypi.python.org/packages/source/p/pymorphy-speedups/pymorphy-speedups-0.5.6.tar.gz"
DESCRIPTION="Pymorphy speedups"
HOMEPAGE="http://pypi.python.org/pypi/pymorphy-speedups"
LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~ia64 ~ppc ~ppc64 ~x86"
IUSE="+simplejson"

RDEPEND=">=dev-python/django-1.0"
DEPEND="dev-python/setuptools	
	simplejson? ( dev-python/simplejson )
	dev-python/pymorphy"

