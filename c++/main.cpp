#include <iostream>
#include "Talker.h"
#include "ConsoleTalker.h"
#include "Speaker.h"

int main() {
    ConsoleTalker t;
    Speaker s(t);

    s.Talk("hello, world");

    return 0;
}m
