//===- stringobf.cpp - Example code from "Writing an LLVM Pass" ---------------===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//
//
// This file implements two versions of the LLVM "stringobf World" pass described
// in docs/WritingAnLLVMPass.html
//
//===----------------------------------------------------------------------===//

#include "llvm/ADT/Statistic.h"
#include "llvm/IR/Function.h"
#include "llvm/Pass.h"
#include "llvm/Support/raw_ostream.h"

using namespace llvm;

#define DEBUG_TYPE "stringobf"

STATISTIC(stringobfCounter, "Counts number of functions greeted");

namespace {
    // stringobf - The first implementation, without getAnalysisUsage.
    struct stringobf : public FunctionPass {
        static char ID; // Pass identification, replacement for typeid
        stringobf() : FunctionPass(ID) {}

        bool runOnFunction(Function &F) override {
            ++stringobfCounter;


            errs().write_escaped(F.getName()) << '\n';
            stringtoobf(F);
            return false;
        }

        void stringtoobf(Function &F) {
            for (BasicBlock &basicblock: F) {
                errs() << "BasicBlock name:" << basicblock << "\r\n";
                for (Instruction &instruction: basicblock) {
                    // errs() <<"instruction :" <<instruction << "\r\n";

                    for (Use &oper: instruction.operands()) {

                        if (isa<GlobalVariable>(oper->stripPointerCasts())) {
                            Value *u = oper->stripPointerCasts();

                            if (u->getName().contains(".str")) {

                                errs() << "found global vaule" << instruction << "\r\n";
                            }
                        }

                    }
                }


            }
        }
    };
}

char stringobf::ID = 0;

