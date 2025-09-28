.PHONY: generate watch test translations firebase-android talkback fontsize

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
