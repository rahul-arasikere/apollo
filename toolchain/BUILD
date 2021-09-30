load(":cc_toolchain_config.bzl", "cc_toolchain_config")

package(default_visibility = ["//visibility:public"])

cc_toolchain_suite(
    name = "i686_gcc",
    toolchains = {
        "k8": ":yocto_dx1100_toolchain",
    },
)

filegroup(name = "empty")

cc_toolchain(
    name = "yocto_dx1100_toolchain",
    toolchain_identifier = "yocto_dx1100-toolchain",
    toolchain_config = ":yocto_dx1100_toolchain_config",
    all_files = ":empty",
    compiler_files = ":empty",
    dwp_files = ":empty",
    linker_files = ":empty",
    objcopy_files = ":empty",
    strip_files = ":empty",
    supports_param_files = 0,
)

cc_toolchain_config(name = "yocto_dx1100_toolchain_config")
