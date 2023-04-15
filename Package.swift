// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "whisper.spm",
    products: [
        .library(
            name: "whisper",
            targets: ["whisper"]),
    ],
    targets: [
        .target(name: "whisper",
        dependencies: [],
        cSettings: [
            .define("GGML_USE_ACCELERATE"),
            .define("WHISPER_USE_COREML")
        ])
    ],
    cxxLanguageStandard: CXXLanguageStandard.cxx11
)
