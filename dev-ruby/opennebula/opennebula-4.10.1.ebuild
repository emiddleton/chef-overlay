# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5
USE_RUBY="ruby19 ruby20 ruby21"

inherit ruby-fakegem

DESCRIPTION="Libraries needed to talk to OpenNebula"
HOMEPAGE="http://dev.opennebula.org/projects/opennebula/repository"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="amd64"
IUSE=""

ruby_add_rdepend "
	dev-ruby/json
	dev-ruby/nokogiri
	dev-ruby/rbvmomi
"
