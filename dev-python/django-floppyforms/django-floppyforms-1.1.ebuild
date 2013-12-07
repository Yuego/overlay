# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5
PYTHON_COMPAT=( python{2_5,2_6,2_7,3_3} pypy2_0 )

inherit distutils-r1

DESCRIPTION="Full control of form rendering in the templates."
HOMEPAGE="https://github.com/brutasse/django-floppyforms"

SRC_URI="https://github.com/brutasse/django-floppyforms/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

RDEPEND="
	>=dev-python/django-1.4
"
DEPEND="dev-python/setuptools"


