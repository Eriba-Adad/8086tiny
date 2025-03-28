# 8086tiny: a tiny, highly functional, highly portable PC emulator/VM
# Copyright 2013-14, Adrian Cable (adrian.cable@gmail.com) - http://www.megalith.co.uk/8086tiny
#
# This work is licensed under the MIT License. See included LICENSE.TXT.

# 8086tiny builds with graphics and sound support
# 8086tiny_slowcpu improves graphics performance on slow platforms (e.g. Raspberry Pi)
# no_graphics compiles without SDL graphics/sound

OPTS_ALL=-fsigned-char -v -ggdb -x c++
OPTS_SDL=`sdl-config --cflags --libs`

Debug: 8086tiny.cpp
	c++ 8086tiny.cpp ${OPTS_SDL} ${OPTS_ALL} -o 8086tiny

cleanDebug:
	rm 8086tiny
