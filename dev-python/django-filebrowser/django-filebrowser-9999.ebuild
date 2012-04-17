# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="4"

inherit eutils distutils git-2

EGIT_REPO_URI="https://github.com/wardi/django-filebrowser-no-grappelli.git"
DESCRIPTION="django-filebrowser for default Django admin site."
HOMEPAGE="https://github.com/wardi/django-filebrowser-no-grappelli"
LICENSE="as-is"
SLOT="0"
KEYWORDS="~amd64 ~ia64 ~ppc ~ppc64 ~x86"
IUSE=""

RDEPEND=">=dev-python/django-1.3"
DEPEND="dev-python/setuptools"

PYTHON_MODNAME="filebrowser"

src_test() {
	python setup.py test || die "tests failed"
}

src_prepare() {
	epatch ${FILESDIR}/mp.patch
}

src_install () {
	distutils_src_install
	#rm -fr "${D}"usr/lib*/python*/site-packages/tests
	dodoc LICENSE
}
