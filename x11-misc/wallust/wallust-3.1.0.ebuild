# Copyright 2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

# Autogenerated by pycargoebuild 0.13.3

EAPI=8

CRATES="
	adler2@2.0.0
	adler@1.0.2
	aho-corasick@1.1.3
	aligned-vec@0.5.0
	anes@0.1.6
	anstream@0.6.15
	anstyle-parse@0.2.5
	anstyle-query@1.1.1
	anstyle-wincon@3.0.4
	anstyle@1.0.8
	anyhow@1.0.89
	approx@0.5.1
	arbitrary@1.3.2
	arg_enum_proc_macro@0.3.4
	arrayvec@0.7.6
	autocfg@1.4.0
	av1-grain@0.2.3
	avif-serialize@0.8.1
	bit_field@0.10.2
	bitflags@1.3.2
	bitflags@2.6.0
	bitstream-io@2.5.3
	built@0.7.4
	bumpalo@3.16.0
	by_address@1.2.1
	bytemuck@1.18.0
	byteorder-lite@0.1.0
	byteorder@1.5.0
	camino@1.1.9
	cargo-platform@0.1.8
	cargo_metadata@0.18.1
	cast@0.3.0
	cc@1.1.30
	cfg-expr@0.15.8
	cfg-if@1.0.0
	ciborium-io@0.2.2
	ciborium-ll@0.2.2
	ciborium@0.2.2
	clap@4.5.20
	clap_builder@4.5.20
	clap_complete@4.5.33
	clap_derive@4.5.18
	clap_lex@0.7.2
	clap_mangen@0.2.24
	color_quant@1.1.0
	colorchoice@1.0.2
	convert_case@0.6.0
	crc32fast@1.4.2
	criterion-plot@0.5.0
	criterion@0.5.1
	crossbeam-deque@0.8.5
	crossbeam-epoch@0.9.18
	crossbeam-utils@0.8.20
	crunchy@0.2.2
	darling@0.20.10
	darling_core@0.20.10
	darling_macro@0.20.10
	deranged@0.3.11
	derive_builder@0.20.2
	derive_builder_core@0.20.2
	derive_builder_macro@0.20.2
	dirs-sys@0.4.1
	dirs@5.0.1
	document-features@0.2.10
	documented-macros@0.6.0
	documented@0.6.0
	dunce@1.0.5
	either@1.13.0
	equivalent@1.0.1
	errno@0.3.9
	exr@1.72.0
	fast-srgb8@1.0.0
	fast_image_resize@5.0.0
	fastrand@2.1.1
	fdeflate@0.3.5
	flate2@1.0.34
	flume@0.11.0
	fnv@1.0.7
	form_urlencoded@1.2.1
	getrandom@0.2.15
	gif@0.13.1
	git2@0.19.0
	glob@0.3.1
	half@2.4.1
	hashbrown@0.15.0
	heck@0.4.1
	heck@0.5.0
	hermit-abi@0.4.0
	ident_case@1.0.1
	idna@0.5.0
	image-webp@0.1.3
	image@0.25.2
	imgref@1.10.1
	indexmap@2.6.0
	interpolate_name@0.2.4
	is-terminal@0.4.13
	is_terminal_polyfill@1.70.1
	itertools@0.10.5
	itertools@0.12.1
	itertools@0.13.0
	itoa@1.0.11
	jobserver@0.1.32
	jpeg-decoder@0.3.1
	js-sys@0.3.72
	kmeans_colors@0.6.0
	lazy_static@1.5.0
	lebe@0.5.2
	libc@0.2.159
	libfuzzer-sys@0.4.7
	libgit2-sys@0.17.0+1.8.1
	libredox@0.1.3
	libz-sys@1.1.20
	linux-raw-sys@0.4.14
	litrs@0.4.1
	lock_api@0.4.12
	log@0.4.22
	loop9@0.1.5
	maplit@1.0.2
	maybe-rayon@0.1.1
	memchr@2.7.4
	memo-map@0.3.3
	minijinja@2.3.1
	minimal-lexical@0.2.1
	miniz_oxide@0.7.4
	miniz_oxide@0.8.0
	new_debug_unreachable@1.0.6
	new_string_template@1.5.3
	nom@7.1.3
	noop_proc_macro@0.3.0
	num-bigint@0.4.6
	num-conv@0.1.0
	num-derive@0.4.2
	num-integer@0.1.46
	num-rational@0.4.2
	num-traits@0.2.19
	num_threads@0.1.7
	once_cell@1.20.2
	oorandom@11.1.4
	optfield@0.3.0
	option-ext@0.2.0
	owo-colors@4.1.0
	palette@0.7.6
	palette_derive@0.7.6
	paste@1.0.15
	percent-encoding@2.3.1
	phf@0.11.2
	phf_generator@0.11.2
	phf_macros@0.11.2
	phf_shared@0.11.2
	pkg-config@0.3.31
	plotters-backend@0.3.7
	plotters-svg@0.3.7
	plotters@0.3.7
	png@0.17.14
	powerfmt@0.2.0
	ppv-lite86@0.2.20
	proc-macro2@1.0.87
	profiling-procmacros@1.0.15
	profiling@1.0.15
	qoi@0.4.1
	quick-error@2.0.1
	quote@1.0.37
	rand@0.8.5
	rand_chacha@0.3.1
	rand_core@0.6.4
	rav1e@0.7.1
	ravif@0.11.10
	rayon-core@1.12.1
	rayon@1.10.0
	redox_users@0.4.6
	regex-automata@0.4.8
	regex-syntax@0.8.5
	regex@1.11.0
	rgb@0.8.50
	roff@0.2.2
	rustix@0.38.37
	rustversion@1.0.17
	ryu@1.0.18
	same-file@1.0.6
	scopeguard@1.2.0
	self_cell@1.0.4
	semver@1.0.23
	serde@1.0.210
	serde_derive@1.0.210
	serde_json@1.0.128
	serde_spanned@0.6.8
	shellexpand@3.1.0
	shlex@1.3.0
	simd-adler32@0.3.7
	simd_helpers@0.1.0
	siphasher@0.3.11
	smallvec@1.13.2
	spin@0.9.8
	spinners@4.1.1
	strsim@0.11.1
	strum@0.24.1
	strum@0.26.3
	strum_macros@0.24.3
	strum_macros@0.26.4
	syn@1.0.109
	syn@2.0.79
	system-deps@6.2.2
	target-lexicon@0.12.16
	tempfile@3.13.0
	thiserror-impl@1.0.64
	thiserror@1.0.64
	tiff@0.9.1
	time-core@0.1.2
	time-macros@0.2.18
	time@0.3.36
	tinytemplate@1.2.1
	tinyvec@1.8.0
	tinyvec_macros@0.1.1
	toml@0.8.19
	toml_datetime@0.6.8
	toml_edit@0.22.22
	unicode-bidi@0.3.17
	unicode-ident@1.0.13
	unicode-normalization@0.1.24
	unicode-segmentation@1.12.0
	url@2.5.2
	utf8parse@0.2.2
	v_frame@0.3.8
	vcpkg@0.2.15
	vergen-git2@1.0.1
	vergen-lib@0.1.4
	vergen@9.0.1
	version-compare@0.2.0
	walkdir@2.5.0
	wallust@3.1.0
	wallust_themes@1.0.0
	wasi@0.11.0+wasi-snapshot-preview1
	wasm-bindgen-backend@0.2.95
	wasm-bindgen-macro-support@0.2.95
	wasm-bindgen-macro@0.2.95
	wasm-bindgen-shared@0.2.95
	wasm-bindgen@0.2.95
	web-sys@0.3.72
	weezl@0.1.8
	winapi-util@0.1.9
	windows-sys@0.48.0
	windows-sys@0.52.0
	windows-sys@0.59.0
	windows-targets@0.48.5
	windows-targets@0.52.6
	windows_aarch64_gnullvm@0.48.5
	windows_aarch64_gnullvm@0.52.6
	windows_aarch64_msvc@0.48.5
	windows_aarch64_msvc@0.52.6
	windows_i686_gnu@0.48.5
	windows_i686_gnu@0.52.6
	windows_i686_gnullvm@0.52.6
	windows_i686_msvc@0.48.5
	windows_i686_msvc@0.52.6
	windows_x86_64_gnu@0.48.5
	windows_x86_64_gnu@0.52.6
	windows_x86_64_gnullvm@0.48.5
	windows_x86_64_gnullvm@0.52.6
	windows_x86_64_msvc@0.48.5
	windows_x86_64_msvc@0.52.6
	winnow@0.6.20
	zerocopy-derive@0.7.35
	zerocopy@0.7.35
	zune-core@0.4.12
	zune-inflate@0.2.54
	zune-jpeg@0.4.13
"

inherit cargo

DESCRIPTION="Generate a 16 color scheme based on an image."
HOMEPAGE="https://explosion-mental.codeberg.page/wallust"
SRC_URI="
	${CARGO_CRATE_URIS}
"
QA_FLAGS_IGNORED=".*"
LICENSE="MIT"
# Dependent crate licenses
LICENSE+="
	Apache-2.0 Apache-2.0-with-LLVM-exceptions BSD-2 BSD MIT MPL-2.0
	Unicode-DFS-2016
"
SLOT="0"
KEYWORDS="~amd64"
