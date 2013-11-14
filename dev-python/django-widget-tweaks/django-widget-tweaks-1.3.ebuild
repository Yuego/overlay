# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="5"
PYTHON_COMPAT=( python{2_6,2_7} pypy2_0 )

inherit distutils-r1

DESCRIPTION="Tweak the form field rendering in templates, not in python-level form definitions. CSS classes and HTML attributes can be altered."
HOMEPAGE="http://pypi.python.org/pypi/django-widget-tweaks"

SRC_URI="https://github.com/kmike/django-widget-tweaks/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 ia64 ppc ppc64 x86"
IUSE="-tests"

RDEPEND=">=dev-python/django-1.3
	tests? ( dev-python/tox )"
DEPEND="dev-python/setuptools"

