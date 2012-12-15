# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="4"

inherit eutils distutils git-2

DESCRIPTION="Makes django models pickling 2-3 times faster and compact."
HOMEPAGE="https://github.com/Suor/django-pickling"

EGIT_REPO_URI="https://github.com/Suor/django-pickling.git"

LICENSE="as-is"
SLOT="0"
KEYWORDS="~amd64 ~ia64 ~ppc ~ppc64 ~x86"
IUSE=""

RDEPEND=">=dev-python/django-1.4"
DEPEND="dev-python/setuptools"

PYTHON_MODNAME="django_pickling"

src_test() {
	python setup.py test || die "tests failed"
}

