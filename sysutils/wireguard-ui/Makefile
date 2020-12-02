# $OpenBSD$

COMMENT =	todo

MODGO_MODNAME =	github.com/ngoduykhanh/wireguard-ui
MODGO_VERSION =	v0.2.7

DISTNAME =	wireguard-ui-${MODGO_VERSION}
PKGNAME =	wireguard-ui-0.2.7

DISTFILES +=	wireguard-ui-assets-${MODGO_VERSION}.tgz:0

MASTER_SITES0 =	https://deftly.net/dist/

CATEGORIES =	go

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/go

post-extract:
	@cd ${WRKSRC} && \
		tar -zxvf ${DISTDIR}/wireguard-ui-assets-${MODGO_VERSION}.tgz

MODGO_MODULES =	\
	github.com/!geert!johan/go.incremental			 v1.0.0 \
	github.com/!geert!johan/go.rice				 v1.0.0 \
	github.com/!knetic/govaluate				 v3.0.1-0.20171022003610-9aa49832a739+incompatible \
	github.com/akavel/rsrc					 v0.8.0 \
	github.com/alecthomas/template				 v0.0.0-20160405071501-a0175ee3bccc \
	github.com/alecthomas/units				 v0.0.0-20151022065526-2efee857e7cf \
	github.com/appleboy/gofight/v2				 v2.1.2 \
	github.com/beorn7/perks					 v1.0.1 \
	github.com/casbin/casbin/v2				 v2.0.0 \
	github.com/codahale/hdrhistogram			 v0.0.0-20161010025455-3a0bb77429bd \
	github.com/daaku/go.zipexe				 v1.0.0 \
	github.com/davecgh/go-spew				 v1.1.1 \
	github.com/dgrijalva/jwt-go				 v3.2.0+incompatible \
	github.com/glendc/go-external-ip			 v0.0.0-20170425150139-139229dcdddd \
	github.com/go-kit/kit					 v0.8.0 \
	github.com/go-logfmt/logfmt				 v0.4.0 \
	github.com/go-playground/locales			 v0.13.0 \
	github.com/go-playground/universal-translator		 v0.17.0 \
	github.com/go-stack/stack				 v1.8.0 \
	github.com/gogo/protobuf				 v1.1.1 \
	github.com/golang/protobuf				 v1.3.2 \
	github.com/google/go-cmp				 v0.4.0 \
	github.com/google/gofuzz				 v1.0.0 \
	github.com/gorilla/context				 v1.1.1 \
	github.com/gorilla/securecookie				 v1.1.1 \
	github.com/gorilla/sessions				 v1.2.0 \
	github.com/jcelliott/lumber				 v0.0.0-20160324203708-dd349441af25 \
	github.com/jessevdk/go-flags				 v1.4.0 \
	github.com/jsimonetti/rtnetlink				 v0.0.0-20200117123717-f846d4f6c1f4 \
	github.com/json-iterator/go				 v1.1.7 \
	github.com/julienschmidt/httprouter			 v1.2.0 \
	github.com/konsorten/go-windows-terminal-sequences	 v1.0.1 \
	github.com/kr/logfmt					 v0.0.0-20140226030751-b84e30acd515 \
	github.com/labstack/echo-contrib			 v0.9.0 \
	github.com/labstack/echo/v4				 v4.1.16 \
	github.com/labstack/gommon				 v0.3.0 \
	github.com/leodido/go-urn				 v1.2.0 \
	github.com/mattn/go-colorable				 v0.1.6 \
	github.com/mattn/go-isatty				 v0.0.12 \
	github.com/matttproud/golang_protobuf_extensions	 v1.0.1 \
	github.com/mdlayher/genetlink				 v1.0.0 \
	github.com/mdlayher/netlink				 v1.1.0 \
	github.com/mikioh/ipaddr				 v0.0.0-20190404000644-d465c8ab6721 \
	github.com/modern-go/concurrent				 v0.0.0-20180306012644-bacd9c7ef1dd \
	github.com/modern-go/reflect2				 v1.0.1 \
	github.com/mwitkow/go-conntrack				 v0.0.0-20161129095857-cc309e4a2223 \
	github.com/nkovacs/streamquote				 v0.0.0-20170412213628-49af9bddb229 \
	github.com/opentracing/opentracing-go			 v1.1.0 \
	github.com/pkg/errors					 v0.8.1 \
	github.com/pmezard/go-difflib				 v1.0.0 \
	github.com/prometheus/client_golang			 v1.1.0 \
	github.com/prometheus/client_model			 v0.0.0-20190129233127-fd36f4220a90 \
	github.com/prometheus/common				 v0.6.0 \
	github.com/prometheus/procfs				 v0.0.3 \
	github.com/rs/xid					 v1.2.1 \
	github.com/sdomino/scribble				 v0.0.0-20191024200645-4116320640ba \
	github.com/sirupsen/logrus				 v1.2.0 \
	github.com/skip2/go-qrcode				 v0.0.0-20191027152451-9434209cb086 \
	github.com/stretchr/objx				 v0.2.0 \
	github.com/stretchr/testify				 v1.4.0 \
	github.com/uber-go/atomic				 v1.4.0 \
	github.com/uber/jaeger-client-go			 v2.19.1-0.20191002155754-0be28c34dabf+incompatible \
	github.com/uber/jaeger-lib				 v2.2.0+incompatible \
	github.com/valyala/bytebufferpool			 v1.0.0 \
	github.com/valyala/fasttemplate				 v1.1.0 \
	go.uber.org/atomic					 v1.4.0 \
	golang.org/x/crypto					 v0.0.0-20200221231518-2aa609cf4a9d \
	golang.org/x/net					 v0.0.0-20200226121028-0de0cce0169b \
	golang.org/x/sync					 v0.0.0-20190423024810-112230192c58 \
	golang.org/x/sys					 v0.0.0-20200223170610-d5e6a3e2c0ae \
	golang.org/x/text					 v0.3.2 \
	golang.org/x/tools					 v0.0.0-20190608022120-eacb66d2a7c3 \
	golang.org/x/xerrors					 v0.0.0-20191204190536-9bdfabe68543 \
	golang.zx2c4.com/wireguard				 v0.0.20200121 \
	golang.zx2c4.com/wireguard/wgctrl			 v0.0.0-20200324154536-ceff61240acf \
	gopkg.in/alecthomas/kingpin.v2				 v2.2.6 \
	gopkg.in/check.v1					 v0.0.0-20161208181325-20d25e280405 \
	gopkg.in/go-playground/validator.v9			 v9.31.0 \
	gopkg.in/yaml.v2					 v2.2.7
