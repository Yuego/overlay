# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python{2_6,2_7} pypy )

inherit distutils-r1 mercurial

EHG_REPO_URI="https://bitbucket.org/offline/django-annoying"
DESCRIPTION="This is django application that try to eliminate annoying things in Django framework."
HOMEPAGE="https://bitbucket.org/offline/django-annoying/wiki/Home"
LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~ia64 ~ppc ~ppc64 ~x86"
IUSE=""

RDEPEND=">=dev-python/django-1.0"
DEPEND="dev-python/setuptools"

src_install () {
	distutils-r1_src_install
	rm -fr "${D}"usr/lib*/python*/site-packages/tests
	dodoc *.txt
}
