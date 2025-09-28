.PHONY: podfix generate watch test clean get talkback fontsize-xs fontsize-m fontsize-xl appbundle-dev run-dev run-prod build-apk build-ios analyze format upgrade outdated doctor icons splash

# go to ios folder, delete the podfile.lock and run pod install
podfix: 
	cd ios && rm -f Podfile.lock && pod install && cd ..

generate:
	dart run build_runner build --delete-conflicting-outputs

watch:
	dart run build_runner watch --delete-conflicting-outputs

test: 
	echo $(VAR)

clean:
	flutter clean

get: 
	flutter pub get

talkback:
	if adb shell settings get secure touch_exploration_enabled | grep -q "1"; then adb shell settings put secure enabled_accessibility_services "com.pleco.chinesesystem/com.pleco.chinesesystem.ScreenContentCaptureService"; adb shell settings put secure touch_exploration_enabled 0; echo "TalkBack OFF"; else adb shell settings put secure enabled_accessibility_services "com.pleco.chinesesystem/com.pleco.chinesesystem.ScreenContentCaptureService:com.samsung.android.accessibility.talkback/com.samsung.android.marvin.talkback.TalkBackService"; adb shell settings put secure accessibility_enabled 1; adb shell settings put secure touch_exploration_enabled 1; echo "TalkBack ON"; fi

fontsize-xs:
	adb shell settings put system font_scale 0.8

fontsize-m:
	adb shell settings put system font_scale 1.0

fontsize-xl:
	adb shell settings put system font_scale 1.3

appbundle-dev:
	flutter build appbundle --flavor dev

# Run commands
run-dev:
	flutter run --flavor dev --debug

run-prod:
	flutter run --release

# Build commands
build-apk:
	flutter build apk --release

build-ios:
	flutter build ios --release

# Code quality commands
analyze:
	flutter analyze

format:
	dart format .

# Dependency management
upgrade:
	flutter pub upgrade

outdated:
	flutter pub outdated

# Flutter tooling
doctor:
	flutter doctor

# Asset generation
icons:
	dart run flutter_launcher_icons

splash:
	dart run flutter_native_splash:create