MODGO_MODFILES =	\
	github.com/beorn7/perks			 v0.0.0-20180321164747-3a771d992973 \
	github.com/beorn7/perks			 v1.0.0 \
	github.com/davecgh/go-spew		 v1.1.0 \
	github.com/go-logfmt/logfmt		 v0.3.0 \
	github.com/golang/protobuf		 v1.2.0 \
	github.com/golang/protobuf		 v1.3.1 \
	github.com/google/go-cmp		 v0.2.0 \
	github.com/google/go-cmp		 v0.3.0 \
	github.com/google/go-cmp		 v0.3.1 \
	github.com/gorilla/sessions		 v1.1.3 \
	github.com/jsimonetti/rtnetlink		 v0.0.0-20190606172950-9527aa82566a \
	github.com/json-iterator/go		 v1.1.6 \
	github.com/labstack/echo/v4		 v4.1.6 \
	github.com/labstack/gommon		 v0.2.9 \
	github.com/mattn/go-colorable		 v0.1.2 \
	github.com/mattn/go-isatty		 v0.0.8 \
	github.com/mattn/go-isatty		 v0.0.9 \
	github.com/mdlayher/netlink		 v0.0.0-20190409211403-11939a169225 \
	github.com/mdlayher/netlink		 v1.0.0 \
	github.com/modern-go/concurrent		 v0.0.0-20180228061459-e0a39a4cb421 \
	github.com/modern-go/reflect2		 v0.0.0-20180701023420-4b7aa43c6742 \
	github.com/pkg/errors			 v0.8.0 \
	github.com/prometheus/client_golang	 v0.9.1 \
	github.com/prometheus/client_golang	 v1.0.0 \
	github.com/prometheus/client_model	 v0.0.0-20180712105110-5c3871d89910 \
	github.com/prometheus/common		 v0.4.1 \
	github.com/prometheus/procfs		 v0.0.0-20181005140218-185b4288413d \
	github.com/prometheus/procfs		 v0.0.2 \
	github.com/stretchr/objx		 v0.1.0 \
	github.com/stretchr/objx		 v0.1.1 \
	github.com/stretchr/testify		 v1.2.2 \
	github.com/stretchr/testify		 v1.3.0 \
	github.com/valyala/fasttemplate		 v1.0.1 \
	golang.org/x/crypto			 v0.0.0-20180904163835-0709b304e793 \
	golang.org/x/crypto			 v0.0.0-20190308221718-c2843e01d9a2 \
	golang.org/x/crypto			 v0.0.0-20190605123033-f99c8df09eb5 \
	golang.org/x/crypto			 v0.0.0-20191002192127-34f69633bfdc \
	golang.org/x/crypto			 v0.0.0-20200204104054-c9f3fb736b72 \
	golang.org/x/net			 v0.0.0-20181114220301-adae6a3d119a \
	golang.org/x/net			 v0.0.0-20190311183353-d8887717615a \
	golang.org/x/net			 v0.0.0-20190404232315-eb5bcb51f2a3 \
	golang.org/x/net			 v0.0.0-20190607181551-461777fb6f67 \
	golang.org/x/net			 v0.0.0-20190613194153-d28f0bde5980 \
	golang.org/x/net			 v0.0.0-20190827160401-ba9fcec4b297 \
	golang.org/x/net			 v0.0.0-20191003171128-d98b1b443823 \
	golang.org/x/net			 v0.0.0-20191007182048-72f939374954 \
	golang.org/x/net			 v0.0.0-20200202094626-16171245cfb2 \
	golang.org/x/sync			 v0.0.0-20181108010431-42b317875d0f \
	golang.org/x/sync			 v0.0.0-20181221193216-37e7f081c4d4 \
	golang.org/x/sys			 v0.0.0-20180905080454-ebe1bf3edb33 \
	golang.org/x/sys			 v0.0.0-20181116152217-5ac8a444bdc5 \
	golang.org/x/sys			 v0.0.0-20190215142949-d0b11bdaac8a \
	golang.org/x/sys			 v0.0.0-20190222072716-a9d3bda3a223 \
	golang.org/x/sys			 v0.0.0-20190312061237-fead79001313 \
	golang.org/x/sys			 v0.0.0-20190411185658-b44545bcd369 \
	golang.org/x/sys			 v0.0.0-20190412213103-97732733099d \
	golang.org/x/sys			 v0.0.0-20190602015325-4c4f7f33c9ed \
	golang.org/x/sys			 v0.0.0-20190609082536-301114b31cce \
	golang.org/x/sys			 v0.0.0-20190801041406-cbf593c0f2f3 \
	golang.org/x/sys			 v0.0.0-20190813064441-fde4db37ae7a \
	golang.org/x/sys			 v0.0.0-20190826190057-c7b8b68b1456 \
	golang.org/x/sys			 v0.0.0-20191003212358-c178f38b412c \
	golang.org/x/sys			 v0.0.0-20191008105621-543471e840be \
	golang.org/x/sys			 v0.0.0-20200116001909-b77594299b42 \
	golang.org/x/sys			 v0.0.0-20200202164722-d101bd2416d5 \
	golang.org/x/text			 v0.3.0 \
	golang.org/x/tools			 v0.0.0-20180917221912-90fa682c2a6e \
	gopkg.in/yaml.v2			 v2.2.1 \
	gopkg.in/yaml.v2			 v2.2.2

.include <bsd.port.mk>
