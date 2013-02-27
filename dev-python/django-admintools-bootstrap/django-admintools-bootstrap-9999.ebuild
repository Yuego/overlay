# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="4"

inherit distutils mercurial

EHG_REPO_URI="https://bitbucket.org/salvator/django-admintools-bootstrap"
DESCRIPTION="https://bitbucket.org/salvator/django-admintools-bootstrap"
HOMEPAGE="https://bitbucket.org/salvator/django-admintools-bootstrap/"
LICENSE="as-is"
SLOT="0"
KEYWORDS="~amd64 ~ia64 ~ppc ~ppc64 ~x86"
IUSE=""

RDEPEND=">=dev-python/django-1.3
	dev-python/django-admin-tools"
DEPEND="dev-python/setuptools"

PYTHON_MODNAME="admintools_bootstrap"

src_test() {
	python setup.py test || die "tests failed"
}
