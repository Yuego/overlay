# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python{2_6,2_7} pypy2_0 )

inherit distutils-r1

DESCRIPTION="MessagePack is a binary-based efficient data interchange format that is focused on high performance. It is like JSON, but very fast and small."
HOMEPAGE="http://pypi.python.org/pypi/msgpack-python/"
SRC_URI="http://pypi.python.org/packages/source/m/msgpack-python/${P}.tar.gz"

LICENSE="Apache-2.0"
KEYWORDS="~amd64 ~x86"
SLOT="0"
IUSE=""

RDEPEND="dev-lang/python"
DEPEND="${RDEPEND}"
