# Copyright 2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

# Autogenerated by pycargoebuild 0.13.3

EAPI=8

CRATES="
	aho-corasick@0.7.18
	anyhow@1.0.56
	async-broadcast@0.3.4
	async-channel@1.6.1
	async-executor@1.4.1
	async-io@1.6.0
	async-lock@2.5.0
	async-oneshot@0.5.0
	async-pidfd@0.1.4
	async-recursion@0.3.2
	async-task@4.2.0
	async-trait@0.1.53
	autocfg@1.1.0
	base64@0.13.0
	bitflags@1.3.2
	block@0.1.6
	bumpalo@3.9.1
	byteorder@1.4.3
	bytes@0.5.6
	bytes@1.1.0
	cache-padded@1.2.0
	cc@1.0.73
	cfg-if@1.0.0
	concurrent-queue@1.2.2
	const_format@0.2.22
	const_format_proc_macros@0.2.22
	darling@0.13.1
	darling_core@0.13.1
	darling_macro@0.13.1
	derivative@2.2.0
	dirs-sys@0.3.7
	dirs@3.0.2
	dirs@4.0.0
	easy-parallel@3.2.0
	encoding_rs@0.8.30
	enumflags2@0.7.4
	enumflags2_derive@0.7.4
	event-listener@2.5.2
	fastrand@1.7.0
	flume@0.10.12
	fnv@1.0.7
	fork@0.1.19
	form_urlencoded@1.0.1
	freedesktop-desktop-entry@0.5.0
	futures-channel@0.3.21
	futures-core@0.3.21
	futures-executor@0.3.21
	futures-io@0.3.21
	futures-lite@1.12.0
	futures-macro@0.3.21
	futures-micro@0.5.0
	futures-sink@0.3.21
	futures-task@0.3.21
	futures-util@0.3.21
	futures@0.3.21
	futures_codec@0.4.1
	gen-z@0.1.0
	getrandom@0.2.6
	gettext-rs@0.7.0
	gettext-sys@0.21.3
	h2@0.3.12
	hashbrown@0.11.2
	hermit-abi@0.1.19
	hex@0.4.3
	http-body@0.4.4
	http@0.2.6
	httparse@1.6.0
	httpdate@1.0.2
	human-sort@0.2.2
	human_format@1.0.3
	hyper-rustls@0.23.0
	hyper@0.14.18
	ident_case@1.0.1
	idna@0.2.3
	indexmap@1.8.0
	instant@0.1.12
	ipnet@2.4.0
	itoa@1.0.1
	js-sys@0.3.56
	lazy_static@1.4.0
	libc@0.2.121
	libmimalloc-sys@0.1.24
	locale_config@0.3.0
	lock_api@0.4.6
	log@0.4.16
	malloc_buf@0.0.6
	matchers@0.1.0
	matches@0.1.9
	memchr@2.4.1
	memoffset@0.6.5
	mimalloc@0.1.28
	mime@0.3.16
	mio@0.8.2
	miow@0.3.7
	nanorand@0.7.0
	new_mime_guess@4.0.1
	nix@0.23.1
	ntapi@0.3.7
	num_cpus@1.13.1
	numtoa@0.2.4
	objc-foundation@0.1.1
	objc@0.2.7
	objc_id@0.1.1
	once_cell@1.10.0
	ordered-stream@0.0.1
	parking@2.0.0
	percent-encoding@2.1.0
	pin-project-internal@0.4.29
	pin-project-internal@1.0.10
	pin-project-lite@0.2.8
	pin-project@0.4.29
	pin-project@1.0.10
	pin-utils@0.1.0
	polling@2.2.0
	ppv-lite86@0.2.16
	proc-macro-crate@1.1.3
	proc-macro2@1.0.36
	quote@1.0.17
	rand@0.8.5
	rand_chacha@0.3.1
	rand_core@0.6.3
	recently-used-xbel@1.0.0
	redox_syscall@0.2.12
	redox_users@0.4.2
	regex-automata@0.1.10
	regex-syntax@0.6.25
	regex@1.5.5
	reqwest@0.11.10
	ring@0.16.20
	ron@0.7.0
	rustls-pemfile@0.3.0
	rustls@0.20.4
	rustversion@1.0.6
	ryu@1.0.9
	scopeguard@1.1.0
	sct@0.7.0
	serde-xml-rs@0.5.1
	serde@1.0.136
	serde_derive@1.0.136
	serde_json@1.0.79
	serde_repr@0.1.7
	serde_urlencoded@0.7.1
	serde_with@1.12.0
	serde_with_macros@1.5.1
	sha1@0.6.1
	sha1_smol@1.0.0
	sharded-slab@0.1.4
	signal-hook-registry@1.4.0
	slab@0.4.5
	socket2@0.4.4
	spin@0.5.2
	spin@0.9.2
	static_assertions@1.1.0
	strsim@0.10.0
	syn@1.0.90
	sysfs-class@0.1.3
	temp-dir@0.1.11
	thiserror-impl@1.0.30
	thiserror@1.0.30
	thread_local@1.1.4
	tinyvec@1.5.1
	tinyvec_macros@0.1.0
	tokio-macros@1.7.0
	tokio-rustls@0.23.3
	tokio-stream@0.1.8
	tokio-util@0.6.9
	tokio@1.17.0
	toml@0.5.8
	tower-service@0.3.1
	tracing-attributes@0.1.20
	tracing-core@0.1.23
	tracing-subscriber@0.3.9
	tracing@0.1.32
	try-lock@0.2.3
	unicase@2.6.0
	unicode-bidi@0.3.7
	unicode-normalization@0.1.19
	unicode-xid@0.2.2
	untrusted@0.7.1
	url@2.2.2
	urlencoding@2.1.0
	valuable@0.1.0
	version_check@0.9.4
	waker-fn@1.1.0
	want@0.3.0
	ward@2.1.0
	wasi@0.10.2+wasi-snapshot-preview1
	wasi@0.11.0+wasi-snapshot-preview1
	wasm-bindgen-backend@0.2.79
	wasm-bindgen-futures@0.4.29
	wasm-bindgen-macro-support@0.2.79
	wasm-bindgen-macro@0.2.79
	wasm-bindgen-shared@0.2.79
	wasm-bindgen@0.2.79
	web-sys@0.3.56
	webpki-roots@0.22.2
	webpki@0.22.0
	wepoll-ffi@0.1.2
	winapi-i686-pc-windows-gnu@0.4.0
	winapi-x86_64-pc-windows-gnu@0.4.0
	winapi@0.3.9
	winreg@0.10.1
	xdg@2.4.1
	xml-rs@0.8.4
	zbus@2.1.1
	zbus_macros@2.1.1
	zbus_names@2.1.0
	zvariant@3.1.2
	zvariant_derive@3.1.2
