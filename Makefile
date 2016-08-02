FISI = fisi.sh
FISI2 = fisi
SBIN_PATH = /sbin

install: $(FISI)
	/bin/cp $(FISI) $(SBIN_PATH)/$(FISI2)
	/bin/chmod 755 $(SBIN_PATH)/$(FISI2)

clean: $(FISI)
	/bin/rm $(SBIN_PATH)/$(FISI2) 
