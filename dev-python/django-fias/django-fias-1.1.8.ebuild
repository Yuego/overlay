# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python{2_7,3_3,3_4,3_5} pypy2_0 )

inherit distutils-r1

DESCRIPTION="Django FIAS"
HOMEPAGE="https://github.com/Yuego/django-fias"

SRC_URI="https://github.com/Yuego/django-fias/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE="postgres sphinx -developer"

RDEPEND="
	>=dev-python/django-1.8
	>=dev-python/django-select2-5.3.0
	postgres? (
		dev-python/psycopg:2
	)
	sphinx? (
		>=app-misc/sphinx-2.1
	)
	|| ( dev-python/zeep dev-python/suds >=dev-python/suds-jurko-0.6 )
	dev-python/rarfile
	dev-python/lxml
	dev-python/six
	|| ( app-arch/unrar-gpl app-arch/unrar )
	>=dev-python/dbfread-2.0.5
	dev-python/progress

	developer? (
		dev-python/unrar
		dev-python/tox
		dev-python/pytest
		>=dev-python/pytest-django-2.9.0
		dev-python/pytest-xdist
		dev-python/pytest-cov
		dev-python/mock
	)
"
DEPEND="dev-python/setuptools"


