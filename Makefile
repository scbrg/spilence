SOURCE = spilence
DESTDIR = /usr/local/bin
TARGET = $(DESTDIR)/spilence

.PHONY: all
all: test install

.PHONY: test
test: .tested

.PHONY: install
install: $(TARGET)

$(TARGET): $(SOURCE)
	install -m 755 $(SOURCE) $(TARGET)

.PHONY: uninstall
uninstall:
	$(RM) $(TARGET)

.PHONY: clean
clean:
	$(RM) .tested
	$(RM) README.html

README.html: README.md
	markdown $< > $@

.tested: $(SOURCE)
	checkbashisms $^
	shellcheck $^
	@touch $@
