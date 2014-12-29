# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5
USE_RUBY="ruby19 ruby20 ruby21"

inherit ruby-fakegem

DESCRIPTION=""
HOMEPAGE=""

LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

ruby_add_rdepend "
	dev-ruby/builder
	>=dev-ruby/excon-0.38
	>=dev-ruby/formatador-0.2
	dev-ruby/mime-types
	>=dev-ruby/net-scp-1.1
	>=dev-ruby/net-ssh-2.1.3
"
