# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5
PYTHON_COMPAT=( python{2_7,3_1,3_2,3_3} pypy2_0 )

inherit distutils-r1 git-2

DESCRIPTION="Django FIAS"
HOMEPAGE="https://github.com/Yuego/django-fias"

EGIT_REPO_URI="git://github.com/Yuego/django-fias.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS=""
IUSE=""

RDEPEND=">=dev-python/django-1.4
	dev-python/django-select2
	>=dev-python/sphinxit-0.3.2
	dev-python/rarfile
	dev-python/suds
	dev-python/lxml
"
DEPEND="dev-python/setuptools"

