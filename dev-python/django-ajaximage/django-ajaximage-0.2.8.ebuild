# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python{2_7,3_3,3_4,3_5} pypy2_0 )

inherit distutils-r1

DESCRIPTION="Upload images via ajax. Images are optionally resized."
HOMEPAGE="https://github.com/bradleyg/django-ajaximage"

SRC_URI="https://github.com/bradleyg/django-ajaximage/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

RDEPEND="
	>=dev-python/django-1.7
	dev-python/pillow
"
DEPEND="dev-python/setuptools"

