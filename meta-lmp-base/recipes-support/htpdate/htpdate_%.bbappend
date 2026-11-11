FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

SRC_URI += "file://default.conf"

inherit systemd

SYSTEMD_SERVICE:${PN} = "htpdate.service"

do_install:append() {
	if ${@bb.utils.contains('DISTRO_FEATURES', 'systemd', 'true', 'false', d)}; then
		install -d ${D}${sysconfdir}/default
		install -m 644 ${WORKDIR}/default.conf ${D}${sysconfdir}/default/htpdate
		install -d ${D}${systemd_system_unitdir}
		install -m 644 ${S}/scripts/htpdate.service ${D}${systemd_system_unitdir}
	fi
}
