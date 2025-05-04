ROOT=..
BUILD=$(ROOT)/build
BUILD_LY=$(BUILD)/ly
LY_SRC = $(wildcard *.ly)
LY_OBJ = $(patsubst %,$(BUILD_LY)/%,$(LY_SRC:.ly=.pdf))

all: $(BUILD_LY) $(LY_OBJ)

$(BUILD_LY):
	mkdir -p $@

$(BUILD_LY)/%.pdf: %.ly
	lilypond -l INFO -o $(BUILD_LY) $<

objclean:
	rm -rf $(BUILD)

bkpclean:
	rm -f *~

fontclean:
	rm -f *.{pk,tfm}

coreclean:
	rm -f core core.*

clean: objclean

distclean: objclean bkpclean coreclean fontclean

tarball: distclean
	@TGZ_DATE=`date +%Y-%m-%d_%H-%M-%S` ; \
	PROJECT_NAME=kathreinerle ; \
	PROJECT_PATH=`basename \`pwd\`` ; \
	TGZ_PREFIX=$$PROJECT_NAME\_$$TGZ_DATE ; cd .. ; \
	tar cvf ./$$TGZ_PREFIX.tar.bz2 \
		--exclude='untracked-files' \
		--exclude='untracked-files/*' \
		--transform=s/$$PROJECT_PATH/$$TGZ_PREFIX\\/src/ \
		--bzip2 $$PROJECT_PATH
