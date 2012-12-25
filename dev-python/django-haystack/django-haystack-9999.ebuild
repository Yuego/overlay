# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="4"

inherit eutils distutils git-2

DESCRIPTION="Modular search for Django."
HOMEPAGE="http://haystacksearch.org/"

EGIT_REPO_URI="https://github.com/toastdriven/django-haystack.git"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~ia64 ~ppc ~ppc64 ~x86"
IUSE="sphinx"

RDEPEND=">=dev-python/django-1.3
	sphinx? ( dev-python/sphinx-haystack )
"
DEPEND="dev-python/setuptools"

PYTHON_MODNAME="haystack"

src_test() {
	python setup.py test || die "tests failed"
}

