//
// Created by mhendren on 6/9/19.
//

#ifndef UNTITLED_SPEAKER_H
#define UNTITLED_SPEAKER_H


#include "Talker.h"

class Speaker {
private:
    Talker& theTalker_;

public:
    Speaker(Talker& t);
    void Talk(const std::string&  speech);
};
