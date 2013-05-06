# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="4"

inherit eutils distutils

DESCRIPTION="Custom management extensions for the Django Framework."
HOMEPAGE="https://github.com/django-extensions/django-extensions"

SRC_URI="https://github.com/django-extensions/django-extensions/archive/${PV}.tar.gz -> django-extensions-${PV}.tar.gz"


LICENSE="as-is"
SLOT="0"
KEYWORDS="~amd64 ~ia64 ~ppc ~ppc64 ~x86"
IUSE=""

RDEPEND=">=dev-python/django-1.3
	"
DEPEND="dev-python/setuptools"

PYTHON_MODNAME="django_extensions"

src_test() {
	python setup.py test || die "tests failed"
}
