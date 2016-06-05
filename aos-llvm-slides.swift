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

  Page(title: "LLVM IR", bulletPoints: [
    "placeholder",
  ]),

  Page(title: "LLVM's Three-Phase Compiler Design", bulletPoints: [
    "placeholder",
  ]),

  Page(title: "The LLVM Code Generator", bulletPoints: [
    "placeholder",
  ]),

  Page(title: "Extra Benefits of the Design", bulletPoints: [
    "placeholder",
  ]),

  Page(title: "Future Directions", bulletPoints: [
    "placeholder",
  ]),

  Page(title: "Swift and LLVM", bulletPoints: [
    "Chris Lattner:",
    "  Swift is really just a syntax sugar for LLVM IR.",
  ]),

  Page(title: "Use LLVM as a Library", bulletPoints: [
    "placeholder",
  ]),

  Cover(title: "Q&A", bulletPoints: []),

  Cover(title: "Who's next?", bulletPoints: [":trollface:"]),

])

