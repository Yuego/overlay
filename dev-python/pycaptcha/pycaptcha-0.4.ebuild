# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="5"
PYTHON_COMPAT=( python{2_5,2_6} )

inherit distutils-r1 subversion

DESCRIPTION="A Python framework for CAPTCHA tests"
HOMEPAGE="http://svn.navi.cx/misc/tags/pycaptcha-0.4/"
ESVN_REPO_URI="http://svn.navi.cx/misc/tags/pycaptcha-0.4/"
LICENSE="MIT"
SLOT="0"
KEYWORDS="~x86 ~amd64"

RDEPEND="virtual/python-imaging"
DEPEND="${RDEPEND}"

