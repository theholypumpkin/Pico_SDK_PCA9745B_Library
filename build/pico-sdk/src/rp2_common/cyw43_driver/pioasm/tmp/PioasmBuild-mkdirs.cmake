# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "/Users/pascal/Documents/Private Documents/Developer/C++/Personal/raspberry_pi_pico/pico-sdk/tools/pioasm"
  "/Users/pascal/Documents/Private Documents/Developer/C++/Personal/raspberry_pi_pico/Projects/Pico_SDK_PCA9745B_Library/build/pioasm"
  "/Users/pascal/Documents/Private Documents/Developer/C++/Personal/raspberry_pi_pico/Projects/Pico_SDK_PCA9745B_Library/build/pico-sdk/src/rp2_common/cyw43_driver/pioasm"
  "/Users/pascal/Documents/Private Documents/Developer/C++/Personal/raspberry_pi_pico/Projects/Pico_SDK_PCA9745B_Library/build/pico-sdk/src/rp2_common/cyw43_driver/pioasm/tmp"
  "/Users/pascal/Documents/Private Documents/Developer/C++/Personal/raspberry_pi_pico/Projects/Pico_SDK_PCA9745B_Library/build/pico-sdk/src/rp2_common/cyw43_driver/pioasm/src/PioasmBuild-stamp"
  "/Users/pascal/Documents/Private Documents/Developer/C++/Personal/raspberry_pi_pico/Projects/Pico_SDK_PCA9745B_Library/build/pico-sdk/src/rp2_common/cyw43_driver/pioasm/src"
  "/Users/pascal/Documents/Private Documents/Developer/C++/Personal/raspberry_pi_pico/Projects/Pico_SDK_PCA9745B_Library/build/pico-sdk/src/rp2_common/cyw43_driver/pioasm/src/PioasmBuild-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/Users/pascal/Documents/Private Documents/Developer/C++/Personal/raspberry_pi_pico/Projects/Pico_SDK_PCA9745B_Library/build/pico-sdk/src/rp2_common/cyw43_driver/pioasm/src/PioasmBuild-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "/Users/pascal/Documents/Private Documents/Developer/C++/Personal/raspberry_pi_pico/Projects/Pico_SDK_PCA9745B_Library/build/pico-sdk/src/rp2_common/cyw43_driver/pioasm/src/PioasmBuild-stamp${cfgdir}") # cfgdir has leading slash
endif()
