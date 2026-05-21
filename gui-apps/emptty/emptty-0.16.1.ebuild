EAPI=8

inherit go-module pam systemd

DESCRIPTION="Dead simple CLI Display Manager on TTY"
HOMEPAGE="https://github.com/tvrzna/emptty"
SRC_URI="https://github.com/tvrzna/emptty/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"
RESTRICT="primaryuri"

IUSE="X pam"

DEPEND="
	pam? ( sys-libs/pam )
	X? ( x11-libs/libX11 )
"
RDEPEND="${DEPEND}"
BDEPEND=">=dev-lang/go-1.20"

DOCS="README.md SAMPLES.md res/conf"

src_compile() {
	local tags=""

	# Build tags based on USE flags
	tags+=" $(usex X '' 'noxlib')"
	tags+=" $(usex pam '' 'nopam')"

	go build -tags "${tags}" || die
}

src_install() {
	dobin emptty
	einstalldocs
	doman res/emptty.1

	use pam && newpamd res/pam emptty
	systemd_newunit res/systemd-service emptty.service
	exeinto /etc/init.d
	newexe res/openrc-service emptty
}
