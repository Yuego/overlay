# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5
PYTHON_COMPAT=( python{2_7,3_3,3_4,3_5} pypy2_0 )

inherit distutils-r1 git-2

DESCRIPTION="Django FIAS"
HOMEPAGE="https://github.com/Yuego/django-fias"

EGIT_REPO_URI="git://github.com/Yuego/django-fias.git"
EGIT_BRANCH="develop"

LICENSE="MIT"
SLOT="0"
KEYWORDS=""
IUSE="sphinx"

RDEPEND=">=dev-python/django-1.7
	>=dev-python/django-select2-5.3
	dev-python/rarfile
	dev-python/suds-jurko
	dev-python/lxml
	dev-python/dbfread
	sphinx? (
		dev-python/mysqlclient
		app-misc/sphinx
	)
"
DEPEND="dev-python/setuptools"

