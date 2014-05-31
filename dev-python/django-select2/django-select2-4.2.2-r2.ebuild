# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-python/django-select2/django-select2-4.0.0.ebuild,v 1.2 2013/04/02 16:28:26 prometheanfire Exp $

EAPI="5"
PYTHON_COMPAT=( python{2_7,3_3} )

inherit distutils-r1 git-2

MY_PN="Django-Select2"

DESCRIPTION="A Django integration of Select2"
HOMEPAGE="https://pypi.python.org/pypi/Django-Select2"

EGIT_REPO_URI="git://github.com/sinnwerkstatt/django-select2.git"
EGIT_COMMIT="8aa436a25bfaa0a09c1f1e9377b242e75ef46928"

#S="${WORKDIR}/${MY_PN}-${PV}"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 x86"

RDEPEND="dev-python/django[${PYTHON_USEDEP}]"
DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