"

inherit cargo

DESCRIPTION="Modular IPC-based desktop launcher service"
HOMEPAGE="https://github.com/pop-os/launcher"
SRC_URI="
	https://github.com/pop-os/launcher/archive/${PV}/${P}.tar.gz
	${CARGO_CRATE_URIS}
"
S="${WORKDIR}/launcher-${PV}"

LICENSE="MPL-2.0"
# Dependent crate licenses
LICENSE+="
	Apache-2.0 Apache-2.0-with-LLVM-exceptions BSD ISC MIT GPL-3 ZLIB
"
SLOT="0"
KEYWORDS="~amd64 ~arm64"

DEPENDS="
	media-libs/libglvnd
	x11-libs/libxkbcommon
"
RDEPEND="
	${DEPEND}
	sci-libs/libqalculate
	sys-apps/fd
"
BDEPEND="
	dev-build/just
	virtual/pkgconfig
"

DOCS=( README.md )

QA_FLAGS_IGNORED="usr/bin/pop-launcher"

src_configure() {
	export ECARGO_EXTRA_ARGS="--all"
	cargo_src_configure
}

src_install() {
	just rootdir="${D}" target="../$(cargo_target_dir)" install || die

	einstalldocs
}

src_test() {
	local mytestargs=(
		# The following tests require network access.
		--skip web::test
	)
	cargo_src_test -- "${mytestargs[@]}"
}
