# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="4"

inherit distutils git-2

DESCRIPTION="Plug and play continuous integration with Django and Jenkins"
HOMEPAGE="https://github.com/kmmbvnr/django-jenkins/"

EGIT_REPO_URI="https://github.com/kmmbvnr/django-jenkins.git"

LICENSE="as-is"
SLOT="0"
KEYWORDS="~amd64 ~ia64 ~ppc ~ppc64 ~x86"
IUSE=""

RDEPEND=">=dev-python/django-1.3
"
DEPEND="dev-python/setuptools"

PYTHON_MODNAME="django_jenkins"

src_test() {
	python setup.py test || die "tests failed"
}

