mkdir output && cd output
gcc -O3 -S -fdump-tree-all -fdump-ipa-all -fdump-rtl-all ../simplest.c
