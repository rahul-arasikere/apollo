load("@rules_cc//cc:defs.bzl", "cc_library")

package(default_visibility = ["//visibility:public"])

licenses(["notice"])

cc_library(
    name = "avcodec",
    includes = ["."],
    linkopts = [
        "-L/usr/local/lib",
        "-lavcodec",
    ],
)

cc_library(
    name = "avformat",
    includes = ["."],
    linkopts = [
        "-L/usr/local/lib",
        "-lavformat",
    ],
)

cc_library(
    name = "swscale",
    includes = ["."],
    linkopts = [
        "-L/usr/local/lib",
        "-lswscale",
    ],
)

cc_library(
    name = "avutil",
    includes = ["."],
    linkopts = [
        "-L/usr/local/lib",
        "-lavutil",
    ],
)
