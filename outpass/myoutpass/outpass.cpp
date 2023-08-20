//===- outpass.cpp - Example code from "Writing an LLVM Pass" ---------------===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//
//
// This file implements two versions of the LLVM "outpass World" pass described
// in docs/WritingAnLLVMPass.html
//
//===----------------------------------------------------------------------===//

#include "llvm/ADT/Statistic.h"
#include "llvm/IR/Function.h"
#include "llvm/Pass.h"
#include "llvm/Support/raw_ostream.h"
using namespace llvm;

#define DEBUG_TYPE "outpass"

STATISTIC(outpassCounter, "Counts number of functions greeted");

namespace {
  // outpass - The first implementation, without getAnalysisUsage.
  struct outpass : public FunctionPass {
    static char ID; // Pass identification, replacement for typeid
    outpass() : FunctionPass(ID) {}

    bool runOnFunction(Function &F) override {
      ++outpassCounter;
      errs() << "outpass yes~: ";
      errs().write_escaped(F.getName()) << '\n';
      return false;
    }
  };
}

char outpass::ID = 0;
static RegisterPass<outpass> X("outpass", "outpass World Pass");

namespace {
  // outpass2 - The second implementation with getAnalysisUsage implemented.
  struct outpass2 : public FunctionPass {
    static char ID; // Pass identification, replacement for typeid
    outpass2() : FunctionPass(ID) {}

    bool runOnFunction(Function &F) override {
      ++outpassCounter;
      errs() << "outpass: ";
      errs().write_escaped(F.getName()) << '\n';
      return false;
    }

    // We don't modify the program, so we preserve all analyses.
    void getAnalysisUsage(AnalysisUsage &AU) const override {
      AU.setPreservesAll();
    }
  };
}

char outpass2::ID = 0;
static RegisterPass<outpass2>
Y("outpass2", "outpass World Pass (with getAnalysisUsage implemented)");
