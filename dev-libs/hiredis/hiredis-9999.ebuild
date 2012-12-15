# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-libs/jemalloc/Attic/jemalloc-3.1.0.ebuild,v 1.2 2012/11/25 12:46:43 anarchy dead $

EAPI=4

inherit git-2

DESCRIPTION="Minimalistic C client for Redis >= 1.2"
HOMEPAGE="https://github.com/redis/hiredis"

EGIT_REPO_URI="https://github.com/redis/hiredis.git"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~arm ~hppa ~ppc ~ppc64 ~x86"

IUSE=""

DEPEND="dev-db/redis
"
RDEPEND="${DEPEND}"

