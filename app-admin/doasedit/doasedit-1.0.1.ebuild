EAPI=7

DESCRIPTION="Enable doers to edit non-user-writable files with an unprivileged editor"
HOMEPAGE="https://codeberg.org/TotallyLeGIT/doasedit"
SRC_URI="https://codeberg.org/TotallyLeGIT/doasedit/archive/${PV}.tar.gz"
S="${WORKDIR}/${PN}"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm64 x86"

RDEPEND=">=app-admin/doas-6.8.1-r1"

src_install() {
	dobin doasedit
	dodoc LICENSE
}
