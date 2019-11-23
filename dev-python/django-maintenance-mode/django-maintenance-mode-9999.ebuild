# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=7
PYTHON_COMPAT=( python3_{5,6,7} pypy pypy3 )

inherit distutils-r1 git-r3

DESCRIPTION="Django-maintenancemode allows you to
temporary shutdown your site for maintenance work"
HOMEPAGE="https://github.com/shanx/django-maintenance-mode"

EGIT_REPO_URI="https://github.com/shanx/django-maintenance-mode.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS=""
IUSE=""

RDEPEND="
	ip? (
		dev-python/django-ipware[${PYTHON_USEDEP}]
	)
"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
