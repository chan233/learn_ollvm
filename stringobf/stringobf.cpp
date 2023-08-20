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

      errs() << "stringobf yes~: ";
      
      errs().write_escaped(F.getName()) << '\n';
      return false;
    }
  };
}

char stringobf::ID = 0;
static RegisterPass<stringobf> X("stringobf", "stringobf World Pass");

namespace {
  // stringobf2 - The second implementation with getAnalysisUsage implemented.
  struct stringobf2 : public FunctionPass {
    static char ID; // Pass identification, replacement for typeid
    stringobf2() : FunctionPass(ID) {}

    bool runOnFunction(Function &F) override {
      ++stringobfCounter;
      errs() << "stringobf: ";
      errs().write_escaped(F.getName()) << '\n';
      return false;
    }

    // We don't modify the program, so we preserve all analyses.
    void getAnalysisUsage(AnalysisUsage &AU) const override {
      AU.setPreservesAll();
    }
  };
}

char stringobf2::ID = 0;
static RegisterPass<stringobf2>
Y("stringobf2", "stringobf World Pass (with getAnalysisUsage implemented)");
