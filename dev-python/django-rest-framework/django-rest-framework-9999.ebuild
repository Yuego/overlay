# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="5"
PYTHON_COMPAT=( python{2_7,3_3} pypy{1_9,2_0} )

inherit distutils git-2

DESCRIPTION="Awesome web-browseable Web APIs."
HOMEPAGE="https://github.com/tomchristie/django-rest-framework"

EGIT_REPO_URI="git://github.com/tomchristie/django-rest-framework.git"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-python/django-1.3"
DEPEND="dev-python/setuptools"

