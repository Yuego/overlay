# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{9..12} )
DISTUTILS_USE_PEP517=setuptools

inherit distutils-r1

if [[ "${PV}" == *9999 ]]; then
	inherit git-r3

	EGIT_REPO_URI="https://github.com/certbot/certbot.git"
	EGIT_SUBMODULES=()
	EGIT_CHECKOUT_DIR="${WORKDIR}/${P}"
else
	SRC_URI="
		https://github.com/certbot/certbot/archive/v${PV}.tar.gz
			-> ${P}.gh.tar.gz
	"
	KEYWORDS="amd64 ~arm ~arm64 ~ppc64 ~riscv x86"
fi

DESCRIPTION="Let’s Encrypt client to automate deployment of X.509 certificates"
HOMEPAGE="
	https://github.com/certbot/certbot
	https://letsencrypt.org/
"

LICENSE="Apache-2.0"
SLOT="0"

IUSE="selinux"

S="${WORKDIR}/certbot-${PV}/${PN}"

# See certbot/setup.py for acme >= dep
RDEPEND="
	=app-crypt/certbot-${PV}[${PYTHON_USEDEP}]
	dev-python/cloudflare[${PYTHON_USEDEP}]
"

