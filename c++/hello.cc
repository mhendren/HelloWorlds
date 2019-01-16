
#include <iostream>

class HelloWorld
{
public:
	void sayHello (void);
};

void HelloWorld::sayHello (void)
{
	std::cout << "hello, world" << std::endl;
}

int
main (int argc, char **argv)
{
	HelloWorld *hw = new HelloWorld ();

	if (hw)
	{
		hw->sayHello ();
		delete hw;
	}

	return 0;

	argc = argc;
	argv = argv;
}
