ROOT=..
BUILD=$(ROOT)/build
BUILD_LY=$(BUILD)/ly
LY_SRC = $(wildcard *.ly)
LY_PDF = $(patsubst %,$(BUILD_LY)/%,$(LY_SRC:.ly=.pdf))
LY_MP3 = $(patsubst %,$(BUILD_LY)/%,$(LY_SRC:.ly=.mp3))

all: $(BUILD_LY) $(LY_PDF) $(LY_MP3)

$(BUILD_LY):
	mkdir -p $@

$(BUILD_LY)/%.pdf: %.ly
	lilypond -l INFO -o $(BUILD_LY) $<

$(BUILD_LY)/%.mp3: $(BUILD_LY)/%.wav
	lame $< $@

$(BUILD_LY)/%.wav: $(BUILD_LY)/%.midi
	fluidsynth -F $@ $<

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
	PROJECT_NAME=kol-ha-olam-kulo ; \
	PROJECT_PATH=`basename \`pwd\`` ; \
	TGZ_PREFIX=$$PROJECT_NAME\_$$TGZ_DATE ; cd .. ; \
	tar cvf ./$$TGZ_PREFIX.tar.bz2 \
		--exclude='untracked-files' \
		--exclude='untracked-files/*' \
		--transform=s/$$PROJECT_PATH/$$TGZ_PREFIX\\/src/ \
		--bzip2 $$PROJECT_PATH
