# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=7
PYTHON_COMPAT=( python3_{6,7,8} pypy )

inherit distutils-r1

DESCRIPTION="Mimesis is a high-performance fake data generator for Python"
HOMEPAGE="https://github.com/lk-geimfari/mimesis"

SRC_URI="https://github.com/lk-geimfari/mimesis/archive/v4.1.2.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64"
IUSE=""

RDEPEND="
"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"

src_prepare(){
	sed -i "s/('', \['LICENSE'\]),//g" setup.py
	distutils-r1_src_prepare
}
