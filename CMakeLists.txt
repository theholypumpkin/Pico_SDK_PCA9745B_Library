# Generated Cmake Pico project file

cmake_minimum_required(VERSION 3.13)

set(CMAKE_C_STANDARD 11)
set(CMAKE_CXX_STANDARD 17)

# Initialise pico_sdk from installed location
# (note this can come from environment, CMake cache etc)
set(PICO_SDK_PATH "/Users/pascal/Documents/Private Documents/Developer/C++/Personal/raspberry_pi_pico/pico-sdk")

set(PICO_BOARD pimoroni_tiny2040 CACHE STRING "Board type")

# Pull in Raspberry Pi Pico SDK (must be before project)
include(pico_sdk_import.cmake)

if (PICO_SDK_VERSION_STRING VERSION_LESS "1.4.0")
  message(FATAL_ERROR "Raspberry Pi Pico SDK version 1.4.0 (or later) required. Your version is ${PICO_SDK_VERSION_STRING}")
endif()

project(Pico_SDK_PCA9745B_Library C CXX ASM)

set(PICO_CXX_ENABLE_EXCEPTIONS 1)

# Initialise the Raspberry Pi Pico SDK
pico_sdk_init()

# Add executable. Default name is the project name, version 0.1
# add_library(src_dir Pico_SDK_PCA9745B_Library.cpp) # If there is also a src file in the root
add_subdirectory(src)
add_subdirectory(lib)
add_subdirectory(include)
add_executable(Pico_SDK_PCA9745B_Library src/Pico_SDK_PCA9745B_Library.cpp)

pico_set_program_name(Pico_SDK_PCA9745B_Library "Pico_SDK_PCA9745B_Library")
pico_set_program_version(Pico_SDK_PCA9745B_Library "0.1")

pico_enable_stdio_uart(Pico_SDK_PCA9745B_Library 0)
pico_enable_stdio_usb(Pico_SDK_PCA9745B_Library 1)

# Add the standard library to the build
target_link_libraries(Pico_SDK_PCA9745B_Library
        pico_stdlib)

# Add the standard include files to the build
target_include_directories(Pico_SDK_PCA9745B_Library PRIVATE
  ${CMAKE_CURRENT_LIST_DIR}
  ${CMAKE_CURRENT_LIST_DIR}/.. # for our common lwipopts or any other standard includes, if required
)

# Add any user requested libraries
target_link_libraries(Pico_SDK_PCA9745B_Library
        hardware_spi
        hardware_i2c
        hardware_pio
        hardware_timer
        hardware_watchdog
        )

pico_add_extra_outputs(Pico_SDK_PCA9745B_Library)

