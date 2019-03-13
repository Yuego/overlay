# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python3_{3,4,5,6,7} pypy pypy3 )

inherit distutils-r1

DESCRIPTION="Crontab module for reading and writing crontab files and accessing
the system cron automatically and simply using a direct API."
HOMEPAGE="https://gitlab.com/doctormo/python-crontab"

EGIT_COMMIT="d3d028eb065ddb26db7b720a520c639a61628839"
SRC_URI="https://gitlab.com/doctormo/${PN}/-/archive/v${PV}/${PN}-v{$PV}.tar.gz -> ${P}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE="schedule"

RDEPEND="
	schedule? ( dev-python/croniter[${PYTHON_USEDEP}] )
	dev-python/python-dateutil[${PYTHON_USEDEP}]
"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"

S="${WORKDIR}/${PN}-v${PV}-${EGIT_COMMIT}"
