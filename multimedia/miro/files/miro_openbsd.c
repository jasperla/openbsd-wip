#include <sys/param.h>
#include <sys/mount.h>
#include <err.h>

int availbytes(char *path)
{
	struct statfs stat;
	statfs(path, &stat);
	if (statfs(path, &stat) < 0)
		err(1, "statfs");
	return (u_long)stat.f_bsize * (u_long)stat.f_bavail;
}

int maxname()
{
	return NAME_MAX;
}
