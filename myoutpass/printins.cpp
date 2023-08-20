#include "printins.h"



void printFunction(Function &F) {
    errs()<<"function name:"<<F.getName()<<"\r\n";
    SymbolTableList<BasicBlock> &bs = F.getBasicBlockList();
    BasicBlock &bb = F.getEntryBlock();
 
    errs()<< "Instruction:" <<  bb.getName();
    for(auto i  = bs.begin();i!=bs.begin();++i){
        SymbolTableList<Instruction> &ns = i->getInstList();
//

        for(auto ins = ns.begin();ins != ns.end();++ins){
            errs()<< "opcode:" << ins->getOpcode();
            errs()<< "opcodename :"<<ins->getOpcodeName()<<"\r\n";
        }


    }
}

