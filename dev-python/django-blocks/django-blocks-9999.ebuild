# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python{2_6,2_7} pypy2_0 )

inherit distutils-r1 subversion

ESVN_REPO_URI="http://django-blocks.googlecode.com/svn/trunk/"
DESCRIPTION="Django Blocks will provide an easier way to build Web apps more quickly and with almost no code."
HOMEPAGE="http://code.google.com/p/django-blocks/"
LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~ia64 ~ppc ~ppc64 ~x86"
IUSE=""

RDEPEND=">=dev-python/django-1.0
	dev-python/django-tagging"
DEPEND="dev-python/setuptools"

