# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: Exp $

EAPI=5
PYTHON_COMPAT=( python{2_7,3_3,3_4} pypy2_0 )

inherit distutils-r1 git-2

DESCRIPTION="A django-debug-toolbar panel that displays template rendering times for your Django application"
HOMEPAGE="https://github.com/orf/django-debug-toolbar-template-timings"
EGIT_REPO_URI="git://github.com/orf/django-debug-toolbar-template-timings.git"
EGIT_COMMIT="918a2a8caf31ec30140cb2993d49b35c8db70df8"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

RDEPEND="
	>=dev-python/django-1.4.2
    <dev-python/django-1.7
	>=dev-python/django-debug-toolbar-1.0
"
DEPEND="${RDEPEND}"

DOCS="LICENSE README.rst"

