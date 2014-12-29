# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="5"
USE_RUBY="ruby19 ruby20"

inherit ruby-fakegem

DESCRIPTION="The Ruby cloud computing library"
HOMEPAGE="http://github.com/geemus/fog"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

ruby_add_rdepend "
    dev-ruby/builder
	>=dev-ruby/excon-0.31.0
	>=dev-ruby/formatador-0.2.0
	>=dev-ruby/multi_json-1.0
	dev-ruby/mime-types
	>=dev-ruby/net-ssh-2.1.4
	>=dev-ruby/net-scp-1.1
	>=dev-ruby/nokogiri-1.5.11
	"