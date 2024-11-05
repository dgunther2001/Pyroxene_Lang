/*
MIT License
Copyright (c) 2024 Daniel Gunther

For the full license text, see the LICENSE.md file in the root directory.
If LICENSE.md is not included, this version of the source code is provided in breach of this license.
*/

#include "../include/ast/ast.h"
#include "../include/codegen/codegen.h"
#include "../include/lexer/lexer.h"
#include "../include/parser/parser.h"
#include "../include/type_checker/type_checker.h"
#include "../include/utility/utility.h"


#include "llvm/Support/raw_ostream.h"
#include "llvm/Support/TargetSelect.h"
#include "llvm/ExecutionEngine/Orc/LLJIT.h"

#include <iostream>
#include <fstream>

#define DEBUG 0

int main(int argc, char** argv) {

    //std::cout << "My LLVM Driver is Working\n";

    if (argc != 2) {
        utility::driver_args_error(argc);
    }

    std::fstream file;
    std::string file_name = argv[1];
    
    if (file_name.find(".pyrx") == std::string::npos) {
        utility::driver_extension_error("Incorrect file extension on ", file_name);
    }
    
    if (argc > 1) {
        file.open(argv[1]);
        if (!file) {
            fprintf(stderr, "File not found.\n");
            return 0;
        }
        lexer::input = &file;
    } else {
        fprintf(stderr, ">> "); // prime the inital token
        lexer::input = &std::cin;
    }

    lexer::tokenize_file();

    utility::initialize_operator_precendence();

    llvm::InitializeNativeTarget();
    llvm::InitializeNativeTargetAsmPrinter();
    llvm::InitializeNativeTargetAsmParser();

    utility::init_llvm_mods();

    utility::init_parser();

    utility::primary_driver_loop();

    auto JIT = llvm::orc::LLJITBuilder().create();
    auto& jit = *JIT;

    codegen::LLVM_Module->setDataLayout(jit->getDataLayout());

    auto added_ir_module = jit->addIRModule(llvm::orc::ThreadSafeModule(std::move(codegen::LLVM_Module), std::move(codegen::LLVM_Context)));
    JIT->get()->getMainJITDylib().addGenerator(llvm::cantFail(llvm::orc::DynamicLibrarySearchGenerator::GetForCurrentProcess(JIT->get()->getDataLayout().getGlobalPrefix())));
    auto main_symbol = jit->lookup("main");
    if(!main_symbol) {
        std::cout << "Expected main function in module.\n";
        std::exit(1);
    }

    auto main_function_entry_pt = (int(*)())main_symbol->getAddress();
    main_function_entry_pt();


    file.close();

    return 0;
}