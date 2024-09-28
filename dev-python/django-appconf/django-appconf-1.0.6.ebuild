# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3_{8..13} )

inherit distutils-r1 git-r3

DESCRIPTION="A helper class for handling configuration defaults of packaged apps gracefully"
HOMEPAGE="https://github.com/django-compressor/django-appconf https://django-appconf.readthedocs.io/"

EGIT_REPO_URI="https://github.com/django-compressor/django-appconf.git"
EGIT_COMMIT="bcb3ba49264de753c3f0a2bb466299db254c1d97"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64"

RDEPEND="
	dev-python/django[${PYTHON_USEDEP}]
"

python_test() {
	local -x DJANGO_SETTINGS_MODULE=tests.test_settings
	local -x PYTHONPATH="${S}"
	django-admin test -v 2 || die
}
