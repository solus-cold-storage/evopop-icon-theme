#!/usr/bin/env bash
# This script creates new symlinks to existing icons

set -eo pipefail

SCRIPT_DIR=$(dirname "$0")
TARGET_DIR="$SCRIPT_DIR/EvoPop"

usage() {
	cat <<-EOF
	This script creates new symlinks to existing icons.

	Usage:
	  $0 context <symlink name> <icon name>

	  available contexts:
	    [a]ctions
	    [ap]ps
	    [d]evices
	    [e]mblems
	    [m]imetypes
	    [pl]aces
	    [s]tatus

	Example:
	  $0 apps radiotray-ng-on radiotray.png
	EOF

	exit 2
}

[ -n "$3" ] || usage

CONTEXT="$1"
SYMLINK_NAME="${2%*.svg}"
TARGET_ICON="$3"

case "$CONTEXT" in
	actions|a*)
		for size in '16x16' '16x16@2x' '22x22' '22x22@2x' '24x24' '24x24@2x'; do
			ln -sfv "$TARGET_ICON" \
				"$TARGET_DIR/${size}/actions/${SYMLINK_NAME}.png"
		done
		;;
	apps|ap*)
		for size in '16x16' '16x16@2x' '22x22' '22x22@2x' '24x24' '24x24@2x' '32x32' '32x32@2x' '48x48' '48x48@2x' '64x64' '64x64@2x' '512x512' '512x512@2x'; do
			ln -sfv "$TARGET_ICON" \
				"$TARGET_DIR/${size}/apps/${SYMLINK_NAME}.png"
		done
		;;
	devices|d*)
		for size in '16x16' '16x16@2x' '22x22' '22x22@2x' '24x24' '24x24@2x' '32x32' '32x32@2x' '48x48' '48x48@2x' '64x64' '64x64@2x' '512x512' '512x512@2x'; do
			ln -sfv "$TARGET_ICON" \
				"$TARGET_DIR/${size}/devices/${SYMLINK_NAME}.png"
		done
		;;
	emblems|e*)
		for size in  '8x8' '8x8@2x' '16x16' '16x16@2x' '24x24' '24x24@2x' '32x32' '32x32@2x' '48x48' '48x48@2x' '64x64' '64x64@2x' '512x512' '512x512@2x'; do
			ln -sfv "$TARGET_ICON" \
				"$TARGET_DIR/${size}/emblems/${SYMLINK_NAME}.png"
		done
		;;
	mimetypes|m*)
		for size in '16x16' '16x16@2x' '24x24' '24x24@2x' '32x32' '32x32@2x' '48x48' '48x48@2x' '64x64' '64x64@2x' '512x512' '512x512@2x'; do
			ln -sfv "$TARGET_ICON" \
				"$TARGET_DIR/${size}/mimetypes/${SYMLINK_NAME}.png"
		done
		;;
	places|pl*)
		for size in '16x16' '16x16@2x' '24x24' '24x24@2x' '32x32' '32x32@2x' '48x48' '48x48@2x' '64x64' '64x64@2x' '512x512' '512x512@2x'; do
			ln -sfv "$TARGET_ICON" \
				"$TARGET_DIR/${size}/places/${SYMLINK_NAME}.png"
		done
		;;
	status|s*)
		for size in '16x16' '16x16@2x' '24x24' '24x24@2x' '32x32' '32x32@2x' '48x48' '48x48@2x' '64x64' '64x64@2x' '512x512' '512x512@2x'; do
			ln -sfv "$TARGET_ICON" \
				"$TARGET_DIR/${size}/status/${SYMLINK_NAME}.png"
		done
		;;
	*)
		usage
		;;
esac
