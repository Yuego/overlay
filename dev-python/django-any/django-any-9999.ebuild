# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="4"

inherit distutils git-2

DESCRIPTION="Unobtrusive test models creation for django"
HOMEPAGE="https://github.com/kmmbvnr/django-any/"

EGIT_REPO_URI="https://github.com/kmmbvnr/django-any.git"

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

