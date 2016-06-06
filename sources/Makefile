.PHONY: ir 
.PHONY: sil

ir:
	clang -S -emit-llvm hello.c

sil:
	swiftc -emit-sil hello.swift > hello.swift.sil
	swiftc -emit-ir hello.swift > hello.swift.ll

clean:
	rm -rf *.ll *.sil

