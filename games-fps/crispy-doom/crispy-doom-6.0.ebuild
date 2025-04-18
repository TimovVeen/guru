# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{11..13} )

inherit autotools prefix python-any-r1 xdg

DESCRIPTION="A limit-removing enhanced-resolution Doom source port based on Chocolate Doom"
HOMEPAGE="https://github.com/fabiangreffrath/crispy-doom"
SRC_URI="https://github.com/fabiangreffrath/${PN}/archive/${P}.tar.gz"

S="${WORKDIR}"/${PN}-${P}

LICENSE="BSD GPL-2+"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="doc fluidsynth libsamplerate +midi png truecolor vorbis zlib"
REQUIRE_USE="fluidsynth? ( midi )"

DEPEND="
	media-libs/libsdl2[video]
	media-libs/sdl2-mixer[fluidsynth?,midi?,vorbis?]
	media-libs/sdl2-net
	libsamplerate? ( media-libs/libsamplerate )
	png? ( media-libs/libpng:= )
	zlib? ( sys-libs/zlib )"
RDEPEND="${DEPEND}"
# ${PYTHON_DEPS} for bash-completion
BDEPEND="
	${PYTHON_DEPS}
	doc? ( ${PYTHON_DEPS} )"

DOCS=(
	"AUTHORS"
	"ChangeLog"
	"NEWS.md"
	"NOT-BUGS.md"
	"PHILOSOPHY.md"
	"README.md"
	"README.Music.md"
	"README.Strife.md"
)

PATCHES=(
	${FILESDIR}/${P}-cflags.patch
)

src_prepare() {
	default

	hprefixify src/d_iwad.c

	eautoreconf
}

src_configure() {
	econf \
		--enable-bash-completion \
		$(use_enable doc) \
		--disable-fonts \
		--disable-icons \
		$(use_with libsamplerate) \
		$(use_with png libpng) \
		--enable-sdl2mixer \
		--enable-sdl2net \
		$(use_with fluidsynth) \
		$(use_enable truecolor) \
		$(use_with zlib) \
		--disable-zpool
}

src_install() {
	emake DESTDIR="${D}" install

	# Remove redundant documentation files
	rm -r "${ED}/usr/share/doc/"* || die

	einstalldocs
}
