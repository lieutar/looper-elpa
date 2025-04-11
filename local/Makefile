include config.mk
EMACS := emacs --batch -Q -l $(CURDIR)/.emacs.d/init.el -L lisp

.POHENY: build default

default: build

build:
	if [ -d ../recipes ]; then rm -r ../recipes; fi
	mkdir ../recipes
	$(EMACS) -l localify-recipes.el $(ELDEV_HUB) recipes ../recipes
	cd ..; make
	rm -r ../recipes
	cp -r recipes ..
	$(EMACS) -l update-package-archive.el ../packages recipes
