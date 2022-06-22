EAPI="7"

IUSE=""
MODS="systemd-utils"
BASEPOL="2.20220106-r3"
POLICY_FILES="systemd-utils.te"

inherit selinux-policy-2

DESCRIPTION="SELinux policy for systemd udev"

KEYWORDS="~amd64 ~x86"

