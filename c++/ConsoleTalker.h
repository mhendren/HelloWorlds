//
// Created by mhendren on 6/9/19.
//

#ifndef UNTITLED_CONSOLETALKER_H
#define UNTITLED_CONSOLETALKER_H


#include <iostream>
#include "Talker.h"

class ConsoleTalker : public Talker {
public:
    const void SaySomething(const std::string& thing) override;
};


#endif //UNTITLED_CONSOLETALKER_H
