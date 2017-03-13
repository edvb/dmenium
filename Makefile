# dmenium - small collection of scripts using dmenu
# See LICENSE file for copyright and license details.

# paths
PREFIX = /usr/local
MANPREFIX = ${PREFIX}/share/man

EXE = dmenium

progs = browse \
	calc \
	dwm_mode \
	man \
	menu \
	prog \
	todo \
	win \

all:
	@echo $(EXE): to install run \'make install\' as root user

install: $(progs)

$(progs):
	@echo -n installing $@ to $(DESTDIR)$(PREFIX)/bin ...
	@mkdir -p $(DESTDIR)$(PREFIX)/bin
	@cp -f $@ $(DESTDIR)$(PREFIX)/bin/dmenu_$@
	@chmod 755 $(DESTDIR)$(PREFIX)/bin/dmenu_$@
	@echo \ done

uninstall:
	@echo -n removing $@ from $(DESTDIR)$(PREFIX)/bin ...
	@rm -f $(DESTDIR)$(PREFIX)/bin/dmenu_$@
	@echo \ done

.PHONY: all install uninstall $(progs)
