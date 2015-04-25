EXTRA_DIST = \
	EvoPop \
	LICENSE \
	CREDITS \
	README.md

xsessiondir = $(datadir)/xsessions

themedir = $(datadir)/icons

install-data-hook:
	$(MKDIR_P) $(DESTDIR)/usr/share/icons
	cp -Rv EvoPop $(DESTDIR)/usr/share/icons/.

uninstall-hook:
	test -e $(DESTDIR)/usr/share/icons/EvoPop && rm -rfv $(DESTDIR)/usr/share/icons/EvoPop
