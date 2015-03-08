# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5
PYTHON_COMPAT=( python{2_7,3_3,3_4} pypy2_0 )

inherit distutils-r1 git-2

DESCRIPTION="The best way to have DRY Django forms."
HOMEPAGE="https://github.com/maraujop/django-crispy-forms"

EGIT_REPO_URI="https://github.com/maraujop/django-crispy-forms.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS=""
IUSE=""

RDEPEND=">=dev-python/django-1.3"
DEPEND="dev-python/setuptools"

