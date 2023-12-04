// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "whisper.spm",
    platforms: [
        .macOS(.v12), .iOS(.v14),
    ],
    products: [
        .library(
            name: "whisper",
            targets: ["whisper"]),
    ],
    targets: [
        .target(name: "whisper",
        dependencies: [],
        exclude: [
            "ggml-opencl.h",
            "ggml-opencl.cpp",
        ],
        cSettings: [
            .define("GGML_USE_ACCELERATE"),
            .define("WHISPER_USE_COREML"),
            .define("WHISPER_COREML_ALLOW_FALLBACK"),
            .unsafeFlags(["-Os"])
        ])
    ],
    cxxLanguageStandard: CXXLanguageStandard.cxx11
)
