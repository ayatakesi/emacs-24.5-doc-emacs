.PHONY: clean
all: info
info: info/emacs_ja
TEXIS_FOR_TRANSLATE := \
		   abbrevs.texi \
		   anti.texi \
		   arevert-xtra.texi \
		   basic.texi \
		   buffers.texi \
		   building.texi \
		   cal-xtra.texi \
		   calendar.texi \
		   cmdargs.texi \
		   commands.texi \
		   custom.texi \
		   dired-xtra.texi \
		   dired.texi \
		   display.texi \
		   emacs-xtra.texi \
		   emacs.texi \
		   emerge-xtra.texi \
		   entering.texi \
		   files.texi \
		   fixit.texi \
		   fortran-xtra.texi \
		   frames.texi \
		   help.texi \
		   indent.texi \
		   killing.texi \
		   kmacro.texi \
		   m-x.texi \
		   macos.texi \
		   maintaining.texi \
		   mark.texi \
		   mini.texi \
		   misc.texi \
		   modes.texi \
		   msdog-xtra.texi \
		   msdog.texi \
		   mule.texi \
		   package.texi \
		   picture-xtra.texi \
		   programs.texi \
		   regs.texi \
		   rmail.texi \
		   screen.texi \
		   search.texi \
		   sending.texi \
		   text.texi \
		   trouble.texi \
		   vc-xtra.texi \
		   vc1-xtra.texi \
		   windows.texi \
		   xresources.texi

PO_FOR_TRANSLATE = $(subst ,.po $(TEXIS_FOR_TRANSLATE))

clean:
	$(RM) -f info/emacs_ja* $(TEXIS_FOR_TRANSLATE)

%.texi: %.texi.po
	po4a-translate -f texinfo -k 0 -M utf8 -m $@.orig -p $< -l $@

info/emacs_ja: $(TEXIS_FOR_TRANSLATE)
	./translate_24.5.sh
	makeinfo -o info/emacs_ja emacs.texi

