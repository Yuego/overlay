# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=7
PYTHON_COMPAT=( python3_{6,7,8,9} pypy3 )

inherit distutils-r1 git-r3

DESCRIPTION="Celery Periodic Tasks backed by the Django ORM"
HOMEPAGE="https://github.com/celery/django-celery-beat"

EGIT_REPO_URI="https://github.com/celery/django-celery-beat.git"

LICENSE="BSD"
SLOT="0"
KEYWORDS=""
IUSE=""

RDEPEND="
	>=dev-python/django-1.8[${PYTHON_USEDEP}]
	>=dev-python/celery-4.0[${PYTHON_USEDEP}]
	<dev-python/celery-5.0[${PYTHON_USEDEP}]
	>=dev-python/django-timezone-field-2.0[${PYTHON_USEDEP}]
"

DEPEND="
	dev-python/setuptools[${PYTHON_USEDEP}]
"
