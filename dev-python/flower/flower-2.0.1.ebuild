# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=8
PYTHON_COMPAT=( python3_{9..13} pypy3 )
DISTUTILS_USE_PEP517=setuptools

inherit distutils-r1 systemd

DESCRIPTION="Real-time monitor and web admin for Celery distributed task queue"
HOMEPAGE="https://flower.readthedocs.org/ https://github.com/mher/flower/ https://pypi.org/project/flower/"
SRC_URI="https://github.com/mher/flower/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""
RESTRICT="test"

RDEPEND="
	>=dev-python/celery-5.0.5[${PYTHON_USEDEP}]
	>=dev-python/tornado-5.0.0[${PYTHON_USEDEP}]
	<dev-python/tornado-7.0.0[${PYTHON_USEDEP}]

	dev-python/pytz[${PYTHON_USEDEP}]
	>=dev-python/humanize-2.4.0[${PYTHON_USEDEP}]
	>=dev-python/prometheus-client-0.8.0[${PYTHON_USEDEP}]
	dev-python/setuptools[${PYTHON_USEDEP}]

	acct-user/flower
	acct-group/flower
"

src_prepare() {
	eapply_user
	sed -e 's:tornado==4.2.0:tornado>=4.2.0:' \
		-i requirements/default.txt || die
}

src_install() {
	distutils-r1_src_install
	insinto /etc/flower
	doins "${FILESDIR}/config.py"
	newinitd "${FILESDIR}/${PN}.initd" "${PN}"
	newconfd "${FILESDIR}/${PN}.confd" "${PN}"
	systemd_dounit "${FILESDIR}/${PN}.service"
	keepdir /var/log/${PN}
	fowners ${PN}:${PN} /var/log/${PN}
	insinto /etc/logrotate.d
	newins "${FILESDIR}/${PN}.logrotated" "${PN}"
}

python_install() {
	distutils-r1_python_install --install-scripts "${EPREFIX}/usr/libexec/flower"
}

python_test() {
	esetup.py test || die
}
