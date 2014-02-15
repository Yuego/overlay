# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5
PYTHON_COMPAT=( python{2_5,2_6,2_7} pypy2_0 )

inherit distutils-r1
# Convert the ebuild version to the upstream mozilla version, used by mozlinguas
MY_PV="${PV/_beta/b}" # Handle beta for SRC_URI
MY_PV="${MY_PV/_alpha/a}"
MY_PV="${MY_PV/_rc/rc}" # Handle rc for SRC_URI


DESCRIPTION="A fresh approach to autocomplete implementations, specially for Django."
HOMEPAGE="https://github.com/yourlabs/django-autocomplete-light"

SRC_URI="https://github.com/yourlabs/django-autocomplete-light/archive/${MY_PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

RDEPEND="
	>=dev-python/django-1.3
"
DEPEND="dev-python/setuptools"


