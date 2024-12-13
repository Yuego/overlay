# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=8
PYTHON_COMPAT=( python3_{9..13} pypy3 )
DISTUTILS_USE_PEP517=setuptools

inherit distutils-r1

DESCRIPTION="Crontab module for reading and writing crontab files and accessing
the system cron automatically and simply using a direct API."
HOMEPAGE="https://gitlab.com/doctormo/python-crontab"

EGIT_COMMIT="b266a6c7f99fc11a7fb57326b48e74c323340e09"
SRC_URI="https://gitlab.com/doctormo/${PN}/-/archive/v${PV}/${PN}-v{$PV}.tar.gz -> ${P}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE="schedule description"
RESTRICT="test"

RDEPEND="
	schedule? ( dev-python/croniter[${PYTHON_USEDEP}] )
	description? ( dev-python/cron-descriptor[${PYTHON_USEDEP}] )
	dev-python/python-dateutil[${PYTHON_USEDEP}]
"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"

S="${WORKDIR}/${PN}-v${PV}-${EGIT_COMMIT}"
