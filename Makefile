LIBDIR = lib

VERSION = 3.1.1
M2_HOME = $(DESTDIR)/usr/$(LIBDIR)/jvm/apache-maven-$(VERSION)
TARGET = $(M2_HOME)/bin/mvn

all: $(TARGET)

$(TARGET):
	if [ -d $(M2_HOME) ];then rm -rf $(M2_HOME);fi
	M2_HOME=$(M2_HOME) ant

clean:

distclean:

install: all
