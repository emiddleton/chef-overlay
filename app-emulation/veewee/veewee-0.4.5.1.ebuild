# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5
USE_RUBY="ruby19 ruby20"

RUBY_FAKEGEM_EXTRAINSTALL="templates"

inherit ruby-fakegem

DESCRIPTION="Easing the building of vagrant boxes"
HOMEPAGE="https://github.com/jedi4ever/veewee"
SRC_URI="https://github.com/jedi4ever/veewee/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

RUBY_PATCHES=(
	use-full-arp-path.patch
	accept-git-urls.patch
	vnc-fixes.patch
)

ruby_add_rdepend "
	>=dev-ruby/net-ssh-2.2.0
	>=dev-ruby/mime-types-1.16
	>=dev-ruby/popen4-0.1.2
	>=dev-ruby/thor-0.15
    dev-ruby/highline
	dev-ruby/json
	dev-ruby/progressbar
	dev-ruby/i18n
	>=dev-ruby/ansi-1.3.0
	>=dev-ruby/ruby-vnc-1.0.0
	>=dev-ruby/fog-1.8
	dev-ruby/childprocess
	dev-ruby/grit
	>=dev-ruby/fission-0.5.0
	dev-ruby/to_slug
	>=dev-ruby/os-0.9.6
"
