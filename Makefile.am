EXTRA_DIST = \
	EvoPop \
	LICENSE \
	README.md

xsessiondir = $(datadir)/xsessions

themedir = $(datadir)/themes

install-data-hook:
	$(MKDIR_P) $(DESTDIR)/usr/share/icons
	cp -Rv EvoPop $(DESTDIR)/usr/share/icons/.

uninstall-hook:
	test -e $(DESTDIR)/usr/share/icons/EvoPop && rm -rfv $(DESTDIR)/usr/share/icons/EvoPop
