cmake_minimum_required(VERSION 3.10)
project(bank_test)

set(CMAKE_CXX_STANDARD 17)

set(CMAKE_CXX_STANDARD_REQUIRED ON)

add_library(account STATIC ${CMAKE_CURRENT_SOURCE_DIR}/banking/Account.cpp)
target_include_directories(account
	PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/banking)

add_library(transaction STATIC ${CMAKE_CURRENT_SOURCE_DIR}/banking/Transaction.cpp)
target_include_directories(transaction
	PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/banking)
target_link_libraries(transaction account)

option(BUILD_TESTS "Build test" OFF)

option(BUILD_COVERAGE "Build code coverage" OFF)

include(FetchContent)
FetchContent_Declare(
  googletest
  URL https://github.com/google/googletest/archive/609281088cfefc76f9d0ce82e1ff6c30cc3591e5.zip
)
set(gtest_force_shared_crt ON CACHE BOOL "" FORCE)
FetchContent_MakeAvailable(googletest)
if(BUILD_TESTS)
  include(GoogleTest)
  enable_testing()
  add_executable(bank_tests ${CMAKE_CURRENT_SOURCE_DIR}/tests/test.cpp)
  target_link_libraries(bank_tests account transaction gtest_main gmock_main)
  gtest_discover_tests(bank_tests)
endif()

if(COVERALLS)
  SET(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -fprofile-arcs -ftest-coverage")
  SET(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -fprofile-arcs -ftest-coverage")
  SET(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} -fprofile-arcs -ftest-coverage")
endif()


