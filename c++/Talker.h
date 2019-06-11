//
// Created by mhendren on 6/9/19.
//

#ifndef UNTITLED_TALKER_H
#define UNTITLED_TALKER_H

#include <string>

class Talker {

public:
    virtual const void SaySomething(const std::string& thing) = 0;
};


#endif //UNTITLED_TALKER_H
