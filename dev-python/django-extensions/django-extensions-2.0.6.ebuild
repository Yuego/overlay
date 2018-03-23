# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python2_7 python3_{3,4,5,6} pypy pypy3 )

inherit distutils-r1

DESCRIPTION="Custom management extensions for the Django Framework."
HOMEPAGE="https://github.com/django-extensions/django-extensions"

SRC_URI="https://github.com/django-extensions/django-extensions/archive/${PV}.tar.gz -> django-extensions-${PV}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE="graphviz keyczar mongodb -pydot s3 -test"

RDEPEND="
	>=dev-python/django-1.9[${PYTHON_USEDEP}]
	>=dev-python/six-1.2[${PYTHON_USEDEP}]
	test? (
		dev-python/shortuuid[${PYTHON_USEDEP}]
		dev-python/python-dateutil[${PYTHON_USEDEP}]
	)
	s3? ( dev-python/boto[${PYTHON_USEDEP}] )
	mongodb? ( dev-python/mongoengine[${PYTHON_USEDEP}] )
	keyczar? ( dev-python/keyczar[${PYTHON_USEDEP}] )
	graphviz? ( dev-python/pygraphviz[${PYTHON_USEDEP}] )
	pydot? ( media-gfx/pydot[${PYTHON_USEDEP}] )
	"
DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
