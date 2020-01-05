ROOT=..
BUILD=$(ROOT)/build
BUILD_LY=$(BUILD)/ly
SRC = $(wildcard ly/*.ly)
OBJ_PDF = $(patsubst %,$(BUILD)/%,$(SRC:.ly=.pdf))
OBJ_MIDI = $(patsubst %,$(BUILD)/%,$(SRC:.ly=.midi))
OBJ_MP3 = $(patsubst %,$(BUILD)/%,$(SRC:.ly=.mp3))
OBJ = $(OBJ_PDF) $(OBJ_MIDI) $(OBJ_MP3)

all: $(BUILD_LY) $(OBJ)

$(BUILD_LY):
	mkdir -p $@

$(BUILD_LY)/%.pdf: ly/%.ly
	lilypond -l INFO -o $(BUILD_LY) $<

$(BUILD_LY)/%.mp3: $(BUILD_LY)/%.midi
	timidity $< -Ow -o - | ffmpeg -y -i - -acodec libmp3lame -ab 64k $@

bkpclean:
	rm -f *~

objclean:
	rm -rf $(BUILD)

coreclean:
	rm -f core core.*

clean: objclean

distclean: objclean bkpclean coreclean

tarball: distclean
	@TGZ_DATE=`date +%Y-%m-%d_%H-%M-%S` ; \
	PROJECT_NAME=we-wish-you-a-merry-christmas ; \
	PROJECT_PATH=`basename \`pwd\`` ; \
	TGZ_PREFIX=$$PROJECT_NAME\_$$TGZ_DATE ; cd .. ; \
	tar cvf ./$$TGZ_PREFIX.tar.bz2 \
		--exclude='untracked-files' \
		--exclude='untracked-files/*' \
		--transform=s/$$PROJECT_PATH/$$TGZ_PREFIX/ \
		--bzip2 $$PROJECT_PATH

#  Local Variables:
#    coding:utf-8
#    mode:Makefile
#  End:
