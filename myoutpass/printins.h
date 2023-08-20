//
// Created by dehua on 23-8-20.
//

#ifndef OUTPASS_PRINTINS_H
#define OUTPASS_PRINTINS_H
#include "llvm/ADT/Statistic.h"
#include "llvm/IR/Function.h"
#include "llvm/Pass.h"
#include "llvm/Support/raw_ostream.h"

using namespace llvm;
void printFunction(Function &F);
#endif //OUTPASS_PRINTINS_H
