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
IUSE="libvirt"

ruby_add_rdepend "
	>=dev-ruby/fog-core-1.25
	dev-ruby/fog-json
	>=dev-ruby/fog-xml-0.1.1
	>=dev-ruby/nokogiri-1.5.11
	dev-ruby/ipaddress
	libvirt? ( dev-ruby/ruby-libvirt )
	>=dev-ruby/fog-brightbox-0.4
	dev-ruby/fog-softlayer
	>=dev-ruby/fog-sakuracloud-0.0.4
	>=dev-ruby/fog-radosgw-0.0.2
	dev-ruby/fog-profitbricks
	dev-ruby/fog-voxel
	dev-ruby/fog-vmfusion
	dev-ruby/fog-terremark
	dev-ruby/opennebula
	"
