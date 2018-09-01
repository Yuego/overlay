# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python2_7 python3_{3,4,5,6,7} pypy pypy3 )

inherit distutils-r1 git-r3

DESCRIPTION="Drop-in replacement of Django admin comes with lots of goodies, fully extensible with plugin support, pretty UI based on Twitter Bootstrap."
HOMEPAGE="https://github.com/sshwsfc/xadmin"

EGIT_REPO_URI="https://github.com/sshwsfc/xadmin.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS=""
IUSE=""

RDEPEND="
	>=dev-python/django-1.9[${PYTHON_USEDEP}]
	>=dev-python/django-crispy-forms-1.6.0[${PYTHON_USEDEP}]
	>=dev-python/django-reversion-2.0.0[${PYTHON_USEDEP}]
	>=dev-python/django-formtools-1.0[${PYTHON_USEDEP}]
	>=dev-python/django-import-export-0.5.1[${PYTHON_USEDEP}]
	>=dev-python/httplib2-0.9.2[${PYTHON_USEDEP}]
	dev-python/future[${PYTHON_USEDEP}]
	dev-python/six[${PYTHON_USEDEP}]
"
DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
