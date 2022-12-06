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
        .target(name: "whisper", dependencies:[])
    ],
    cxxLanguageStandard: CXXLanguageStandard.cxx11
)
