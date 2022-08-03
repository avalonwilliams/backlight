PREFIX  = /usr/local
UDEVDIR = /etc/udev/rules.d/

.PHONY: install
install:
	install -d $(DESTDIR)$(PREFIX)/bin
	install -m 755 backlight $(DESTDIR)$(PREFIX)/bin
	install -d $(DESTDIR)$(UDEVDIR)
	install -m 644 50-backlight.rules $(DESTDIR)$(UDEVDIR)
	install -d $(DESTDIR)$(PREFIX)/share/man/man1
	install -m 644 backlight.1 $(DESTDIR)$(PREFIX)/share/man/man1
	gzip -f $(DESTDIR)$(PREFIX)/share/man/man1/backlight.1
