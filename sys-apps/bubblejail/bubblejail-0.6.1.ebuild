# Copyright 2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit meson

DESCRIPTION="Bubblejail"
HOMEPAGE="https://github.com/igo95862/bubblejail"
SRC_URI="https://github.com/igo95862/bubblejail/releases/download/${PV}/bubblejail-${PV}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="amd64"

DEPEND="
	dev-python/tomli
	dev-python/tomli-w
	dev-python/pyxdg
	sys-libs/libseccomp[python]
	sys-apps/bubblewrap
	sys-apps/xdg-dbus-proxy
	dev-util/desktop-file-utils
	dev-python/PyQt5
"
RDEPEND="${DEPEND}"
BDEPEND="sys-devel/m4"

S="${WORKDIR}"
