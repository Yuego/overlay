# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

PYTHON_COMPAT=( python{2_7,3_3,3_4,3_5} )

inherit distutils-r1

DESCRIPTION="A helper class for handling configuration defaults of packaged apps gracefully"
HOMEPAGE="https://github.com/jezdez/django-appconf http://django-appconf.readthedocs.org/ https://pypi.python.org/pypi/django-appconf"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE="doc test"

RDEPEND="
	>=dev-python/django-1.7
	dev-python/six"
DEPEND="${RDEPEND}
	dev-python/setuptools
	doc? ( dev-python/sphinx )
	test? ( dev-python/django-discover-runner
		dev-python/flake8
		dev-python/coverage )"

python_compile_all() {
	use doc && emake -C docs html
}

python_test() {
	cd appconf/tests || die
	set -- django-admin.py test appconf --settings=appconf.test_settings
	echo "$@"
	"$@" || die "Testing failed with ${EPYTHON}"
}

python_install_all() {
	use doc && HTML_DOCS=( docs/_build/html/. )
	distutils-r1_python_install_all
}