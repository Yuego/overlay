# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3_{6,7,8} )
PYTHON_REQ_USE="threads(+)"

inherit distutils-r1

DESCRIPTION="Video editing with Python"
HOMEPAGE="http://zulko.github.io/moviepy/"
SRC_URI="https://github.com/Zulko/moviepy/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 ~x86"
IUSE="test"

DEPEND="
	dev-python/setuptools[${PYTHON_USEDEP}]
	test? ( dev-python/pytest[${PYTHON_USEDEP}] )
	"
RDEPEND="
	dev-python/decorator[${PYTHON_USEDEP}]
	dev-python/imageio[${PYTHON_USEDEP}]
	dev-python/matplotlib[${PYTHON_USEDEP}]
	dev-python/numpy[${PYTHON_USEDEP}]
	dev-python/pygame[${PYTHON_USEDEP}]
	dev-python/tqdm[${PYTHON_USEDEP}]
	dev-python/urllib3[${PYTHON_USEDEP}]
	sci-libs/scipy[${PYTHON_USEDEP}]
	virtual/ffmpeg
	"

src_prepare(){
	default

	rm ./tests -rf
}


python_test() {
	py.test --verbose || die
}
