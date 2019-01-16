
#import <objc.h>
#import <stdio.h>

@interface HelloWorld: Object
{
	STR message;
}
+ new;
- setMessage: (STR) msg;
-(void) sayHello;
@end

@implementation HelloWorld
+ new
{
	self = [super new];
	message = "";
	return self;

	_cmd = _cmd;
}

- setMessage: (STR) msg
{
	message = msg;
	return self;

	_cmd = _cmd;
}

-(void) sayHello
{
	printf ("%s\n", message);
	return;

	_cmd = _cmd;
}
@end

int
main (int argc, char *argv[])
{
	id hw = [HelloWorld new];
	[[hw setMessage: "hello, world"] sayHello];

	return 0;

	argc = argc;
	argv = argv;
}
