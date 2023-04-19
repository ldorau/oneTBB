#!/bin/bash

set -x
set +e

date; time /usr/bin/valgrind --soname-synonyms=somalloc=nouserintercepts --log-file=/home/ldorau/work/oneTBB/build/memcheck/memcheck-test_malloc_new_handler.log -v /home/ldorau/work/oneTBB/build/gnu_12.2_cxx11_64_debug/test_malloc_new_handler

# test_malloc_atexit:
# FATAL ERROR: REQUIRE( dll_isMallocOverloaded() ) is NOT correct!
#  values: REQUIRE( false )
#  logged: malloc was not replaced
date; time /usr/bin/valgrind --soname-synonyms=somalloc=nouserintercepts --leak-check=full --show-leak-kinds=all --log-file=/home/ldorau/work/oneTBB/build/memcheck/memcheck-test_malloc_atexit.log -v /home/ldorau/work/oneTBB/build/gnu_12.2_cxx11_64_debug/test_malloc_atexit

# test_malloc_overload:
# FATAL ERROR: test case CRASHED: SIGSEGV - Segmentation violation signal
date; time /usr/bin/valgrind --soname-synonyms=somalloc=nouserintercepts --leak-check=full --show-leak-kinds=all --log-file=/home/ldorau/work/oneTBB/build/memcheck/memcheck-test_malloc_overload.log -v /home/ldorau/work/oneTBB/build/gnu_12.2_cxx11_64_debug/test_malloc_overload

date; time /usr/bin/valgrind --soname-synonyms=somalloc=nouserintercepts --leak-check=full --show-leak-kinds=all --log-file=/home/ldorau/work/oneTBB/build/memcheck/memcheck-test_malloc_init_shutdown.log -v /home/ldorau/work/oneTBB/build/gnu_12.2_cxx11_64_debug/test_malloc_init_shutdown

date; time /usr/bin/valgrind --soname-synonyms=somalloc=nouserintercepts --leak-check=full --show-leak-kinds=all --log-file=/home/ldorau/work/oneTBB/build/memcheck/memcheck-test_malloc_lib_unload.log -v /home/ldorau/work/oneTBB/build/gnu_12.2_cxx11_64_debug/test_malloc_lib_unload

date; time /usr/bin/valgrind --soname-synonyms=somalloc=nouserintercepts --leak-check=full --show-leak-kinds=all --log-file=/home/ldorau/work/oneTBB/build/memcheck/memcheck-test_malloc_overload_disable.log -v /home/ldorau/work/oneTBB/build/gnu_12.2_cxx11_64_debug/test_malloc_overload_disable

date; time /usr/bin/valgrind --soname-synonyms=somalloc=nouserintercepts --leak-check=full --show-leak-kinds=all --log-file=/home/ldorau/work/oneTBB/build/memcheck/memcheck-test_malloc_pools.log -v /home/ldorau/work/oneTBB/build/gnu_12.2_cxx11_64_debug/test_malloc_pools

date; time /usr/bin/valgrind --soname-synonyms=somalloc=nouserintercepts --leak-check=full --show-leak-kinds=all --log-file=/home/ldorau/work/oneTBB/build/memcheck/memcheck-test_malloc_regression.log -v /home/ldorau/work/oneTBB/build/gnu_12.2_cxx11_64_debug/test_malloc_regression

date; time /usr/bin/valgrind --soname-synonyms=somalloc=nouserintercepts --leak-check=full --show-leak-kinds=all --log-file=/home/ldorau/work/oneTBB/build/memcheck/memcheck-test_malloc_shutdown_hang.log -v /home/ldorau/work/oneTBB/build/gnu_12.2_cxx11_64_debug/test_malloc_shutdown_hang

date; time /usr/bin/valgrind --soname-synonyms=somalloc=nouserintercepts --leak-check=full --show-leak-kinds=all --log-file=/home/ldorau/work/oneTBB/build/memcheck/memcheck-test_malloc_used_by_lib.log -v /home/ldorau/work/oneTBB/build/gnu_12.2_cxx11_64_debug/test_malloc_used_by_lib

date; time /usr/bin/valgrind --soname-synonyms=somalloc=nouserintercepts --leak-check=full --show-leak-kinds=all --log-file=/home/ldorau/work/oneTBB/build/memcheck/memcheck-test_scalable_allocator.log -v /home/ldorau/work/oneTBB/build/gnu_12.2_cxx11_64_debug/test_scalable_allocator

date; time /usr/bin/valgrind --soname-synonyms=somalloc=nouserintercepts --leak-check=full --show-leak-kinds=all --log-file=/home/ldorau/work/oneTBB/build/memcheck/memcheck-test_malloc_compliance.log -v /home/ldorau/work/oneTBB/build/gnu_12.2_cxx11_64_debug/test_malloc_compliance

