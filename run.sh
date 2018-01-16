#!/usr/bin/env sh
set -ex
export NSUnbufferedIO=YES

git clone git@github.com:kishikawakatsumi/SwiftPowerAssert.git tool
cd tool
swift build -c release
cd ..

rm -rf project

# git clone --recursive https://github.com/AsyncNinja/AsyncNinja.git project
# cd project
# ../tool/.build/release/swift-power-assert --verbose xctest -Xxcodebuild test -project "AsyncNinja.xcodeproj" -scheme "AsyncNinja"  -destination "platform=macOS"
# ../tool/.build/release/swift-power-assert --verbose xctest -Xxcodebuild test -project "AsyncNinja.xcodeproj" -scheme "AsyncNinja"  -destination "platform=iOS Simulator,name=iPhone 5"
# ../tool/.build/release/swift-power-assert --verbose xctest -Xxcodebuild test -project "AsyncNinja.xcodeproj" -scheme "AsyncNinja"  -destination "platform=iOS Simulator,name=iPhone 7"
# ../tool/.build/release/swift-power-assert --verbose xctest -Xxcodebuild test -project "AsyncNinja.xcodeproj" -scheme "AsyncNinja"  -destination "platform=tvOS Simulator,name=Apple TV 1080p,OS=10.2"
# ../tool/.build/release/swift-power-assert --verbose test -Xswift test
# cd ..
# rm -rf project

git clone --recursive https://github.com/igor-makarov/BeaconKit.git project
cd project
../tool/.build/release/swift-power-assert --verbose test -Xswift test -c debug
cd ..
rm -rf project

git clone --recursive https://github.com/badoo/Chatto.git project
cd project
../tool/.build/release/swift-power-assert --verbose xctest -Xxcodebuild test -workspace "Chatto.xcworkspace" -scheme "Chatto"  -destination "platform=iOS Simulator,name=iPhone 7"
# ../tool/.build/release/swift-power-assert --verbose xctest -Xxcodebuild test -workspace "Chatto.xcworkspace" -scheme "ChattoAdditions"  -destination "platform=iOS Simulator,name=iPhone 7"
# ../tool/.build/release/swift-power-assert --verbose xctest -Xxcodebuild test -workspace "ChattoApp/ChattoApp.xcworkspace" -scheme "ChattoApp"  -destination "platform=iOS Simulator,name=iPhone 7"
cd ..
rm -rf project

git clone --recursive https://github.com/emaloney/CleanroomLogger.git project
cd project
../tool/.build/release/swift-power-assert --verbose xctest -Xxcodebuild test -project "CleanroomLogger.xcodeproj" -scheme "CleanroomLogger"  -destination "platform=macOS"
cd ..
rm -rf project

# git clone --recursive https://github.com/JohnEstropia/CoreStore project
# cd project
# ../tool/.build/release/swift-power-assert --verbose xctest -Xxcodebuild test -workspace "CoreStore.xcworkspace" -scheme "CoreStore iOS"  -destination "platform=iOS Simulator,name=iPhone 7"
# ../tool/.build/release/swift-power-assert --verbose xctest -Xxcodebuild test -workspace "CoreStore.xcworkspace" -scheme "CoreStore OSX"  -destination "platform=macOS"
# ../tool/.build/release/swift-power-assert --verbose xctest -Xxcodebuild test -workspace "CoreStore.xcworkspace" -scheme "CoreStore tvOS"  -destination "platform=tvOS Simulator,name=Apple TV 1080p,OS=10.2"
# cd ..
# rm -rf project

git clone --recursive https://github.com/Bouke/DNS.git project
cd project
../tool/.build/release/swift-power-assert --verbose test -Xswift test
cd ..
rm -rf project

git clone --recursive https://github.com/groue/GRDB.swift.git project
cd project
../tool/.build/release/swift-power-assert --verbose test -Xswift test
cd ..
rm -rf project

git clone --recursive https://github.com/artsabintsev/Guitar.git project
cd project
../tool/.build/release/swift-power-assert --verbose test -Xswift test
cd ..
rm -rf project

# git clone --recursive https://github.com/jessesquires/JSQCoreDataKit.git project
# cd project
# ../tool/.build/release/swift-power-assert --verbose xctest -Xxcodebuild test -project "JSQCoreDataKit.xcodeproj" -scheme "JSQCoreDataKitTests"  -destination "platform=iOS Simulator,name=iPhone 6s"
# ../tool/.build/release/swift-power-assert --verbose xctest -Xxcodebuild test -project "JSQCoreDataKit.xcodeproj" -scheme "JSQCoreDataKitTests"  -destination "platform=iOS Simulator,name=iPhone 6s"
# cd ..
# rm -rf project
#
# git clone --recursive https://github.com/jessesquires/JSQDataSourcesKit.git project
# cd project
# ../tool/.build/release/swift-power-assert --verbose xctest -Xxcodebuild test -project "JSQDataSourcesKit.xcodeproj" -scheme "JSQDataSourcesKitTests"  -destination "platform=iOS Simulator,name=iPhone 6s"
# ../tool/.build/release/swift-power-assert --verbose xctest -Xxcodebuild test -project "JSQDataSourcesKit.xcodeproj" -scheme "JSQDataSourcesKitTests"  -destination "platform=iOS Simulator,name=iPhone 6s"
# cd ..
# rm -rf project

