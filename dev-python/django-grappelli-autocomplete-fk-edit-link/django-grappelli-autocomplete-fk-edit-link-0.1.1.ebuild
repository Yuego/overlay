# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-python/django-select2/django-select2-4.0.0.ebuild,v 1.2 2013/04/02 16:28:26 prometheanfire Exp $

EAPI=6
PYTHON_COMPAT=( python{2_7,3_3,3_4,3_5} )

inherit distutils-r1

DESCRIPTION="A Django integration of Select2"
HOMEPAGE="https://github.com/CrossWaterBridge/django-grappelli-autocomplete-fk-edit-link"

SRC_URI="https://github.com/CrossWaterBridge/django-grappelli-autocomplete-fk-edit-link/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 x86"

RDEPEND="
	dev-python/django
"
DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
