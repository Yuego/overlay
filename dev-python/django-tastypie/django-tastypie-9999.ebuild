# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="4"

inherit distutils git-2

DESCRIPTION="Creating delicious APIs for Django apps since 2010."
HOMEPAGE="http://tastypieapi.org/"

EGIT_REPO_URI="https://github.com/toastdriven/django-tastypie.git"

LICENSE="as-is"
SLOT="0"
KEYWORDS="~amd64 ~ia64 ~ppc ~ppc64 ~x86"
IUSE="digest lxml pyyaml biplist"

RDEPEND=">=dev-python/django-1.3
	>=dev-python/mimeparse-0.1.3
	>=dev-python/python-dateutil-2.1
	digest? ( dev-python/python-digest )
	lxml? ( dev-python/lxml )
	pyyaml? ( dev-python/pyyaml )
	biplist? ( dev-python/biplist )
	"
DEPEND="dev-python/setuptools"

PYTHON_MODNAME="tastypie"

src_test() {
	python setup.py test || die "tests failed"
}

