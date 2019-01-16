
import std.stdio;

class Hello
{
	void sayHello ()
	{
		writefln ("hello, world");
	}
}

void
main ()
{
	Hello hw = new Hello;

	hw.sayHello ();
}
