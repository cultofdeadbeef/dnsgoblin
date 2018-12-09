all: dnsgoblin

dnsgoblin:
	gcc source/dnsgoblin.c -O2 -lpthread -Wall -Wextra -pedantic --std=gnu99 -D_REENTRANT -o dnsgoblin
install:
	install -D dnsgoblin $(DESTDIR)/usr/bin/dnsgoblin
	install -D README.m4 $(DESTDIR)/usr/share/doc/dnsgoblin/README
	install -D README.deadbeef $(DESTDIR)/usr/share/doc/dnsgoblin/README.deadbeef
	install -D LICENSE $(DESTDIR)/usr/share/doc/dnsgoblin/LICENSE
uninstall:
	rm -f $(DESTDIR)/usr/bin/dnsgoblin
	rm -rf $(DESTDIR)/usr/share/doc/dnsgoblin
clean:
	rm -f dnsgoblin *.o source/*.o
