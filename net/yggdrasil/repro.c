/*
 * Minimal working SIOCAIFADDR_IN6 code to compare with yggdrasil's tun_bsd.go
 *
 *
 * Create interface upfront and set IPv6 link-local address:
 *	ifconfig tun0 inet6 eui64
 *
 * Build and set yggdrasil address:
 *	make repro && ./repro
 */
#include <sys/types.h>
#include <sys/socket.h>
#include <sys/ioctl.h>

#include <net/if.h>
#include <netinet/in.h>
#include <netinet6/in6_var.h>
#include <netinet6/nd6.h>
#include <netdb.h>

#include <stdio.h>
#include <string.h>
#include <err.h>

int main() {
#define	IFNAME	"tun0"
/* random 200::/7 address generated by yggdrasil's genkeys command,  */
#define	ADDR	"21c:71c9:1c4a:7b87:74a8:7882:d08d:f52f"
#define	MASK	"fe00::"

	struct in6_aliasreq in6_areq;
	memset(&in6_areq, 0, sizeof(in6_areq));
	strlcpy(in6_areq.ifra_name, IFNAME, sizeof(in6_areq.ifra_name));

// parse address
	struct addrinfo *res;
	int error = getaddrinfo(ADDR, NULL, NULL, &res);
	if (error) errx(1, "ifra_addr: %s", gai_strerror(error));
// set addr
	struct sockaddr_in6 *sa6 = &in6_areq.ifra_addr;
	memcpy(sa6, res->ai_addr, sizeof(*sa6));
	freeaddrinfo(res);

// parse mask
	error = getaddrinfo(MASK, NULL, NULL, &res);
	if (error) errx(1, "ifra_prefixmask: %s", gai_strerror(error));
// set mask
	sa6 = &in6_areq.ifra_prefixmask;
	memcpy(sa6, res->ai_addr, sizeof(*sa6));

// set lifetime
	/* leaving those to zero makes ioctl(2) return zero,
	 * but tun0 won't have the IP set... */
	in6_areq.ifra_lifetime.ia6t_vltime = ND6_INFINITE_LIFETIME;
	in6_areq.ifra_lifetime.ia6t_pltime = ND6_INFINITE_LIFETIME;

	int sock = socket(AF_INET6, SOCK_DGRAM, 0);
	if (sock == -1)  err(1, "sock");
	error = ioctl(sock, SIOCAIFADDR_IN6, &in6_areq);
	if (error == -1) err(1, "ioctl");

// show endianness
#define	FIRST_GROUP(X)	in6_areq.X.sin6_addr.__u6_addr.__u6_addr16[0]
	printf("addr: { 0x%04x, ... }\n", FIRST_GROUP(ifra_addr));
	printf("mask: { 0x%04x, ... }\n", FIRST_GROUP(ifra_prefixmask));
	return 0;
}
