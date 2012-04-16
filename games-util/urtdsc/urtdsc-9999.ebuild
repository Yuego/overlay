# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

inherit distutils git-2

DESCRIPTION="UrTDSC is a tool designed specially for anyone, who plays on
tournaments like Urban-Zone. This script shows screenshots for specified demo,
including address, that makes screenshot finding as easy as click on Close
button :-)"
HOMEPAGE="http://dev.pztrn.ru/projects/urtdsc/wiki"
EGIT_REPO_URI="http://github.com/pztrn/urtdsc"

LICENSE="GPL"
KEYWORDS=""
SLOT="0"
IUSE=""

RDEPEND="dev-lang/python
	dev-python/PyQt4"
DEPEND="${RDEPEND}"

src_unpack() {
	git-2_src_unpack
}
