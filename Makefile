#
# Makefile for the mouse drivers.
#
all:
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) modules
clean:
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) clean


# Each configuration option enables a list of files.

obj-$(CONFIG_MOUSE_PS2)			+= psmouse.o

psmouse-objs := psmouse-base.o synaptics.o

psmouse-$(CONFIG_MOUSE_PS2_ALPS)	+= alps.o
psmouse-$(CONFIG_MOUSE_PS2_ELANTECH)	+= elantech.o
psmouse-$(CONFIG_MOUSE_PS2_OLPC)	+= hgpk.o
psmouse-$(CONFIG_MOUSE_PS2_LOGIPS2PP)	+= logips2pp.o
psmouse-$(CONFIG_MOUSE_PS2_LIFEBOOK)	+= lifebook.o
psmouse-$(CONFIG_MOUSE_PS2_SENTELIC)	+= sentelic.o
psmouse-$(CONFIG_MOUSE_PS2_TRACKPOINT)	+= trackpoint.o
psmouse-$(CONFIG_MOUSE_PS2_TOUCHKIT)	+= touchkit_ps2.o
