RSYNC=rsync -rupE
DESTDIR=$(SR_CODE_BASE)/snaproute/src/out/bin
RMDIRFORCE=rm -rf



COMPS=cmdln-2.0.0\
	functools32-3.2.3-2\
	jsonref-0.1\
	jsonschema-2.5.1\
	requests-2.11.1\
	urllib3-1.16\
	vcversioner-2.16.0.0\
	setuptools-28.2.0

	

all: install
exe:
clean:
	$(RMDIRFORCE) $(DESTDIR)/cmdln-2.0.0
	$(RMDIRFORCE) $(DESTDIR)/functools32-3.2.3-2
	$(RMDIRFORCE) $(DESTDIR)/jsonref-0.1
	$(RMDIRFORCE) $(DESTDIR)/jsonschema-2.5.1
	$(RMDIRFORCE) $(DESTDIR)/requests-2.11.1
	$(RMDIRFORCE) $(DESTDIR)/urllib3-1.16
	$(RMDIRFORCE) $(DESTDIR)/vcversioner-2.16.0.0
	$(RMDIRFORCE) $(DESTDIR)/setuptools-28.2.0

install: $(COMPS)
	$(RSYNC) cmdln-2.0.0 $(DESTDIR) 
	$(RSYNC) functools32-3.2.3-2 $(DESTDIR) 
	$(RSYNC) jsonref-0.1 $(DESTDIR) 
	$(RSYNC) jsonschema-2.5.1 $(DESTDIR) 
	$(RSYNC) requests-2.11.1 $(DESTDIR) 
	$(RSYNC) urllib3-1.16 $(DESTDIR) 
	$(RSYNC) vcversioner-2.16.0.0 $(DESTDIR)
	$(RSYNC) setuptools-28.2.0 $(DESTDIR)

