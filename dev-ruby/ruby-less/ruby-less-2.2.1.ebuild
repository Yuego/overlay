# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-ruby/ruby-zoom/ruby-zoom-0.4.1-r1.ebuild,v 1.2 2012/05/01 18:24:16 armin76 Exp $

EAPI=4
USE_RUBY="ruby18 ruby19"

RUBY_FAKEGEM_NAME="${PN/ruby-/}"

RUBY_FAKEGEM_DOCDIR="html"
RUBY_FAKEGEM_EXTRADOC=""

inherit multilib ruby-fakegem

IUSE=""

DESCRIPTION="Invoke the Less CSS compiler from Ruby"
HOMEPAGE="http://rubygems.org/gems/less"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~x86"

DEPEND="${DEPEND}
	dev-ruby/rake
	>=dev-ruby/rspec-2.0"
RDEPEND="${RDEPEND}
	dev-ruby/ruby-commonjs
	dev-ruby/ruby-therubyracer"

#each_ruby_configure() {
#	${RUBY} -Csrc extconf.rb || die
#}

#each_ruby_compile() {
#	emake -Csrc || die
#}

#each_ruby_install() {
#	mkdir lib || die
#	cp src/zoom$(get_modname) lib/ || die
#
#	each_fakegem_install
#}

#all_ruby_install() {
#	all_fakegem_install

#	insinto /usr/share/doc/${PF}
#	doins -r sample
#}
