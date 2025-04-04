# Copyright 2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{11..12} )
inherit desktop flag-o-matic python-any-r1

DESCRIPTION="Forward-port of the Crowther/Woods Adventure 2.5"
HOMEPAGE="http://www.catb.org/~esr/open-adventure/"
SRC_URI="https://gitlab.com/esr/${PN}/-/archive/${PV}/${P}.tar.bz2"

LICENSE="BSD-2"
SLOT="0"
KEYWORDS="~amd64"
IUSE="autosave +doc nosave test"
# autosave and nosave are mutually exclusive
# tests require that they are both disabled
REQUIRED_USE="
	?? ( autosave nosave )
	test? ( !autosave !nosave )
"
RESTRICT="!test? ( test )"

DEPEND="dev-libs/libedit"
RDEPEND="${DEPEND}"
BDEPEND="
	$(python_gen_any_dep 'dev-python/pyyaml[${PYTHON_USEDEP}]' )
	doc? ( dev-ruby/asciidoctor )
"

DOCS=( NEWS.adoc hints.adoc history.adoc README.adoc notes.adoc )

python_check_deps() {
	python_has_version "dev-python/pyyaml[${PYTHON_USEDEP}]"
}

src_prepare() {
	# remove uncommon flags
	sed -e 's/-D_FORTIFY_SOURCE=2 -fstack-protector-all $(CFLAGS) -g/$(CFLAGS)/' \
		-i Makefile || die "Makefile patching failed"

	eapply_user
}

src_compile() {
	if use autosave; then
		append-cflags "-DADVENT_AUTOSAVE"
	fi
	if use nosave; then
		append-cflags "-DADVENT_NOSAVE"
	fi

	emake advent

	use doc && emake advent.6
}

src_install() {
	if use doc; then
		einstalldocs
		doman advent.6
	fi

	dobin advent

	doicon -s scalable advent.svg
	domenu advent.desktop
}

src_test() {
	emake cheat
	pushd tests || die
	# parallel tests often fail
	emake -j1
	popd || die
}
