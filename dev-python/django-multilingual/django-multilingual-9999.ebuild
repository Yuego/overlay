# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="4"

inherit eutils distutils git-2

DESCRIPTION="This is a library providing support for multilingual content in
Django models."
HOMEPAGE="https://github.com/stefanfoulis/django-multilingual"

EGIT_REPO_URI="https://github.com/stefanfoulis/django-multilingual.git"

LICENSE="as-is"
SLOT="0"
KEYWORDS="~amd64 ~ia64 ~ppc ~ppc64 ~x86"
IUSE=""

RDEPEND=">=dev-python/django-1.3
"
DEPEND="dev-python/setuptools"

PYTHON_MODNAME="multilingual"

src_test() {
	python setup.py test || die "tests failed"
}

