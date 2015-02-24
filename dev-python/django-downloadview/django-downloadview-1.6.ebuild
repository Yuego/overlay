# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5
PYTHON_COMPAT=( python{2_7,3_3} pypy2_0 )

inherit distutils-r1

DESCRIPTION="Serve files with Django."
HOMEPAGE="https://github.com/benoitbryon/django-downloadview"

SRC_URI="https://github.com/benoitbryon/django-downloadview/archive/${PV}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="
	>=dev-python/django-1.5
	dev-python/requests
	dev-python/six
"
DEPEND="dev-python/setuptools"

