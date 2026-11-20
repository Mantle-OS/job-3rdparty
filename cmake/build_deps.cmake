include(GenerateExportHeader)
include(GNUInstallDirs)

find_package(Threads REQUIRED)
find_package(PkgConfig REQUIRED)

## CRYPTO
pkg_check_modules(LibOpenSSL REQUIRED libssl)
pkg_check_modules(LibCrypto  REQUIRED libcrypto)

## DATA fun
pkg_check_modules(NlohmannJson REQUIRED nlohmann_json)

if(JOB_CUDA)
    find_package(CUDAToolkit REQUIRED)
    set(JOB_CUDA_LIBS
        CUDA::cudart
        CUDA::cublas
        CUDA::cusparse
        CUDA::curand
    )
endif()
