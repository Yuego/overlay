# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python3_{3,4,5,6,7} pypy )

inherit distutils-r1

DESCRIPTION="Celery Periodic Tasks backed by the Django ORM"
HOMEPAGE="https://github.com/celery/django-celery-beat"

SRC_URI="https://github.com/celery/django-celery-beat/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

RDEPEND="
	>=dev-python/django-1.8[${PYTHON_USEDEP}]
	>=dev-python/celery-4.0[${PYTHON_USEDEP}]
	<dev-python/celery-5.0[${PYTHON_USEDEP}]
	>=dev-python/django-timezone-field-2.0[${PYTHON_USEDEP}]
	>=dev-python/python-crontab-2.3.4[${PYTHON_USEDEP}]
"

DEPEND="
	dev-python/setuptools[${PYTHON_USEDEP}]
"
