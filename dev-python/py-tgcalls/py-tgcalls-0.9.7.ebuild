# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=8
PYTHON_COMPAT=( python3_11 pypy3 )

PYPI_PN=${PN/-/_}

inherit distutils-r1 pypi

DESCRIPTION="A simple and elegant client that"
HOMEPAGE="https://github.com/pytgcalls/pytgcalls"

SRC_URI="https://files.pythonhosted.org/packages/13/2d/b6c556e815f185075eeb747b1f89e8c6198b442010eeecc7e99ccc9d17d3/py_tgcalls-0.9.7-cp311-cp311-manylinux2014_x86_64.whl"

#SRC_URI="$(pypi_wheel_url "${PYPI_PN}" "${PV}" "cp311-cp311" "manylinux2014_x86_64")"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64"
IUSE=""

RDEPEND="
	!dev-python/pytgcalls[${PYTHON_USEDEP}]

	dev-python/aiohttp[${PYTHON_USEDEP}]
	dev-python/psutil[${PYTHON_USEDEP}]
	dev-python/screeninfo[${PYTHON_USEDEP}]

	net-libs/nodejs
"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"

#S="${WORKDIR}/../distdir"

PATCHES=(
	"${FILESDIR}/leave_group_call.patch"
)

src_unpack(){
	wheel unpack ../distdir/${A}
}


src_prepare(){
	default

	wheel pack "$S"
}

src_configure(){
	echo
}

src_compile(){
	echo
}

src_install(){
	python_foreach_impl distutils_wheel_install "$D" "${S}/${A}"
}