git clone --recursive https://github.com/lyft/Kronos.git project
cd project
../tool/.build/release/swift-power-assert --verbose test -Xswift test
cd ..
rm -rf project

git clone --recursive https://github.com/Bouke/Lark.git project
cd project
../tool/.build/release/swift-power-assert --verbose test -Xswift test
cd ..
rm -rf project

# git clone --recursive https://github.com/Moya/Moya.git project
# cd project
# ../tool/.build/release/swift-power-assert --verbose test -Xswift test
# cd ..
# rm -rf project
#
# git clone --recursive https://github.com/Bouke/NetService.git project
# cd project
# ../tool/.build/release/swift-power-assert --verbose test -Xswift test
# cd ..
# rm -rf project
#
# git clone --recursive https://github.com/willowtreeapps/PinkyPromise.git project
# cd project
# ../tool/.build/release/swift-power-assert --verbose xctest -Xxcodebuild test -project "PinkyPromise.xcodeproj" -scheme "PinkyPromise_iOS" -configuration "Release" -destination "platform=iOS Simulator,name=iPhone 7"
# ../tool/.build/release/swift-power-assert --verbose xctest -Xxcodebuild test -project "PinkyPromise.xcodeproj" -scheme "PinkyPromise_macOS" -configuration "Release" -destination "platform=macOS"
# ../tool/.build/release/swift-power-assert --verbose test -Xswift test
# cd ..
# rm -rf project
#
# git clone --recursive https://github.com/pinterest/plank.git project
# cd project
# ../tool/.build/release/swift-power-assert --verbose test -Xswift test
# cd ..
# rm -rf project
#
# git clone --recursive https://github.com/ProcedureKit/ProcedureKit.git project
# cd project
# ../tool/.build/release/swift-power-assert --verbose xctest -Xxcodebuild test -project "ProcedureKit.xcodeproj" -target "ProcedureKit"  -destination "platform=macOS"
# ../tool/.build/release/swift-power-assert --verbose xctest -Xxcodebuild test -project "ProcedureKit.xcodeproj" -target "ProcedureKit"  -destination "platform=macOS"
# cd ..
# rm -rf project
#
# git clone --recursive https://github.com/mac-cain13/R.swift.git project
# cd project
# ../tool/.build/release/swift-power-assert --verbose test -Xswift test
# cd ..
# rm -rf project
#
# git clone --recursive https://github.com/antitypical/Result.git project
# cd project
# ../tool/.build/release/swift-power-assert --verbose test -Xswift test
# cd ..
# rm -rf project
#
# git clone --recursive https://github.com/Bouke/SRP.git project
# cd project
# ../tool/.build/release/swift-power-assert --verbose test -Xswift test
# cd ..
# rm -rf project
#
# git clone --recursive https://github.com/krzysztofzablocki/Sourcery.git project
# cd project
# ../tool/.build/release/swift-power-assert --verbose test -Xswift test
# cd ..
# rm -rf project
#
# git clone --recursive https://github.com/realm/SwiftLint.git project
# cd project
# ../tool/.build/release/swift-power-assert --verbose test -Xswift test
# ../tool/.build/release/swift-power-assert --verbose test -Xswift test
# cd ..
# rm -rf project
#
# git clone --recursive https://github.com/SwifterSwift/SwifterSwift.git project
# cd project
# ../tool/.build/release/swift-power-assert --verbose xctest -Xxcodebuild test -workspace "SwifterSwift.xcworkspace" -scheme "SwifterSwift iOSTests"  -destination "platform=iOS Simulator,name=iPhone 7,OS=10.2"
# ../tool/.build/release/swift-power-assert --verbose xctest -Xxcodebuild test -workspace "SwifterSwift.xcworkspace" -scheme "SwifterSwift tvOSTests"  -destination "platform=tvOS Simulator,name=Apple TV 1080p,OS=10.2"
# ../tool/.build/release/swift-power-assert --verbose xctest -Xxcodebuild test -workspace "SwifterSwift.xcworkspace" -scheme "SwifterSwift macOSTests"  -destination "platform=macOS"
# cd ..
# rm -rf project
#
# git clone --recursive https://github.com/devxoul/Then.git project
# cd project
# ../tool/.build/release/swift-power-assert --verbose test -Xswift test
# cd ..
# rm -rf project
#
# git clone --recursive https://github.com/lyft/mapper.git project
# cd project
# ../tool/.build/release/swift-power-assert --verbose test -Xswift test
# cd ..
# rm -rf project
#
# git clone --recursive https://github.com/louisdh/panelkit.git project
# cd project
# ../tool/.build/release/swift-power-assert --verbose xctest -Xxcodebuild test -workspace "PanelKit.xcworkspace" -scheme "PanelKitTests"  -destination "platform=iOS Simulator,name=iPad Pro (12.9 inch)"
# cd ..
# rm -rf project
