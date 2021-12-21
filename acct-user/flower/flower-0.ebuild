# Copyright 2019-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit acct-user

DESCRIPTION="Flower (Celery monitor) user"
ACCT_USER_ID=125
ACCT_USER_GROUPS=( flower )
acct-user_add_deps
