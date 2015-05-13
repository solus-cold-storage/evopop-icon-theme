EXTRA_DIST = \
	EvoPop \
	LICENSE \
	CREDITS \
	README.md

xsessiondir = $(datadir)/xsessions

themedir = $(datadir)/icons

install-data-hook:
	$(MKDIR_P) $(DESTDIR)$(themedir)
	cp -Rv EvoPop $(DESTDIR)$(themedir)/.

uninstall-hook:
	test -e $(DESTDIR)$(themedir)/EvoPop && rm -rfv $(DESTDIR)$(themedir)/EvoPop
