# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python2_{6,7} python3_{3,4,5,6,7} pypy pypy3 )

inherit distutils-r1 git-r3

DESCRIPTION="(formerly known as django-salmonella) A raw_id_fields widget replacement that handles display of an
object's string value on change and can be overridden via a template."
HOMEPAGE="http://readthedocs.org/docs/django-salmonella/en/latest/"

EGIT_REPO_URI="https://github.com/lincolnloop/django-dynamic-raw-id.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS=""
IUSE=""

RDEPEND="
	>=dev-python/django-1.8[${PYTHON_USEDEP}]
	dev-python/six[${PYTHON_USEDEP}]
"
DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
