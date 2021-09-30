load("@bazel_tools//tools/build_defs/cc:action_names.bzl", "ACTION_NAMES")

load(
    "@bazel_tools//tools/cpp:cc_toolchain_config_lib.bzl",
    "feature",
    "flag_group",
    "flag_set",
    "tool_path",
)

all_link_actions = [ # NEW
    ACTION_NAMES.cpp_link_executable,
    ACTION_NAMES.cpp_link_dynamic_library,
    ACTION_NAMES.cpp_link_nodeps_dynamic_library,
]

def _impl(ctx):
    tool_paths = [ # NEW
        tool_path(
            name = "gcc",
            path = "/usr/bin/i686-linux-gnu-gcc-9",
        ),
        tool_path(
            name = "ld",
            path = "/usr/bin/i686-linux-gnu-ld",
        ),
        tool_path(
            name = "ar",
            path = "/usr/bin/i686-linux-gnu-ar",
        ),
        tool_path(
            name = "cpp",
            path = "/usr/bin/i686-linux-gnu-cpp-9",
        ),
        tool_path(
            name = "gcov",
            path = "/usr/bin/i686-linux-gnu-gcov-9",
        ),
        tool_path(
            name = "nm",
            path = "/usr/bin/i686-linux-gnu-nm-9",
        ),
        tool_path(
            name = "objdump",
            path = "/usr/bin/i686-linux-gnu-objdump",
        ),
        tool_path(
            name = "strip",
            path = "/usr/bin/i686-linux-gnu-strip",
        ),
    ]

    features = [ # NEW
      feature(
          name = "default_linker_flags",
          enabled = True,
          flag_sets = [
              flag_set(
                  actions = all_link_actions,
                  flag_groups = ([
                      flag_group(
                          flags = [
                              "-lstdc++",
                          ],
                      ),
                  ]),
              ),
          ],
      ),
    ]

    return cc_common.create_cc_toolchain_config_info(
        ctx = ctx,
        cxx_builtin_include_directories = [
        "/usr/lib/gcc-cross/i686-linux-gnu/9/include",
        "/usr/i686-linux-gnu/include",
        "/usr/include",
        ],
        features = features,
        toolchain_identifier = "local",
        host_system_name = "local",
        target_system_name = "yocto-dx1100",
        target_cpu = "k8",
        target_libc = "unknown",
        compiler = "i686-linux-gnu-gcc-9",
        abi_version = "unknown",
        abi_libc_version = "unknown",
        tool_paths = tool_paths, # NEW
    )

cc_toolchain_config = rule(
    implementation = _impl,
    attrs = {},
    provides = [CcToolchainConfigInfo],
)
