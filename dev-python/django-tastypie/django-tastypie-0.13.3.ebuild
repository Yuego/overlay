# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python{2_6,2_7,3_3,3_4,3_5} pypy pypy3 )

inherit distutils-r1

DESCRIPTION="Creating delicious APIs for Django apps since 2010."
HOMEPAGE="http://tastypieapi.org/"

SRC_URI="https://github.com/django-tastypie/django-tastypie/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="x86 amd64"
IUSE="digest lxml pyyaml biplist"

RDEPEND="
	>=dev-python/django-1.5
	>=dev-python/mimeparse-0.1.4
	!=dev-python/mimeparse-1.5
	>=dev-python/python-dateutil-2.1
	digest? ( dev-python/python-digest )
	lxml? ( dev-python/lxml )
	pyyaml? ( dev-python/pyyaml )
	biplist? ( dev-python/biplist )
	"
DEPEND="dev-python/setuptools"
