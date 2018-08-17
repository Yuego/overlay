# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python2_7 python3_{3,4,5,6} pypy pypy3 )

inherit distutils-r1

DESCRIPTION="Modern email handling in python."
HOMEPAGE="https://python-emails.readthedocs.io https://github.com/lavr/python-emails"

SRC_URI="https://github.com/lavr/python-emails/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE="django"

RDEPEND="
	dev-python/cssutils[${PYTHON_USEDEP}]
	dev-python/lxml[${PYTHON_USEDEP}]
	dev-python/chardet[${PYTHON_USEDEP}]
	>=dev-python/python-dateutil-2.1[${PYTHON_USEDEP}]
	<dev-python/python-dateutil-3.0
	dev-python/requests[${PYTHON_USEDEP}]
	>=dev-python/premailer-2.8.3[${PYTHON_USEDEP}]
    django? (
        >=dev-python/django-1.8[${PYTHON_USEDEP}]
    )
"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
