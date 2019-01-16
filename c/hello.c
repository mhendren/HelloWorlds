
#include <unistd.h>

int
main (int argc, char **argv)
{
	static const char *hw = "hello, world\n";
	const char *p = (const char *) 0;

	for (p = hw; *p; p++)
		write (1, p, 1);

	return 0;

	argc = argc;
	argv = argv;
}
