rtk_hciattach:hciattach.c hciattach_rtk.o  
	cc -m32 --static -o rtk_hciattach hciattach.c hciattach_rtk.o  

hciattach_rtk.o:hciattach_rtk.c
	cc -m32 --static -c  hciattach_rtk.c

clean:
	rm -f *.o  rtk_hciattach

install:
	mkdir -p /lib/firmware/rtl_bt
	cp -p rtlbt_* /lib/firmware/rtl_bt/.
