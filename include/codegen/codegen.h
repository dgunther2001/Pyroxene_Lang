/*
MIT License
Copyright (c) 2024 Daniel Gunther

For the full license text, see the LICENSE.md file in the root directory.
If LICENSE.md is not included, this version of the source code is provided in breach of this license.
*/
#ifndef CODEGEN_H
#define CODEGEN_H

#include "llvm/IR/LLVMContext.h"
#include "llvm/IR/IRBuilder.h"
#include "llvm/IR/Module.h"
#include "../ast/ast.h"
namespace ast {
    extern std::unique_ptr<llvm::LLVMContext> LLVM_Context;
    extern std::unique_ptr<llvm::Module> LLVM_Module;
}

#endif