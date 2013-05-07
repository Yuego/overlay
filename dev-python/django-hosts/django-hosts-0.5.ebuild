# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="4"

inherit distutils

DESCRIPTION="Dynamic and static host resolving for Django. Maps host names to URLconfs."
HOMEPAGE="https://github.com/ennio/django-hosts"

SRC_URI="https://github.com/ennio/django-hosts/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="as-is"
SLOT="0"
KEYWORDS="amd64 ia64 ppc ppc64 x86"
IUSE=""

RDEPEND=">=dev-python/django-1.3
"

DEPEND="dev-python/setuptools"

PYTHON_MODNAME="django_hosts"

src_test() {
	python setup.py test || die "tests failed"
}

