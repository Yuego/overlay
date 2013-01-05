# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="4"

inherit eutils distutils git-2

DESCRIPTION="Deluxe autocomplete view helpers for Django projects."
HOMEPAGE="https://github.com/jeffkistler/django-fancy-autocomplete"

EGIT_REPO_URI="https://github.com/jeffkistler/django-fancy-autocomplete.git"

LICENSE="as-is"
SLOT="0"
KEYWORDS="~amd64 ~ia64 ~ppc ~ppc64 ~x86"
IUSE=""

RDEPEND=">=dev-python/django-1.3
"
DEPEND="dev-python/setuptools"

PYTHON_MODNAME="fancy_autocomplete"

src_test() {
	python setup.py test || die "tests failed"
}

