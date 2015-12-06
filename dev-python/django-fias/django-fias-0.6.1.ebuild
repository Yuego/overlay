# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python{2_7,3_3,3_4,3_5} pypy2_0 )

inherit distutils-r1

DESCRIPTION="Django FIAS"
HOMEPAGE="https://github.com/Yuego/django-fias"

SRC_URI="https://github.com/Yuego/django-fias/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

RDEPEND=">=dev-python/django-1.4
	dev-python/django-select2
	>=app-misc/sphinx-2.1
	>=dev-python/sphinxit-0.3.2
	|| ( dev-python/suds >=dev-python/suds-jurko-0.6 )
	dev-python/rarfile
	dev-python/lxml
	|| ( >=dev-python/south-1.0 >=dev-python/django-1.7 )
"
DEPEND="dev-python/setuptools"


