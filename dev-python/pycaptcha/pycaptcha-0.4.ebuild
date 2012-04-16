# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="3"
PYTHON_DEPEND="2:2.4:2.6"
SUPPORT_PYTHON_ABIS="1"

inherit distutils subversion

DESCRIPTION="A Python framework for CAPTCHA tests"
HOMEPAGE="http://svn.navi.cx/misc/tags/pycaptcha-0.4/"
ESVN_REPO_URI="http://svn.navi.cx/misc/tags/pycaptcha-0.4/"
LICENSE="MIT"
SLOT="0"
KEYWORDS="~x86 ~amd64"

RDEPEND="dev-python/imaging"
DEPEND="${RDEPEND}"

RESTRICT_PYTHON_ABIS="3.*"
