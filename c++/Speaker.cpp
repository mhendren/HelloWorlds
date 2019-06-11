//
// Created by mhendren on 6/9/19.
//

#include "Speaker.h"

Speaker::Speaker(Talker &t) : theTalker_(t) {
}

void Speaker::Talk(const std::string& speech) {
    theTalker_.SaySomething(speech);
}
