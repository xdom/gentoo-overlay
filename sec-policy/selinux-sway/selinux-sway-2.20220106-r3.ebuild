EAPI="7"

IUSE=""
MODS="sway"
POLICY_FILES="sway.te sway.fc"

inherit selinux-policy-2

DESCRIPTION="SELinux policy for sway"

KEYWORDS="~amd64 ~x86"

DEPEND="
	sec-policy/selinux-wm
"
RDEPEND="${DEPEND}"
