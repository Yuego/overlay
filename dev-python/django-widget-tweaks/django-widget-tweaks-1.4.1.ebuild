# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python2_7 python3_{3,4,5,6,7} pypy pypy3 )

inherit distutils-r1

DESCRIPTION="Tweak the form field rendering in templates, not in python-level form definitions. CSS classes and HTML attributes can be altered."
HOMEPAGE="https://pypi.python.org/pypi/django-widget-tweaks"

SRC_URI="https://github.com/kmike/django-widget-tweaks/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE="-tests"

RDEPEND=">=dev-python/django-1.4.2[${PYTHON_USEDEP}]
	tests? ( dev-python/tox[${PYTHON_USEDEP}] )"
DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
