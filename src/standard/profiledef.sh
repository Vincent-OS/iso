#!/usr/bin/env bash
# shellcheck disable=SC2034

iso_name="vincentOS"
iso_label="VINCENTOS-1.2_origin"
iso_publisher="v38armageddon <https://vincent-os.v38armageddon.net>"
iso_application="Vincent OS LiveCD"
iso_version="1.2"
install_dir="vincentos"
buildmodes=('iso')
bootmodes=('bios.syslinux' 'uefi.systemd-boot')
arch="x86_64"
pacman_conf="pacman.conf"
airootfs_image_type="squashfs"
airootfs_image_tool_options=('-comp' 'xz' '-Xbcj' 'x86' '-b' '1M' '-Xdict-size' '1M')
bootstrap_tarball_compression=('zstd' '-c' '-T0' '--auto-threads=logical' '--long' '-19')
file_permissions=(
  ["/etc/shadow"]="0:0:400"
  ["/etc/gshadow"]="0:0:400"
  ["/root"]="0:0:750"
  ["/root/.automated_script.sh"]="0:0:755"
  ["/root/.gnupg"]="0:0:700"
  ["/usr/local/bin/boot-mode.sh"]="0:0:755"
  ["/usr/local/bin/choose-mirror"]="0:0:755"
  ["/etc/sudoers"]="0:0:440"
)
