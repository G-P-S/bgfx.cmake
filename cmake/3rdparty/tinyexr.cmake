# bgfx.cmake - bgfx building in cmake
# Written in 2017 by Joshua Brookover <joshua.al.brookover@gmail.com>

# To the extent possible under law, the author(s) have dedicated all copyright
# and related and neighboring rights to this software to the public domain
# worldwide. This software is distributed without any warranty.

# You should have received a copy of the CC0 Public Domain Dedication along with
# this software. If not, see <http://creativecommons.org/publicdomain/zero/1.0/>.

if( TARGET tinyexr )
	return()
endif()

project (tinyexr CXX)

file( GLOB TINYEXR_SOURCES ${BIMG_DIR}/3rdparty/tinyexr/*.h ${BIMG_DIR}/3rdparty/tinyexr/deps/miniz/*.h ${BIMG_DIR}/3rdparty/tinyexr/deps/miniz/*.c )

add_library( tinyexr ${TINYEXR_SOURCES} )
target_include_directories( tinyexr
	INTERFACE
		$<BUILD_INTERFACE:${BIMG_DIR}/3rdparty/tinyexr>
		$<BUILD_INTERFACE:${BIMG_DIR}/3rdparty/tinyexr/deps/miniz>
)
set_target_properties( tinyexr PROPERTIES FOLDER "bgfx/3rdparty/tinyexr" )