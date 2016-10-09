# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python{2_7,3_3,3_4,3_5} pypy )

inherit distutils-r1 git-r3

DESCRIPTION="Django FIAS"
HOMEPAGE="https://github.com/Yuego/django-fias"

EGIT_REPO_URI="git://github.com/Yuego/django-fias.git"
EGIT_BRANCH="develop"

LICENSE="MIT"
SLOT="0"
KEYWORDS=""
IUSE="postgres sphinx -developer"

RDEPEND="
	>=dev-python/django-1.8[${PYTHON_USEDEP}]
	>=dev-python/django-select2-5.3.0[${PYTHON_USEDEP}]
	postgres? (
		dev-python/psycopg:2
	)
	sphinx? (
		>=app-misc/sphinx-2.1
	)
	|| (
		dev-python/zeep[${PYTHON_USEDEP}]
		dev-python/suds[$(python_gen_usedep 'python2*' pypy)]
		>=dev-python/suds-jurko-0.6[$(python_gen_usedep 'python3*' pypy)]
	)
	dev-python/rarfile[$(python_gen_usedep 'python*')]
	dev-python/lxml[$(python_gen_usedep 'python*')]
	dev-python/six[${PYTHON_USEDEP}]
	|| ( app-arch/unrar-gpl app-arch/unrar )
	>=dev-python/dbfread-2.0.5[${PYTHON_USEDEP}]
	dev-python/progress[${PYTHON_USEDEP}]

	developer? (
		dev-python/unrar[${PYTHON_USEDEP}]
		dev-python/tox[${PYTHON_USEDEP}]
		dev-python/pytest[${PYTHON_USEDEP}]
		>=dev-python/pytest-django-2.9.0[${PYTHON_USEDEP}]
		dev-python/pytest-xdist[${PYTHON_USEDEP}]
		dev-python/pytest-cov[${PYTHON_USEDEP}]
		dev-python/mock[${PYTHON_USEDEP}]
	)
"
DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
