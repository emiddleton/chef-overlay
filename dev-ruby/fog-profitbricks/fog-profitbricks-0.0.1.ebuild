# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5
USE_RUBY="ruby19 ruby20 ruby21"

inherit ruby-fakegem

DESCRIPTION="Module for the 'fog' gem to support ProfitBricks."
HOMEPAGE="https://github.com/fog/fog-profitbricks"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64"
IUSE=""

ruby_add_rdepend "
	dev-ruby/fog-core
	dev-ruby/fog-xml
	dev-ruby/nokogiri
"
