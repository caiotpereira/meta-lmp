require optee-test-fio.inc

SRCREV = "ae5d363f3911f6c02bf08b91f4472cd73c81aa59"
LIC_FILES_CHKSUM = "file://LICENSE.md;md5=a8fa504109e4cd7ea575bc49ea4be560"

# Due OpenSSL 3.0 deprecated warnings
CFLAGS += "-Wno-error=deprecated-declarations"
