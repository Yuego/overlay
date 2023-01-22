# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=7
PYTHON_COMPAT=( python3_{6..9} pypy3 )

inherit distutils-r1 git-r3

DESCRIPTION="Tech Docs"
HOMEPAGE="https://github.com/Yuego/tech_docs"

EGIT_REPO_URI="git@github.com-tech_docs:Yuego/tech_docs.git"
EGIT_COMMIT="0.1"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64"
IUSE="+scrapy"

RDEPEND="
	>=dev-python/django-3.0[${PYTHON_USEDEP}]
	dev-python/vincode[${PYTHON_USEDEP}]
	scrapy? (
		dev-python/scrapy[${PYTHON_USEDEP}]
		dev-python/scrapy-deltafetch[${PYTHON_USEDEP}]
		dev-python/scrapy-djangoitem[${PYTHON_USEDEP}]
		dev-python/user_agent[${PYTHON_USEDEP}]
	)
	dev-python/dawg[${PYTHON_USEDEP}]
	dev-python/django-downloadview[${PYTHON_USEDEP}]
	dev-python/PyMuPDF[${PYTHON_USEDEP}]
	dev-python/textract[${PYTHON_USEDEP}]

	dev-python/python-dateutil[${PYTHON_USEDEP}]

	dev-python/django-crispy-forms[${PYTHON_USEDEP}]
	>=dev-python/crispy-bootstrap5-0.4[${PYTHON_USEDEP}]

	dev-python/pinax-referrals[${PYTHON_USEDEP}]
"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"