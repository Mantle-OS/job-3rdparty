cmake_minimum_required(VERSION 3.16)
project(JosephsOddBuilder_3rdParty
    VERSION 0.0.1
    LANGUAGES CXX
)

## cuda
include(cmake/check_nvidia.cmake)

## build time deps
include(cmake/build_deps.cmake)

## Order matters here. stable diffusion cpp MUST come before Llama as stable diffusion cpp builds GGML which llama depends on
include(cmake/cmake_stable_diffusion_cpp_build_flags.cmake)
include(cmake/cmake_llama_cpp_build_flags.cmake)

