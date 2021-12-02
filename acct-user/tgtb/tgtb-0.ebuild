# Copyright 2019-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit acct-user

DESCRIPTION="TGTB program user"
ACCT_USER_ID=9696
ACCT_USER_GROUPS=( tgtb )
acct-user_add_deps
