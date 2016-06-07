let slides = Slides(pages: [

  Cover(title: "The Architecture of LLVM", bulletPoints: ["yan.li@ef.com"]),  

  Image(title: "images/LLVM-logo.png", bulletPoints: [
    "竜神の剣を喰らえ",
    "Ryūjin no ken o kurae",
  ]),

  Page(title: "What is LLVM?", bulletPoints: [
    "The name LLVM was once an acronym for:",
    "  Low Level Virtual Machine",
    "Begins in December 2000",
    "  Designed as a set of reusable libs...",
    "  ...with well-defined interfaces",
    "Now, LLVM is an umbrella project for:",
    "  llvm - the compiler",
    "  clang - the C family frontend",
    "  lldb - the debugger",
    "  libc++ - the C++ STL implementation",
    "  lld - the linker",
    "  and more...",
  ]),

  Page(title: "Classical Compiler Design", bulletPoints: [
    "Frontend",
    "  Source Code -> Lexer -> Token",
    "  Token -> Parser -> Abstract Syntax Tree",
    "Optimizer",
    "  AST -> Optimizer -> AST",
    "Backend",
    "  AST -> Code Generator -> Target Instructions",
  ]),

  Image(title: "images/RetargetableCompiler.png", bulletPoints: ["Retargetablity"]),

  Page(title: "Before LLVM", bulletPoints: [
    "The benifits of a three-phase design was never fully realized",
    "Java and .NET virtual machines",
    "  JIT compiler + a runtime + a bytecode format as media",
    "  Enforces JIT compilation and GC, leads to subopimal performance",
    "Translate source code to C",
    "  Perhaps the most unfortunate, but also most popular way",
    "  Source Code -> C Code -> C Compiler",
    "  Poor debugging, slow compilation, feature constrained by C",
    "GNU C Compiler (GCC)",
    "  Supports many frontends and backends",
    "  GCC can only be used as a whole",
    "  This is due to some architectural problems from its early design",
  ]),

  Image(title: "images/LLVMCompiler.png", bulletPoints: [
    "LLVM's Three-Phase Compiler Design",
  ]),

  Page(title: "LLVM's Three-Phase Compiler Design", bulletPoints: [
    "Frontend",
    "  Source code -> Parsing and Emit Errors -> AST",
    "  AST -> LLVM IR",
    "Optimizer",
    "  LLVM IR -> Optimization Passes -> LLVM IR",
    "Backend",
    "  LLVM IR -> Code Generator -> Instructions",
  ]),

  Page(title: "LLVM IR", bulletPoints: [
    "A low-level RISC-like virtual instruction set",
    "Strongly typed",
    "Uses temporaries with a % prefix",
    "  Rather than %rax, %rbp, %rip, etc",
    "Three forms of LLVM IR",
    "  Textual format (.ll)",
    "  In-memory data structure",
    "  Binary format, bitcode (.bc)",
    "No programming language or target constraints",
    "Good for the optimizer to do its job",
  ]),

  Cover(title: "clang -S -emit-ir", bulletPoints: ["An example of LLVM IR"]),

  Page(title: "IR is a complete representation", bulletPoints: [
    "IR represents everything in the code",
    "  GCC GIMPLE references back to the source level tree data",
    "In practice",
    "  -> Frontend -> LLVM IR",
    "  -> Unix Pipline",
    "  -> Optimizer Sequence -> Code Generator",
  ]),

  Page(title: "LLVM is a collection of libs", bulletPoints: [
    "Optimization Passes",
    "  IR -> Pass -> .. -> Pass -> IR",
    "  -O0, no passes",
    "  -O3, 67 passes",
    "Written in C++, built into static libs",
    "Can be referenced by a minimum subset",
  ]),

  Page(title: "The LLVM Code Generator", bulletPoints: [
    "Collect target infos into a target description file (.td)",
    ".td -> Assembler/Disassembler",
    "  IR -> Assembler -> Machine Code",
    "x86_64.td -> x86_64_assembler",
    "  IR -> x86_64_assembler -> x86_64 executable"
  ]),

  Page(title: "Extra Benefits of the Design", bulletPoints: [
    "Link time optimization",
    "Install time optimization",
    "  Apple App Thinning",
    "Unit testing",
  ]),

  Page(title: "Retrospective and the Future", bulletPoints: [
    "The design was developed by self-defense",
    "The API changes often without backwards compatibility",
    "  Swift",
    "Make things more modular",
    "  Code Generator",
  ]),

  Page(title: "Swift and LLVM", bulletPoints: [
    "Chris Lattner:",
    "  Swift is really just a syntax sugar for LLVM IR.",
    "SIL, Swift Intermediate Language",
    "  Higher level than LLVM IR, more sementically aware",
    "  Enables more useful diagnoses and optimizations",
    "*.swift -> Parser -> AST -> SIL -> IR -> *.o",
    "  Encourages more language-specific IR (e.g. C++)",
  ]),

  Cover(title: "swiftc -emit-sil", bulletPoints: ["An Example of SIL"]),

  Cover(title: "Q&A", bulletPoints: []),

  Cover(title: "Who's next?", bulletPoints: [":trollface:"]),

])

