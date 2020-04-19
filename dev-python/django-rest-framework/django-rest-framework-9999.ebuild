# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python{2_7,3_3} pypy )

inherit distutils-r1 git-r3

DESCRIPTION="Awesome web-browseable Web APIs."
HOMEPAGE="https://github.com/tomchristie/django-rest-framework"

EGIT_REPO_URI="git://github.com/tomchristie/django-rest-framework.git"

LICENSE="BSD"
SLOT="0"
KEYWORDS=""
IUSE=""

RDEPEND=">=dev-python/django-1.3"
DEPEND="dev-python/setuptools"
